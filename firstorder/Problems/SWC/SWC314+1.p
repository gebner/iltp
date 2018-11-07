%--------------------------------------------------------------------------
% File     : SWC314+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_rot_l_total3_x_rot_l_total1
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_rot_l_total3_x_rot_l_total1 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  420 (  84 equality)
%            Maximal formula depth :   28 (   7 average)
%            Number of connectives :  356 (  32 ~  ;  16  |;  51  &)
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
                    | ( ? [Y] : 
                          ( ssList(Y)
                          & W != Y
                          & ? [Z] : 
                              ( ssList(Z)
                              & ? [X1] : 
                                  ( ssList(X1)
                                  & tl(X) = Z
                                  & app(Z,X1) = Y
                                  & ? [X2] : 
                                      ( ssItem(X2)
                                      & cons(X2,nil) = X1
                                      & hd(X) = X2
                                      & neq(nil,X) )
                                  & neq(nil,X) ) ) )
                      & neq(X,nil) )
                    | ( ! [X3] : 
                          ( ssItem(X3)
                         => ! [X4] : 
                              ( ~ ssList(X4)
                              | app(cons(X3,nil),X4) != V
                              | app(X4,cons(X3,nil)) = U ) )
                      & ( nil != V
                        | nil = U ) ) ) ) ) ) )).

%--------------------------------------------------------------------------