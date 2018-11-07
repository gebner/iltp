%--------------------------------------------------------------------------
% File     : ALG046+1 : ILTP v1.1.1
% Domain   : General Algebra
% Problem  : Loops 4: VERIFY-GEN-SYSES-PROBLEM-2
% Version  : Especial.
% English  : 

% Refs     : [Mei03] Meier (2003), Email to G.Sutcliffe
%          : [CM+04] Colton et al. (2004), Automatic Generation of Classifi
% Source   : [Mei03]
% Names    : 

% Status   : Unsatisfiable
% Rating   : 0.00 v3.1.0, 0.33 v2.7.0
%
% Status (intuit.) : Open (Problem negated)
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   30 (   0 unit)
%            Number of atoms       :  346 ( 346 equality)
%            Maximal formula depth :   49 (   8 average)
%            Number of connectives :  395 (  79 ~  ; 150  |; 166  &)
%                                         (   0 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    6 (   5 constant; 0-2 arity)
%            Number of variables   :    0 (   0 singleton;   0 !;   0 ?)
%            Maximal term depth    :    4 (   2 average)

% Comments : 
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ( ( op(e0,e0) = e0
      | op(e0,e0) = e1
      | op(e0,e0) = e2
      | op(e0,e0) = e3 )
    & ( op(e0,e1) = e0
      | op(e0,e1) = e1
      | op(e0,e1) = e2
      | op(e0,e1) = e3 )
    & ( op(e0,e2) = e0
      | op(e0,e2) = e1
      | op(e0,e2) = e2
      | op(e0,e2) = e3 )
    & ( op(e0,e3) = e0
      | op(e0,e3) = e1
      | op(e0,e3) = e2
      | op(e0,e3) = e3 )
    & ( op(e1,e0) = e0
      | op(e1,e0) = e1
      | op(e1,e0) = e2
      | op(e1,e0) = e3 )
    & ( op(e1,e1) = e0
      | op(e1,e1) = e1
      | op(e1,e1) = e2
      | op(e1,e1) = e3 )
    & ( op(e1,e2) = e0
      | op(e1,e2) = e1
      | op(e1,e2) = e2
      | op(e1,e2) = e3 )
    & ( op(e1,e3) = e0
      | op(e1,e3) = e1
      | op(e1,e3) = e2
      | op(e1,e3) = e3 )
    & ( op(e2,e0) = e0
      | op(e2,e0) = e1
      | op(e2,e0) = e2
      | op(e2,e0) = e3 )
    & ( op(e2,e1) = e0
      | op(e2,e1) = e1
      | op(e2,e1) = e2
      | op(e2,e1) = e3 )
    & ( op(e2,e2) = e0
      | op(e2,e2) = e1
      | op(e2,e2) = e2
      | op(e2,e2) = e3 )
    & ( op(e2,e3) = e0
      | op(e2,e3) = e1
      | op(e2,e3) = e2
      | op(e2,e3) = e3 )
    & ( op(e3,e0) = e0
      | op(e3,e0) = e1
      | op(e3,e0) = e2
      | op(e3,e0) = e3 )
    & ( op(e3,e1) = e0
      | op(e3,e1) = e1
      | op(e3,e1) = e2
      | op(e3,e1) = e3 )
    & ( op(e3,e2) = e0
      | op(e3,e2) = e1
      | op(e3,e2) = e2
      | op(e3,e2) = e3 )
    & ( op(e3,e3) = e0
      | op(e3,e3) = e1
      | op(e3,e3) = e2
      | op(e3,e3) = e3 ) )).

fof(ax2,axiom,
    ( op(unit,e0) = e0
    & op(e0,unit) = e0
    & op(unit,e1) = e1
    & op(e1,unit) = e1
    & op(unit,e2) = e2
    & op(e2,unit) = e2
    & op(unit,e3) = e3
    & op(e3,unit) = e3
    & ( unit = e0
      | unit = e1
      | unit = e2
      | unit = e3 ) )).

