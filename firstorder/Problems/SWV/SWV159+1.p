%------------------------------------------------------------------------------
% File     : SWV159+1 : ILTP v1.1.2
% Domain   : Software Verification
% Problem  : Simplified proof obligation cl5_nebula_norm_0009
% Version  : [DFS04] axioms : Especial.
% English  : Proof obligation emerging from the norm-safety verification for
%            the cl5_nebula program. norm-safety ensures that the contents of
%            certain one-dimensional arrays add up to one.

% Refs     : [Fis04] Fischer (2004), Email to G. Sutcliffe
%          : [DFS04] Denney et al. (2004), Using Automated Theorem Provers
% Source   : [Fis04]
% Names    : cl5_nebula_norm_0009 [Fis04]

% Status   : Theorem
% Rating   : 0.18 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   98 (  63 unit)
%            Number of atoms       :  230 (  82 equality)
%            Maximal formula depth :   24 (   4 average)
%            Number of connectives :  138 (   6 ~  ;  17  |;  75  &)
%                                         (   5 <=>;  35 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    6 (   1 propositional; 0-2 arity)
%            Number of functors    :   43 (  21 constant; 0-4 arity)
%            Number of variables   :  144 (   0 singleton; 144 !;   0 ?)
%            Maximal term depth    :   11 (   1 average)

% Comments : 
%------------------------------------------------------------------------------
%----Include NASA software certification axioms
include('Axioms/SWV003+0.ax').
%------------------------------------------------------------------------------
%----Proof obligation generated by the AutoBayes/AutoFilter system
fof(cl5_nebula_norm_0009,conjecture,
    ( ( pv84 = sum(n0,n4,divide(times(exp(divide(divide(times(minus(a_select2(x,pv10),a_select2(mu,tptp_sum_index)),minus(a_select2(x,pv10),a_select2(mu,tptp_sum_index))),tptp_minus_2),times(a_select2(sigma,tptp_sum_index),a_select2(sigma,tptp_sum_index)))),a_select2(rho,tptp_sum_index)),times(sqrt(times(n2,tptp_pi)),a_select2(sigma,tptp_sum_index))))
      & leq(n0,pv10)
      & leq(n0,pv47)
      & leq(pv10,n135299)
      & leq(pv47,n4)
      & ! [A] : 
          ( ( leq(n0,A)
            & leq(A,pred(pv47)) )
         => a_select3(q,pv10,A) = divide(divide(times(exp(divide(divide(times(minus(a_select2(x,pv10),a_select2(mu,A)),minus(a_select2(x,pv10),a_select2(mu,A))),tptp_minus_2),times(a_select2(sigma,A),a_select2(sigma,A)))),a_select2(rho,A)),times(sqrt(times(n2,tptp_pi)),a_select2(sigma,A))),sum(n0,n4,divide(times(exp(divide(divide(times(minus(a_select2(x,pv10),a_select2(mu,tptp_sum_index)),minus(a_select2(x,pv10),a_select2(mu,tptp_sum_index))),tptp_minus_2),times(a_select2(sigma,tptp_sum_index),a_select2(sigma,tptp_sum_index)))),a_select2(rho,tptp_sum_index)),times(sqrt(times(n2,tptp_pi)),a_select2(sigma,tptp_sum_index))))) )
      & ! [B] : 
          ( ( leq(n0,B)
            & leq(B,pred(pv10)) )
         => sum(n0,n4,a_select3(q,B,tptp_sum_index)) = n1 ) )
   => ! [C] : 
        ( ( leq(n0,C)
          & leq(C,pred(pv10)) )
       => ( pv10 != C
         => sum(n0,n4,a_select3(q,C,tptp_sum_index)) = n1 ) ) )).

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

fof(gt_4_tptp_minus_2,axiom,
    ( gt(n4,tptp_minus_2) )).

fof(gt_5_tptp_minus_2,axiom,
    ( gt(n5,tptp_minus_2) )).

fof(gt_tptp_minus_1_tptp_minus_2,axiom,
    ( gt(tptp_minus_1,tptp_minus_2) )).

fof(gt_135299_tptp_minus_2,axiom,
    ( gt(n135299,tptp_minus_2) )).

fof(gt_0_tptp_minus_2,axiom,
    ( gt(n0,tptp_minus_2) )).

fof(gt_1_tptp_minus_2,axiom,
    ( gt(n1,tptp_minus_2) )).

fof(gt_2_tptp_minus_2,axiom,
    ( gt(n2,tptp_minus_2) )).

fof(gt_3_tptp_minus_2,axiom,
    ( gt(n3,tptp_minus_2) )).

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
