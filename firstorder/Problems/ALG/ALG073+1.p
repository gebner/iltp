%--------------------------------------------------------------------------
% File     : ALG073+1 : ILTP v1.1.2
% Domain   : General Algebra
% Problem  : Loops 5: CPROPS-SORTED-DISCRIMINANT-PROBLEM-5
% Version  : Especial.
% English  : 

% Refs     : [Mei03] Meier (2003), Email to G.Sutcliffe
%          : [CM+04] Colton et al. (2004), Automatic Generation of Classifi
% Source   : [Mei03]
% Names    : 

% Status   : Theorem
% Rating   : 0.18 v3.1.0, 0.22 v2.7.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.0.0
%
% Syntax   : Number of formulae    :    5 (   0 unit)
%            Number of atoms       :   30 (  10 equality)
%            Maximal formula depth :    9 (   7 average)
%            Number of connectives :   29 (   4 ~  ;   0  |;  12  &)
%                                         (   0 <=>;  13 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    4 (   0 constant; 1-2 arity)
%            Number of variables   :   16 (   0 singleton;  12 !;   4 ?)
%            Maximal term depth    :    3 (   2 average)

% Comments : 
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ( ! [U] : 
        ( sorti1(U)
       => ! [V] : 
            ( sorti1(V)
           => sorti1(op1(U,V)) ) ) )).

fof(ax2,axiom,
    ( ! [U] : 
        ( sorti2(U)
       => ! [V] : 
            ( sorti2(V)
           => sorti2(op2(U,V)) ) ) )).

fof(ax3,axiom,
    ( ? [U] : 
        ( sorti1(U)
        & ? [V] : 
            ( sorti1(V)
            & op1(U,U) = V
            & op1(V,V) = U
            & op1(U,V) != U ) ) )).

fof(ax4,axiom,
    ( ~ ( ? [U] : 
            ( sorti2(U)
            & ? [V] : 
                ( sorti2(V)
                & op2(U,U) = V
                & op2(V,V) = U
                & op2(U,V) != U ) ) ) )).

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
