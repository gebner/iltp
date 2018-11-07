%--------------------------------------------------------------------------
% File     : SWC399+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_subst_x_run_eq_max2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_subst_x_run_eq_max2 [Wei00]

% Status   : Theorem
% Rating   : 0.55 v3.1.0, 0.67 v2.7.0, 0.50 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  419 (  80 equality)
%            Maximal formula depth :   26 (   7 average)
%            Number of connectives :  356 (  33 ~  ;  19  |;  47  &)
%                                         (  26 <=>; 231 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  216 (   0 singleton; 197 !;  19 ?)
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
                    ( ~ ssList(X)
                    | V != X
                    | U != W
                    | ! [Y] : 
                        ( ssList(Y)
                       => ! [Z] : 
                            ( ~ ssList(Z)
                            | app(app(Y,W),Z) != X
                            | ~ equalelemsP(W)
                            | ? [X1] : 
                                ( ssItem(X1)
                                & ? [X2] : 
                                    ( ssList(X2)
                                    & app(X2,cons(X1,nil)) = Y
                                    & ? [X3] : 
                                        ( ssList(X3)
                                        & app(cons(X1,nil),X3) = W ) ) )
                            | ? [X4] : 
                                ( ssItem(X4)
                                & ? [X5] : 
                                    ( ssList(X5)
                                    & app(cons(X4,nil),X5) = Z
                                    & ? [X6] : 
                                        ( ssList(X6)
                                        & app(X6,cons(X4,nil)) = W ) ) ) ) )
                    | ! [X7] : 
                        ( ~ ssItem(X7)
                        | ~ memberP(U,X7)
                        | memberP(V,X7) )
                    | ( nil != X
                      & nil = W ) ) ) ) ) )).

%--------------------------------------------------------------------------
