%--------------------------------------------------------------------------
% File     : SWC034+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_id_nil_iff_x_set_unique_elems
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_id_nil_iff_x_set_unique_elems [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  413 (  77 equality)
%            Maximal formula depth :   20 (   7 average)
%            Number of connectives :  348 (  31 ~  ;  15  |;  44  &)
%                                         (  26 <=>; 232 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  210 (   0 singleton; 195 !;  15 ?)
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
                      | ? [Y] : 
                          ( ssItem(Y)
                          & ( ( ~ memberP(W,Y)
                              & ! [Z] : 
                                  ( ssList(Z)
                                 => ~ segmentP(X,app(app(cons(Y,nil),Z),cons(Y,nil))) )
                              & memberP(X,Y) )
                            | ( memberP(W,Y)
                              & ( ~ memberP(X,Y)
                                | ? [Z] : 
                                    ( ssList(Z)
                                    & segmentP(X,app(app(cons(Y,nil),Z),cons(Y,nil))) ) ) ) ) )
                      | ( ( nil != V
                          | nil = U )
                        & ( nil != U
                          | nil = V ) ) ) ) ) ) ) )).

%--------------------------------------------------------------------------