fof(ax3,axiom,
    ( ( op(e0,e0) = e0
      | op(e0,e1) = e0
      | op(e0,e2) = e0
      | op(e0,e3) = e0 )
    & ( op(e0,e0) = e0
      | op(e1,e0) = e0
      | op(e2,e0) = e0
      | op(e3,e0) = e0 )
    & ( op(e0,e0) = e1
      | op(e0,e1) = e1
      | op(e0,e2) = e1
      | op(e0,e3) = e1 )
    & ( op(e0,e0) = e1
      | op(e1,e0) = e1
      | op(e2,e0) = e1
      | op(e3,e0) = e1 )
    & ( op(e0,e0) = e2
      | op(e0,e1) = e2
      | op(e0,e2) = e2
      | op(e0,e3) = e2 )
    & ( op(e0,e0) = e2
      | op(e1,e0) = e2
      | op(e2,e0) = e2
      | op(e3,e0) = e2 )
    & ( op(e0,e0) = e3
      | op(e0,e1) = e3
      | op(e0,e2) = e3
      | op(e0,e3) = e3 )
    & ( op(e0,e0) = e3
      | op(e1,e0) = e3
      | op(e2,e0) = e3
      | op(e3,e0) = e3 )
    & ( op(e1,e0) = e0
      | op(e1,e1) = e0
      | op(e1,e2) = e0
      | op(e1,e3) = e0 )
    & ( op(e0,e1) = e0
      | op(e1,e1) = e0
      | op(e2,e1) = e0
      | op(e3,e1) = e0 )
    & ( op(e1,e0) = e1
      | op(e1,e1) = e1
      | op(e1,e2) = e1
      | op(e1,e3) = e1 )
    & ( op(e0,e1) = e1
      | op(e1,e1) = e1
      | op(e2,e1) = e1
      | op(e3,e1) = e1 )
    & ( op(e1,e0) = e2
      | op(e1,e1) = e2
      | op(e1,e2) = e2
      | op(e1,e3) = e2 )
    & ( op(e0,e1) = e2
      | op(e1,e1) = e2
      | op(e2,e1) = e2
      | op(e3,e1) = e2 )
    & ( op(e1,e0) = e3
      | op(e1,e1) = e3
      | op(e1,e2) = e3
      | op(e1,e3) = e3 )
    & ( op(e0,e1) = e3
      | op(e1,e1) = e3
      | op(e2,e1) = e3
      | op(e3,e1) = e3 )
    & ( op(e2,e0) = e0
      | op(e2,e1) = e0
      | op(e2,e2) = e0
      | op(e2,e3) = e0 )
    & ( op(e0,e2) = e0
      | op(e1,e2) = e0
      | op(e2,e2) = e0
      | op(e3,e2) = e0 )
    & ( op(e2,e0) = e1
      | op(e2,e1) = e1
      | op(e2,e2) = e1
      | op(e2,e3) = e1 )
    & ( op(e0,e2) = e1
      | op(e1,e2) = e1
      | op(e2,e2) = e1
      | op(e3,e2) = e1 )
    & ( op(e2,e0) = e2
      | op(e2,e1) = e2
      | op(e2,e2) = e2
      | op(e2,e3) = e2 )
    & ( op(e0,e2) = e2
      | op(e1,e2) = e2
      | op(e2,e2) = e2
      | op(e3,e2) = e2 )
    & ( op(e2,e0) = e3
      | op(e2,e1) = e3
      | op(e2,e2) = e3
      | op(e2,e3) = e3 )
    & ( op(e0,e2) = e3
      | op(e1,e2) = e3
      | op(e2,e2) = e3
      | op(e3,e2) = e3 )
    & ( op(e3,e0) = e0
      | op(e3,e1) = e0
      | op(e3,e2) = e0
      | op(e3,e3) = e0 )
    & ( op(e0,e3) = e0
      | op(e1,e3) = e0
      | op(e2,e3) = e0
      | op(e3,e3) = e0 )
    & ( op(e3,e0) = e1
      | op(e3,e1) = e1
      | op(e3,e2) = e1
      | op(e3,e3) = e1 )
    & ( op(e0,e3) = e1
      | op(e1,e3) = e1
      | op(e2,e3) = e1
      | op(e3,e3) = e1 )
    & ( op(e3,e0) = e2
      | op(e3,e1) = e2
      | op(e3,e2) = e2
      | op(e3,e3) = e2 )
    & ( op(e0,e3) = e2
      | op(e1,e3) = e2
      | op(e2,e3) = e2
      | op(e3,e3) = e2 )
    & ( op(e3,e0) = e3
      | op(e3,e1) = e3
      | op(e3,e2) = e3
      | op(e3,e3) = e3 )
    & ( op(e0,e3) = e3
      | op(e1,e3) = e3
      | op(e2,e3) = e3
      | op(e3,e3) = e3 ) )).

