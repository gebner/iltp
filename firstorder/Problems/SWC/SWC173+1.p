%--------------------------------------------------------------------------
% File     : SWC173+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_pst_diff_adj2_x_pivot
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_diff_adj2_x_pivot [Wei00]

% Status   : Theorem
% Rating   : 0.82 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  419 (  78 equality)
%            Maximal formula depth :   25 (   7 average)
%            Number of connectives :  354 (  31 ~  ;  16  |;  43  &)
%                                         (  26 <=>; 238 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  216 (   0 singleton; 201 !;  15 ?)
%            Maximal term depth    :    5 (   1 average)

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
                         => ! [Z] : 
                              ( ssItem(Z)
                             => ( ! [X1] : 
                                    ( ssList(X1)
                                   => ! [X2] : 
                                        ( ssList(X2)
                                       => app(app(app(X1,cons(Y,nil)),cons(Z,nil)),X2) != U ) )
                                | neq(Y,Z) ) ) )
                      | ( ! [X3] : 
                            ( ssItem(X3)
                           => ! [X4] : 
                                ( ssList(X4)
                               => ! [X5] : 
                                    ( ssList(X5)
                                   => ( cons(X3,nil) != W
                                      | app(app(X4,W),X5) != X
                                      | ? [X6] : 
                                          ( ssItem(X6)
                                          & memberP(X4,X6)
                                          & lt(X3,X6) )
                                      | ? [X7] : 
                                          ( ssItem(X7)
                                          & memberP(X5,X7)
                                          & lt(X7,X3) ) ) ) ) )
                        & ( nil != X
                          | nil != W ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
