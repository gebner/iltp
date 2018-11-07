%--------------------------------------------------------------------------
% File     : SWC014+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_head2_x_head3
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_head2_x_head3 [Wei00]

% Status   : Theorem
% Rating   : 0.55 v3.1.0, 0.56 v2.7.0, 0.50 v2.6.0, 0.67 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  413 (  78 equality)
%            Maximal formula depth :   21 (   7 average)
%            Number of connectives :  347 (  30 ~  ;  14  |;  44  &)
%                                         (  26 <=>; 233 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  211 (   0 singleton; 196 !;  15 ?)
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
                      | ( ( ~ neq(V,nil)
                          | ? [Y] : 
                              ( ssList(Y)
                              & V = Y
                              & ? [Z] : 
                                  ( ssList(Z)
                                  & tl(V) = Z
                                  & app(U,Z) = Y
                                  & neq(nil,V) ) )
                          | ! [X1] : 
                              ( ssItem(X1)
                             => ! [X2] : 
                                  ( ssList(X2)
                                 => ( cons(X1,nil) != W
                                    | app(cons(X1,nil),X2) != X ) ) ) )
                        & ( ~ neq(V,nil)
                          | neq(X,nil) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
