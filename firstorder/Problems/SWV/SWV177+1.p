%------------------------------------------------------------------------------
% File     : SWV177+1 : ILTP v1.1.2
% Domain   : Software Verification
% Problem  : Simplified proof obligation cl5_nebula_init_0061
% Version  : [DFS04] axioms : Especial.
% English  : Proof obligation emerging from the init-safety verification for
%            the cl5_nebula program. init-safety ensures that each variable or
%            individual array element has been assigned a defined value before
%            it is used.

% Refs     : [Fis04] Fischer (2004), Email to G. Sutcliffe
%          : [DFS04] Denney et al. (2004), Using Automated Theorem Provers
% Source   : [Fis04]
% Names    : cl5_nebula_init_0061 [Fis04]

% Status   : Theorem
% Rating   : 0.36 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   90 (  55 unit)
%            Number of atoms       :  244 (  86 equality)
%            Maximal formula depth :   24 (   4 average)
%            Number of connectives :  159 (   5 ~  ;  17  |;  88  &)
%                                         (   5 <=>;  44 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   1 propositional; 0-2 arity)
%            Number of functors    :   40 (  22 constant; 0-4 arity)
%            Number of variables   :  151 (   0 singleton; 151 !;   0 ?)
%            Maximal term depth    :    9 (   1 average)

% Comments : 
%------------------------------------------------------------------------------
%----Include NASA software certification axioms
include('Axioms/SWV003+0.ax').
%------------------------------------------------------------------------------
%----Proof obligation generated by the AutoBayes/AutoFilter system
fof(cl5_nebula_init_0061,conjecture,
    ( ( leq(n0,pv40)
      & leq(n0,pv45)
      & leq(pv40,n4)
      & leq(pv45,n135299)
      & gt(loopcounter,n1)
      & ! [A] : 
          ( ( leq(n0,A)
            & leq(A,n135299) )
         => ! [B] : 
              ( ( leq(n0,B)
                & leq(B,n4) )
             => a_select3(q_init,A,B) = init ) )
      & ! [C] : 
          ( ( leq(n0,C)
            & leq(C,n4) )
         => a_select2(rho_init,C) = init )
      & ! [D] : 
          ( ( leq(n0,D)
            & leq(D,pred(pv40)) )
         => a_select2(mu_init,D) = init )
      & ! [E] : 
          ( ( leq(n0,E)
            & leq(E,pred(pv40)) )
         => a_select2(sigma_init,E) = init )
      & ! [F] : 
          ( ( leq(n0,F)
            & leq(F,n4) )
         => a_select3(center_init,F,n0) = init )
      & ( gt(loopcounter,n1)
       => ! [G] : 
            ( ( leq(n0,G)
              & leq(G,n4) )
           => a_select2(muold_init,G) = init ) )
      & ( gt(loopcounter,n1)
       => ! [H] : 
            ( ( leq(n0,H)
              & leq(H,n4) )
           => a_select2(rhoold_init,H) = init ) )
      & ( gt(loopcounter,n1)
       => ! [I] : 
            ( ( leq(n0,I)
              & leq(I,n4) )
           => a_select2(sigmaold_init,I) = init ) ) )
   => ! [J] : 
        ( ( leq(n0,J)
          & leq(J,n4) )
       => a_select2(rhoold_init,J) = init ) )).

%----Automatically generated axioms

fof(gt_5_4,axiom,
    ( gt(n5,n4) )).

fof(gt_135299_4,axiom,
    ( gt(n135299,n4) )).

fof(gt_135299_5,axiom,
    ( gt(n135299,n5) )).

fof(gt_4_tptp_minus_1,axiom,
    ( gt(n4,tptp_minus_1) )).

fof(gt_5_tptp_minus_1,axiom,
    ( gt(n5,tptp_minus_1) )).

fof(gt_135299_tptp_minus_1,axiom,
    ( gt(n135299,tptp_minus_1) )).

fof(gt_0_tptp_minus_1,axiom,
    ( gt(n0,tptp_minus_1) )).

fof(gt_1_tptp_minus_1,axiom,
    ( gt(n1,tptp_minus_1) )).

fof(gt_2_tptp_minus_1,axiom,
    ( gt(n2,tptp_minus_1) )).

fof(gt_3_tptp_minus_1,axiom,
    ( gt(n3,tptp_minus_1) )).

fof(gt_4_0,axiom,
    ( gt(n4,n0) )).

fof(gt_5_0,axiom,
    ( gt(n5,n0) )).

fof(gt_135299_0,axiom,
    ( gt(n135299,n0) )).

fof(gt_1_0,axiom,
    ( gt(n1,n0) )).

fof(gt_2_0,axiom,
    ( gt(n2,n0) )).

fof(gt_3_0,axiom,
    ( gt(n3,n0) )).

fof(gt_4_1,axiom,
    ( gt(n4,n1) )).

fof(gt_5_1,axiom,
    ( gt(n5,n1) )).

fof(gt_135299_1,axiom,
    ( gt(n135299,n1) )).

fof(gt_2_1,axiom,
    ( gt(n2,n1) )).

fof(gt_3_1,axiom,
    ( gt(n3,n1) )).

fof(gt_4_2,axiom,
    ( gt(n4,n2) )).

fof(gt_5_2,axiom,
    ( gt(n5,n2) )).

fof(gt_135299_2,axiom,
    ( gt(n135299,n2) )).

fof(gt_3_2,axiom,
    ( gt(n3,n2) )).

fof(gt_4_3,axiom,
    ( gt(n4,n3) )).

fof(gt_5_3,axiom,
    ( gt(n5,n3) )).

fof(gt_135299_3,axiom,
    ( gt(n135299,n3) )).

fof(finite_domain_4,axiom,
    ( ! [X] : 
        ( ( leq(n0,X)
          & leq(X,n4) )
       => ( X = n0
          | X = n1
          | X = n2
          | X = n3
          | X = n4 ) ) )).

fof(finite_domain_5,axiom,
    ( ! [X] : 
        ( ( leq(n0,X)
          & leq(X,n5) )
       => ( X = n0
          | X = n1
          | X = n2
          | X = n3
          | X = n4
          | X = n5 ) ) )).

fof(finite_domain_0,axiom,
    ( ! [X] : 
        ( ( leq(n0,X)
          & leq(X,n0) )
       => X = n0 ) )).

fof(finite_domain_1,axiom,
    ( ! [X] : 
        ( ( leq(n0,X)
          & leq(X,n1) )
       => ( X = n0
          | X = n1 ) ) )).

fof(finite_domain_2,axiom,
    ( ! [X] : 
        ( ( leq(n0,X)
          & leq(X,n2) )
       => ( X = n0
          | X = n1
          | X = n2 ) ) )).

fof(finite_domain_3,axiom,
    ( ! [X] : 
        ( ( leq(n0,X)
          & leq(X,n3) )
       => ( X = n0
          | X = n1
          | X = n2
          | X = n3 ) ) )).

fof(successor_4,axiom,
    ( succ(succ(succ(succ(n0)))) = n4 )).

fof(successor_5,axiom,
    ( succ(succ(succ(succ(succ(n0))))) = n5 )).

fof(successor_1,axiom,
    ( succ(n0) = n1 )).

fof(successor_2,axiom,
    ( succ(succ(n0)) = n2 )).

fof(successor_3,axiom,
    ( succ(succ(succ(n0))) = n3 )).
%------------------------------------------------------------------------------
