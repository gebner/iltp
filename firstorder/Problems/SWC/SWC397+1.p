%--------------------------------------------------------------------------
% File     : SWC397+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_subst_x_rot_r_total2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_subst_x_rot_r_total2 [Wei00]

% Status   : Theorem
% Rating   : 0.64 v3.1.0, 0.89 v2.7.0, 0.67 v2.6.0, 0.83 v2.5.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  410 (  77 equality)
%            Maximal formula depth :   20 (   7 average)
%            Number of connectives :  344 (  30 ~  ;  14  |;  40  &)
%                                         (  26 <=>; 234 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  210 (   0 singleton; 197 !;  13 ?)
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
                   => ( V != X
                      | U != W
                      | ! [Y] : 
                          ( ssItem(Y)
                         => ( ~ memberP(U,Y)
                            | memberP(V,Y) ) )
                      | ( nil != W
                        & nil = X )
                      | ( ! [Z] : 
                            ( ssItem(Z)
                           => ! [X1] : 
                                ( ssList(X1)
                               => ( app(cons(Z,nil),X1) != W
                                  | app(X1,cons(Z,nil)) != X ) ) )
                        & neq(X,nil) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
