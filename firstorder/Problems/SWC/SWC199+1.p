%--------------------------------------------------------------------------
% File     : SWC199+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_pst_equal3_x_pst_equal2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_equal3_x_pst_equal2 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  411 (  76 equality)
%            Maximal formula depth :   24 (   7 average)
%            Number of connectives :  343 (  28 ~  ;  12  |;  45  &)
%                                         (  26 <=>; 232 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  214 (   0 singleton; 195 !;  19 ?)
%            Maximal term depth    :    6 (   1 average)

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
                          & ! [Z] : 
                              ( ssItem(Z)
                             => ( ~ memberP(U,Z)
                                | Y = Z ) ) )
                      | ? [X1] : 
                          ( ssItem(X1)
                          & ? [X2] : 
                              ( ssItem(X2)
                              & ? [X3] : 
                                  ( ssList(X3)
                                  & ? [X4] : 
                                      ( ssList(X4)
                                      & ? [X5] : 
                                          ( ssList(X5)
                                          & X1 != X2
                                          & app(app(app(app(X3,cons(X1,nil)),X5),cons(X2,nil)),X4) = W ) ) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
