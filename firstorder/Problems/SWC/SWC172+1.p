%--------------------------------------------------------------------------
% File     : SWC172+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_pst_diff_adj2_x_minimal
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pst_diff_adj2_x_minimal [Wei00]

% Status   : Theorem
% Rating   : 0.82 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  415 (  78 equality)
%            Maximal formula depth :   22 (   7 average)
%            Number of connectives :  354 (  35 ~  ;  18  |;  42  &)
%                                         (  26 <=>; 233 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  213 (   0 singleton; 199 !;  14 ?)
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
                    ( ~ ssList(X)
                    | V != X
                    | U != W
                    | ! [Y] : 
                        ( ssItem(Y)
                       => ! [Z] : 
                            ( ~ ssItem(Z)
                            | ! [X1] : 
                                ( ssList(X1)
                               => ! [X2] : 
                                    ( ssList(X2)
                                   => app(app(app(X1,cons(Y,nil)),cons(Z,nil)),X2) != U ) )
                            | neq(Y,Z) ) )
                    | ( ! [X3] : 
                          ( ~ ssItem(X3)
                          | cons(X3,nil) != W
                          | ~ memberP(X,X3)
                          | ? [X4] : 
                              ( ssItem(X4)
                              & X3 != X4
                              & memberP(X,X4)
                              & leq(X4,X3) ) )
                      & ( nil != X
                        | nil != W ) ) ) ) ) ) )).

%--------------------------------------------------------------------------