fof(ax4,axiom,
    ( op(e0,e0) != op(e1,e0)
    & op(e0,e0) != op(e2,e0)
    & op(e0,e0) != op(e3,e0)
    & op(e1,e0) != op(e2,e0)
    & op(e1,e0) != op(e3,e0)
    & op(e2,e0) != op(e3,e0)
    & op(e0,e1) != op(e1,e1)
    & op(e0,e1) != op(e2,e1)
    & op(e0,e1) != op(e3,e1)
    & op(e1,e1) != op(e2,e1)
    & op(e1,e1) != op(e3,e1)
    & op(e2,e1) != op(e3,e1)
    & op(e0,e2) != op(e1,e2)
    & op(e0,e2) != op(e2,e2)
    & op(e0,e2) != op(e3,e2)
    & op(e1,e2) != op(e2,e2)
    & op(e1,e2) != op(e3,e2)
    & op(e2,e2) != op(e3,e2)
    & op(e0,e3) != op(e1,e3)
    & op(e0,e3) != op(e2,e3)
    & op(e0,e3) != op(e3,e3)
    & op(e1,e3) != op(e2,e3)
    & op(e1,e3) != op(e3,e3)
    & op(e2,e3) != op(e3,e3)
    & op(e0,e0) != op(e0,e1)
    & op(e0,e0) != op(e0,e2)
    & op(e0,e0) != op(e0,e3)
    & op(e0,e1) != op(e0,e2)
    & op(e0,e1) != op(e0,e3)
    & op(e0,e2) != op(e0,e3)
    & op(e1,e0) != op(e1,e1)
    & op(e1,e0) != op(e1,e2)
    & op(e1,e0) != op(e1,e3)
    & op(e1,e1) != op(e1,e2)
    & op(e1,e1) != op(e1,e3)
    & op(e1,e2) != op(e1,e3)
    & op(e2,e0) != op(e2,e1)
    & op(e2,e0) != op(e2,e2)
    & op(e2,e0) != op(e2,e3)
    & op(e2,e1) != op(e2,e2)
    & op(e2,e1) != op(e2,e3)
    & op(e2,e2) != op(e2,e3)
    & op(e3,e0) != op(e3,e1)
    & op(e3,e0) != op(e3,e2)
    & op(e3,e0) != op(e3,e3)
    & op(e3,e1) != op(e3,e2)
    & op(e3,e1) != op(e3,e3)
    & op(e3,e2) != op(e3,e3) )).

fof(ax5,axiom,
    ( e0 != e1
    & e0 != e2
    & e0 != e3
    & e1 != e2
    & e1 != e3
    & e2 != e3 )).

fof(ax6,axiom,
    ( ~ ( ( op(e0,e0) = e0
          & op(e1,e1) = e0
          & op(e2,e2) = e0
          & op(e3,e3) = e0 )
        | ( op(e0,e0) = e1
          & op(e1,e1) = e1
          & op(e2,e2) = e1
          & op(e3,e3) = e1 )
        | ( op(e0,e0) = e2
          & op(e1,e1) = e2
          & op(e2,e2) = e2
          & op(e3,e3) = e2 )
        | ( op(e0,e0) = e3
          & op(e1,e1) = e3
          & op(e2,e2) = e3
          & op(e3,e3) = e3 ) ) )).

fof(ax7,axiom,
    ( ~ ( e0 = op(e1,op(e1,op(e1,e1)))
        & e2 = op(e1,op(e1,e1))
        & e3 = op(e1,e1) ) )).

fof(ax8,axiom,
    ( ~ ( e0 = op(e1,op(e1,op(e1,e1)))
        & e3 = op(e1,op(e1,e1))
        & e2 = op(e1,e1) ) )).

fof(ax9,axiom,
    ( ~ ( e0 = op(e2,op(e2,op(e2,e2)))
        & e1 = op(e2,op(e2,e2))
        & e3 = op(e2,e2) ) )).

fof(ax10,axiom,
    ( ~ ( e0 = op(e2,op(e2,op(e2,e2)))
        & e3 = op(e2,op(e2,e2))
        & e1 = op(e2,e2) ) )).

