%--------------------------------------------------------------------------
% File     : SWC152+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_pst_cyc_sorted_x_maximal
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_cyc_sorted_x_maximal [Wei00]

% Status   : Theorem
% Rating   : 0.91 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  421 (  78 equality)
%            Maximal formula depth :   29 (   7 average)
%            Number of connectives :  363 (  38 ~  ;  21  |;  44  &)
%                                         (  26 <=>; 234 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  215 (   0 singleton; 201 !;  14 ?)
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
                    ( ~ ssList(X)
                    | V != X
                    | U != W
                    | ! [Y] : 
                        ( ssItem(Y)
                       => ! [Z] : 
                            ( ssItem(Z)
                           => ! [X1] : 
                                ( ssList(X1)
                               => ! [X2] : 
                                    ( ssList(X2)
                                   => ! [X3] : 
                                        ( ~ ssList(X3)
                                        | app(app(app(app(X1,cons(Y,nil)),X2),cons(Z,nil)),X3) != U
                                        | ~ leq(Z,Y)
                                        | ( ! [X4] : 
                                              ( ~ ssItem(X4)
                                              | ~ memberP(X2,X4)
                                              | ( leq(Y,X4)
                                                & leq(X4,Z) ) )
                                          & leq(Y,Z) ) ) ) ) ) )
                    | ( ! [X5] : 
                          ( ~ ssItem(X5)
                          | cons(X5,nil) != W
                          | ~ memberP(X,X5)
                          | ? [X6] : 
                              ( ssItem(X6)
                              & X5 != X6
                              & memberP(X,X6)
                              & leq(X5,X6) ) )
                      & ( nil != X
                        | nil != W ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
