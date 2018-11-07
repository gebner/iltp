%--------------------------------------------------------------------------
% File     : SWC095+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_insert_x_insert
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_insert_x_insert [Wei00]

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.22 v2.7.0, 0.33 v2.5.0, 0.17 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  410 (  77 equality)
%            Maximal formula depth :   20 (   7 average)
%            Number of connectives :  344 (  30 ~  ;  14  |;  42  &)
%                                         (  26 <=>; 232 =>;   0 <=)
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
                    ( ~ ssList(X)
                    | V != X
                    | U != W
                    | ? [Y] : 
                        ( ssList(Y)
                        & ? [Z] : 
                            ( ssList(Z)
                            & ? [X1] : 
                                ( ssList(X1)
                                & app(app(Y,Z),X1) = U
                                & app(Y,X1) = V ) ) )
                    | ! [X2] : 
                        ( ssList(X2)
                       => ! [X3] : 
                            ( ssList(X3)
                           => ! [X4] : 
                                ( ~ ssList(X4)
                                | app(app(X2,X3),X4) != W
                                | app(X2,X4) != X ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
