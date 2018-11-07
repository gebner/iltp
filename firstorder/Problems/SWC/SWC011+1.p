%--------------------------------------------------------------------------
% File     : SWC011+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_filter_some_x_filter_some
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_filter_some_x_filter_some [Wei00]

% Status   : Theorem
% Rating   : 0.45 v3.1.0, 0.56 v2.7.0, 0.50 v2.6.0, 0.67 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  413 (  77 equality)
%            Maximal formula depth :   22 (   7 average)
%            Number of connectives :  347 (  30 ~  ;  14  |;  43  &)
%                                         (  26 <=>; 234 =>;   0 <=)
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
                    ( ssList(X)
                   => ( V != X
                      | U != W
                      | ( ( ~ neq(V,nil)
                          | ? [Y] : 
                              ( ssItem(Y)
                              & ? [Z] : 
                                  ( ssList(Z)
                                  & ? [X1] : 
                                      ( ssList(X1)
                                      & app(app(Z,cons(Y,nil)),X1) = V
                                      & app(Z,X1) = U ) ) )
                          | ! [X2] : 
                              ( ssItem(X2)
                             => ! [X3] : 
                                  ( ssList(X3)
                                 => ! [X4] : 
                                      ( ssList(X4)
                                     => ( app(app(X3,cons(X2,nil)),X4) != X
                                        | app(X3,X4) != W ) ) ) ) )
                        & ( ~ neq(V,nil)
                          | neq(X,nil) ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
