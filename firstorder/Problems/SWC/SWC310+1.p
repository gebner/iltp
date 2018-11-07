%--------------------------------------------------------------------------
% File     : SWC310+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_rot_l_total1_x_rot_l_total2
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_rot_l_total1_x_rot_l_total2 [Wei00]

% Status   : Theorem
% Rating   : 0.82 v3.1.0, 0.89 v2.7.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  421 (  84 equality)
%            Maximal formula depth :   29 (   7 average)
%            Number of connectives :  358 (  33 ~  ;  17  |;  51  &)
%                                         (  26 <=>; 231 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  213 (   0 singleton; 196 !;  17 ?)
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
                    | ( nil != W
                      & nil = X )
                    | ( ! [Y] : 
                          ( ssItem(Y)
                         => ! [Z] : 
                              ( ~ ssList(Z)
                              | app(cons(Y,nil),Z) != X
                              | app(Z,cons(Y,nil)) != W ) )
                      & neq(X,nil) )
                    | ( ( nil != V
                        | nil = U )
                      & ( ~ neq(V,nil)
                        | ? [X1] : 
                            ( ssList(X1)
                            & U = X1
                            & ? [X2] : 
                                ( ssList(X2)
                                & ? [X3] : 
                                    ( ssList(X3)
                                    & tl(V) = X2
                                    & app(X2,X3) = X1
                                    & ? [X4] : 
                                        ( ssItem(X4)
                                        & cons(X4,nil) = X3
                                        & hd(V) = X4
                                        & neq(nil,V) )
                                    & neq(nil,V) ) ) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
