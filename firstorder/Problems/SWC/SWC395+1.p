%--------------------------------------------------------------------------
% File     : SWC395+1 : ILTP v1.1.2
% Domain   : Software Creation
% Problem  : cond_subst_x_rot_l_total1
% Version  : [Wei00] axioms.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_subst_x_rot_l_total1 [Wei00]

% Status   : Theorem
% Rating   : 1.00 v2.6.0, 0.83 v2.4.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (   9 unit)
%            Number of atoms       :  417 (  80 equality)
%            Maximal formula depth :   28 (   7 average)
%            Number of connectives :  352 (  31 ~  ;  15  |;  50  &)
%                                         (  26 <=>; 230 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   20 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  212 (   0 singleton; 195 !;  17 ?)
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
                        ( ~ ssItem(Y)
                        | ~ memberP(U,Y)
                        | memberP(V,Y) )
                    | ( nil != W
                      & nil = X )
                    | ( ? [Z] : 
                          ( ssList(Z)
                          & W != Z
                          & ? [X1] : 
                              ( ssList(X1)
                              & ? [X2] : 
                                  ( ssList(X2)
                                  & tl(X) = X1
                                  & app(X1,X2) = Z
                                  & ? [X3] : 
                                      ( ssItem(X3)
                                      & cons(X3,nil) = X2
                                      & hd(X) = X3
                                      & neq(nil,X) )
                                  & neq(nil,X) ) ) )
                      & neq(X,nil) ) ) ) ) ) )).

%--------------------------------------------------------------------------