fof(ax11,axiom,
    ( ~ ( e0 = op(e3,op(e3,op(e3,e3)))
        & e1 = op(e3,op(e3,e3))
        & e2 = op(e3,e3) ) )).

fof(ax12,axiom,
    ( ~ ( e0 = op(e3,op(e3,op(e3,e3)))
        & e2 = op(e3,op(e3,e3))
        & e1 = op(e3,e3) ) )).

fof(ax13,axiom,
    ( ~ ( e1 = op(e0,op(e0,op(e0,e0)))
        & e2 = op(e0,op(e0,e0))
        & e3 = op(e0,e0) ) )).

fof(ax14,axiom,
    ( ~ ( e1 = op(e0,op(e0,op(e0,e0)))
        & e3 = op(e0,op(e0,e0))
        & e2 = op(e0,e0) ) )).

fof(ax15,axiom,
    ( ~ ( e1 = op(e2,op(e2,op(e2,e2)))
        & e0 = op(e2,op(e2,e2))
        & e3 = op(e2,e2) ) )).

fof(ax16,axiom,
    ( ~ ( e1 = op(e2,op(e2,op(e2,e2)))
        & e3 = op(e2,op(e2,e2))
        & e0 = op(e2,e2) ) )).

fof(ax17,axiom,
    ( ~ ( e1 = op(e3,op(e3,op(e3,e3)))
        & e0 = op(e3,op(e3,e3))
        & e2 = op(e3,e3) ) )).

fof(ax18,axiom,
    ( ~ ( e1 = op(e3,op(e3,op(e3,e3)))
        & e2 = op(e3,op(e3,e3))
        & e0 = op(e3,e3) ) )).

fof(ax19,axiom,
    ( ~ ( e2 = op(e0,op(e0,op(e0,e0)))
        & e1 = op(e0,op(e0,e0))
        & e3 = op(e0,e0) ) )).

fof(ax20,axiom,
    ( ~ ( e2 = op(e0,op(e0,op(e0,e0)))
        & e3 = op(e0,op(e0,e0))
        & e1 = op(e0,e0) ) )).

fof(ax21,axiom,
    ( ~ ( e2 = op(e1,op(e1,op(e1,e1)))
        & e0 = op(e1,op(e1,e1))
        & e3 = op(e1,e1) ) )).

fof(ax22,axiom,
    ( ~ ( e2 = op(e1,op(e1,op(e1,e1)))
        & e3 = op(e1,op(e1,e1))
        & e0 = op(e1,e1) ) )).

fof(ax23,axiom,
    ( ~ ( e2 = op(e3,op(e3,op(e3,e3)))
        & e0 = op(e3,op(e3,e3))
        & e1 = op(e3,e3) ) )).

fof(ax24,axiom,
    ( ~ ( e2 = op(e3,op(e3,op(e3,e3)))
        & e1 = op(e3,op(e3,e3))
        & e0 = op(e3,e3) ) )).

fof(ax25,axiom,
    ( ~ ( e3 = op(e0,op(e0,op(e0,e0)))
        & e1 = op(e0,op(e0,e0))
        & e2 = op(e0,e0) ) )).

fof(ax26,axiom,
    ( ~ ( e3 = op(e0,op(e0,op(e0,e0)))
        & e2 = op(e0,op(e0,e0))
        & e1 = op(e0,e0) ) )).

fof(ax27,axiom,
    ( ~ ( e3 = op(e1,op(e1,op(e1,e1)))
        & e0 = op(e1,op(e1,e1))
        & e2 = op(e1,e1) ) )).

fof(ax28,axiom,
    ( ~ ( e3 = op(e1,op(e1,op(e1,e1)))
        & e2 = op(e1,op(e1,e1))
        & e0 = op(e1,e1) ) )).

fof(ax29,axiom,
    ( ~ ( e3 = op(e2,op(e2,op(e2,e2)))
        & e0 = op(e2,op(e2,e2))
        & e1 = op(e2,e2) ) )).

fof(ax30,axiom,
    ( ~ ( e3 = op(e2,op(e2,op(e2,e2)))
        & e1 = op(e2,op(e2,e2))
        & e0 = op(e2,e2) ) )).

%--------------------------------------------------------------------------
