%--------------------------------------------------------------------------
% File     : SWC040+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_id_nil_x_rot_r_total2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_id_nil_x_rot_r_total2 [Wei00]

% Status   : Theorem
% Rating   : 0.09 v3.1.0, 0.11 v2.7.0, 0.17 v2.5.0, 0.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  409 (  79 equality)
%            Maximal formula depth :   21 (   7 average)
%            Number of connectives :  343 (  30 ~  ;  14  |;  40  &)
%                                         (  26 <=>; 233 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  209 (   0 singleton; 196 !;  13 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include list specification axioms
include('Axioms/SWC001+0.ax').
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( ! [U] : 
        ( ssList(U)
       => ! [V] : 
            ( ssList(V)
           => ! [W] : 
                ( ssList(W)
               => ! [X] : 
                    ( ssList(X)
                   => ( nil != V
                      | V != X
                      | U != W
                      | nil = U
                      | ( nil != W
                        & nil = X )
                      | ( ! [Y] : 
                            ( ssItem(Y)
                           => ! [Z] : 
                                ( ssList(Z)
                               => ( app(cons(Y,nil),Z) != W
                                  | app(Z,cons(Y,nil)) != X ) ) )
                        & neq(X,nil) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
