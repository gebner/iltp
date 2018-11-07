%--------------------------------------------------------------------------
% File     : SWC392+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_subst_x_minimal
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_subst_x_minimal [Wei00]

% Status   : Theorem
% Rating   : 0.45 v3.1.0, 0.67 v2.7.0, 0.50 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  412 (  77 equality)
%            Maximal formula depth :   21 (   7 average)
%            Number of connectives :  348 (  32 ~  ;  15  |;  42  &)
%                                         (  26 <=>; 233 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  210 (   0 singleton; 196 !;  14 ?)
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
                      | ( ! [Z] : 
                            ( ssItem(Z)
                           => ( cons(Z,nil) != W
                              | ~ memberP(X,Z)
                              | ? [X1] : 
                                  ( ssItem(X1)
                                  & Z != X1
                                  & memberP(X,X1)
                                  & leq(X1,Z) ) ) )
                        & ( nil != X
                          | nil != W ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
