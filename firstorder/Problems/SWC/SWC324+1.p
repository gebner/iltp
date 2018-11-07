%--------------------------------------------------------------------------
% File     : SWC324+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_rotate_x_rot_l_total3
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_rotate_x_rot_l_total3 [Wei00]

% Status   : Theorem
% Rating   : 0.82 v3.1.0, 0.89 v2.7.0, 0.67 v2.6.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  410 (  79 equality)
%            Maximal formula depth :   19 (   7 average)
%            Number of connectives :  343 (  29 ~  ;  13  |;  45  &)
%                                         (  26 <=>; 230 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  211 (   0 singleton; 194 !;  17 ?)
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
                            & app(Y,Z) = V
                            & app(Z,Y) = U ) )
                    | ? [X1] : 
                        ( ssItem(X1)
                        & ? [X2] : 
                            ( ssList(X2)
                            & app(X2,cons(X1,nil)) != W
                            & app(cons(X1,nil),X2) = X ) )
                    | ( nil != W
                      & nil = X ) ) ) ) ) )).

%--------------------------------------------------------------------------
