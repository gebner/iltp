%--------------------------------------------------------------------------
% File     : SWC379+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_set_min_elems_x_set_min_elems
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_set_min_elems_x_set_min_elems [Wei00]

% Status   : Theorem
% Rating   : 0.73 v3.1.0, 0.67 v2.7.0, 0.50 v2.6.0, 0.67 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  426 (  77 equality)
%            Maximal formula depth :   22 (   7 average)
%            Number of connectives :  366 (  36 ~  ;  19  |;  51  &)
%                                         (  26 <=>; 234 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  213 (   0 singleton; 197 !;  16 ?)
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
                      | ? [Y] : 
                          ( ssItem(Y)
                          & ( ( ~ memberP(W,Y)
                              & ! [Z] : 
                                  ( ssItem(Z)
                                 => ( ~ memberP(X,Z)
                                    | ~ leq(Z,Y)
                                    | Y = Z ) )
                              & memberP(X,Y) )
                            | ( memberP(W,Y)
                              & ( ~ memberP(X,Y)
                                | ? [Z] : 
                                    ( ssItem(Z)
                                    & Y != Z
                                    & memberP(X,Z)
                                    & leq(Z,Y) ) ) ) ) )
                      | ! [X1] : 
                          ( ssItem(X1)
                         => ( ( ~ memberP(U,X1)
                              & ( ~ memberP(V,X1)
                                | ? [X2] : 
                                    ( ssItem(X2)
                                    & X1 != X2
                                    & memberP(V,X2)
                                    & leq(X2,X1) ) ) )
                            | ( ! [X2] : 
                                  ( ssItem(X2)
                                 => ( ~ memberP(V,X2)
                                    | ~ leq(X2,X1)
                                    | X1 = X2 ) )
                              & memberP(V,X1)
                              & memberP(U,X1) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
