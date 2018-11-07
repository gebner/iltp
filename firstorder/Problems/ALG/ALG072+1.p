%--------------------------------------------------------------------------
% File     : ALG072+1 : ILTP v1.1.1
% Domain   : General Algebra
% Problem  : Loops 5: CPROPS-SORTED-DISCRIMINANT-PROBLEM-4
% Version  : Especial.
% English  : 

% Refs     : [Mei03] Meier (2003), Email to G.Sutcliffe
%          : [CM+04] Colton et al. (2004), Automatic Generation of Classifi
% Source   : [Mei03]
% Names    : 

% Status   : Theorem
% Rating   : 0.55 v3.1.0, 0.67 v2.7.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    9 (   2 unit)
%            Number of atoms       :   44 (  16 equality)
%            Maximal formula depth :   11 (   6 average)
%            Number of connectives :   41 (   6 ~  ;   2  |;  14  &)
%                                         (   0 <=>;  19 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    6 (   2 constant; 0-2 arity)
%            Number of variables   :   22 (   0 singleton;  18 !;   4 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ( sorti1(unit1) )).

fof(ax2,axiom,
    ( ! [U] : 
        ( sorti1(U)
       => ( op1(unit1,U) = U
          & op1(U,unit1) = U ) )
    & ? [V] : 
        ( sorti1(V)
        & unit1 = V ) )).

fof(ax3,axiom,
    ( sorti2(unit2) )).

fof(ax4,axiom,
    ( ! [U] : 
        ( sorti2(U)
       => ( op2(unit2,U) = U
          & op2(U,unit2) = U ) )
    & ? [V] : 
        ( sorti2(V)
        & unit2 = V ) )).

fof(ax5,axiom,
    ( ! [U] : 
        ( sorti1(U)
       => ! [V] : 
            ( sorti1(V)
           => sorti1(op1(U,V)) ) ) )).

fof(ax6,axiom,
    ( ! [U] : 
        ( sorti2(U)
       => ! [V] : 
            ( sorti2(V)
           => sorti2(op2(U,V)) ) ) )).

fof(ax7,axiom,
    ( ? [U] : 
        ( sorti1(U)
        & ! [V] : 
            ( sorti1(V)
           => ! [W] : 
                ( sorti1(W)
               => ( op1(V,W) != U
                  | ( op1(V,U) = W
                    & U != unit1 ) ) ) ) ) )).

fof(ax8,axiom,
    ( ~ ( ? [U] : 
            ( sorti2(U)
            & ! [V] : 
                ( sorti2(V)
               => ! [W] : 
                    ( sorti2(W)
                   => ( op2(V,W) != U
                      | ( op2(V,U) = W
                        & U != unit2 ) ) ) ) ) ) )).

fof(co1,conjecture,
    ( ( ! [U] : 
          ( sorti1(U)
         => sorti2(h(U)) )
      & ! [V] : 
          ( sorti2(V)
         => sorti1(j(V)) ) )
   => ~ ( ! [W] : 
            ( sorti1(W)
           => ! [X] : 
                ( sorti1(X)
               => h(op1(W,X)) = op2(h(W),h(X)) ) )
        & ! [Y] : 
            ( sorti2(Y)
           => ! [Z] : 
                ( sorti2(Z)
               => j(op2(Y,Z)) = op1(j(Y),j(Z)) ) )
        & ! [X1] : 
            ( sorti2(X1)
           => h(j(X1)) = X1 )
        & ! [X2] : 
            ( sorti1(X2)
           => j(h(X2)) = X2 ) ) )).

%--------------------------------------------------------------------------
