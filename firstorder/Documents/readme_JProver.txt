Installing JProver
------------------

JProver is (still) integrated within MetaPRL, an interactive proof
environment (http://www.metaprl.org). So you have to install MetaPRL,
which requires OCaml and OMake.
We benchmarked JProver by calling the function "gen_prover" in the
module "Jall" (file metaprl/refiner/reflib/jall.ml). This function
call may occur e.g. in the module "Itt_logic"
(metaprl/theories/itt/core/itt_logic.ml), which can be loaded in the 
editor of MetaPRL. The proof transformation we commented out in order
to test finding the proof only. 
In the following are more detailed suggestions:

1. Download MetaPRL from http://www.metaprl.org
   We used MetaPRL-SVN-2005.11.27 (v.0.9.6.4+) at http://files.metaprl.org/.
   You also need Ocaml and OMake (we used OCaml 3.09 and OMake 0.9.6.)

2. untar and uncompress MetaPrl:
   tar -xjf MetaPRL-SVN-2005.11.27.tar.bz2

3. cd metaprl
   omake
   (that creates file metaprl/mk/config)

4. Edit metaprl/mk/config: 
   set parameters as you wish
   (we set COMPILATION_MODE = native)

5. For mor convenient benchmarking adapt the modules Itt_logic and Jall:

In metaprl/theories/itt/core/itt_logic.ml insert:

let prover mult_lim calc hyps concls = 
  let mult_limit = if mult_lim = 0 then None else Some mult_lim in
  let calculus = match calc with
  | "J" -> (Intuit SingleConcl)
  | "C" -> Classical
  | _ -> raise (Invalid_argument "ITT_JProver.gen_prover calculus")
  in
  let start = Unix.times () in
  match 
    ITT_JProver.gen_prover mult_limit calculus hyps concls 
  with     
    empty_inf ->
      begin
	let finish = Unix.times () in
	let duration = (finish.Unix.tms_utime +. finish.Unix.tms_cutime) -. 
	    (start.Unix.tms_utime +. start.Unix.tms_cutime) in 
	printf "%g s\n" duration; 
        flush stdout;
      end

let prove concl = prover 0 "J" [] [concl]

(* example formula *)
let f = << all x. 'p['x] and exst y. 'q['y] => exst z. ('p['z] or not{'q['z]}) >>

In metaprl/theories/itt/core/itt_logic.mli insert:

topval prover : int -> string -> term list -> term list -> unit
topval prove : term -> unit
topval f : term

In metaprl/refiner/reflib/jall.ml replace the original definition of
function "gen_prover" by:

let gen_prover mult_limit calculus hyps concls =
	(* rev_append on the next line would break some proofs *)
   let consts =
		renam_free_vars SymbolSet.empty hyps
	in
   let consts =
      renam_free_vars consts concls
   in
   let _ftree, _red_ordering, (_sigmaQ,_sigmaJ), _ext_proof =
		prove consts mult_limit hyps concls calculus
	in
	if calculus = S4 then
		eprintf "matrix proof found@.";
   (* without transformation into sequent proof *)
   (* let red_ordering = PMap.fold (fun acc p s -> (p,s)::acc) [] red_ordering in *)
   (* it's too early to convert ext_proof to a set *)
   (* let sequent_proof = reconstruct ftree red_ordering sigmaQ ext_proof calculus consts in *)
         (* transform types let rename constants *)
     (* we can transform the eigenvariables AFTER proof reconstruction since *)
     (* new delta_0 constants may have been constructed during rule permutation *)
     (* from the LJmc to the LJ proof *)
   (* create_output consts sequent_proof *)
   JLogic.empty_inf


6. cd metaprl
   omake
   
   This gives a lot of output. If it failes you may have to choose
   other parameters in the file config, or contact us.

7. Start MetaPRL-Editor:
   cd metaprl/editor/ml
   a) interactive:

   ./mpxterm &

   prompt in the editor:

   cd "itt_logic";;
   f;;        
   prove f;;  
   exit ();;        

   or 
   b) non-interactive:

   create a file "metaprl/editor/ml/jptest.ml" which contains these
   directives: 

   cd "itt_logic";;
   f;;        
   prove f;;  
   exit ();; 

   ./mpopt -cli jptest.ml
   