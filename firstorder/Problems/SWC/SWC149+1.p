%--------------------------------------------------------------------------
% File     : SWC149+1 : ILTP v1.1.0
% Domain   : Software Creation
% Problem  : cond_pr_works_on_pairs_x_swap_ends
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pr_works_on_pairs_x_swap_ends [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.7.0, 0.83 v2.6.0, 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  406 (  74 equality)
%            Maximal formula depth :   19 (   7 average)
%            Number of connectives :  337 (  27 ~  ;  12  |;  41  &)
%                                         (  26 <=>; 231 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  210 (   0 singleton; 194 !;  16 ?)
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
                      | ~ neq(V,nil)
                      | ? [Y] : 
                          ( ssItem(Y)
                          & ? [Z] : 
                              ( ssItem(Z)
                              & ? [X1] : 
                                  ( ssList(X1)
                                  & app(app(cons(Y,nil),cons(Z,nil)),X1) = X ) ) )
                      | singletonP(V) ) ) ) ) ) )).

%--------------------------------------------------------------------------