%--------------------------------------------------------------------------
% File     : ALG024+1 : ILTP v1.1.2
% Domain   : General Algebra
% Problem  : Groups 4: VERIFY-GEN-SYSES-PROBLEM-2
% Version  : Especial.
% English  : 

% Refs     : [Mei03] Meier (2003), Email to G.Sutcliffe
%          : [CM+04] Colton et al. (2004), Automatic Generation of Classifi
% Source   : [Mei03]
% Names    : 

% Status   : Unsatisfiable
% Rating   : 0.33 v3.1.0, 0.83 v2.7.0
%
% Status (intuit.) : Open (Problem negated)
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   35 (   1 unit)
%            Number of atoms       :  349 ( 349 equality)
%            Maximal formula depth :   64 (   9 average)
%            Number of connectives :  399 (  85 ~  ;  66  |; 232  &)
%                                         (   0 <=>;  16 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    7 (   5 constant; 0-2 arity)
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
    ( op(op(e0,e0),e0) = op(e0,op(e0,e0))
    & op(op(e0,e0),e1) = op(e0,op(e0,e1))
    & op(op(e0,e0),e2) = op(e0,op(e0,e2))
    & op(op(e0,e0),e3) = op(e0,op(e0,e3))
    & op(op(e0,e1),e0) = op(e0,op(e1,e0))
    & op(op(e0,e1),e1) = op(e0,op(e1,e1))
    & op(op(e0,e1),e2) = op(e0,op(e1,e2))
    & op(op(e0,e1),e3) = op(e0,op(e1,e3))
    & op(op(e0,e2),e0) = op(e0,op(e2,e0))
    & op(op(e0,e2),e1) = op(e0,op(e2,e1))
    & op(op(e0,e2),e2) = op(e0,op(e2,e2))
    & op(op(e0,e2),e3) = op(e0,op(e2,e3))
    & op(op(e0,e3),e0) = op(e0,op(e3,e0))
    & op(op(e0,e3),e1) = op(e0,op(e3,e1))
    & op(op(e0,e3),e2) = op(e0,op(e3,e2))
    & op(op(e0,e3),e3) = op(e0,op(e3,e3))
    & op(op(e1,e0),e0) = op(e1,op(e0,e0))
    & op(op(e1,e0),e1) = op(e1,op(e0,e1))
    & op(op(e1,e0),e2) = op(e1,op(e0,e2))
    & op(op(e1,e0),e3) = op(e1,op(e0,e3))
    & op(op(e1,e1),e0) = op(e1,op(e1,e0))
    & op(op(e1,e1),e1) = op(e1,op(e1,e1))
    & op(op(e1,e1),e2) = op(e1,op(e1,e2))
    & op(op(e1,e1),e3) = op(e1,op(e1,e3))
    & op(op(e1,e2),e0) = op(e1,op(e2,e0))
    & op(op(e1,e2),e1) = op(e1,op(e2,e1))
    & op(op(e1,e2),e2) = op(e1,op(e2,e2))
    & op(op(e1,e2),e3) = op(e1,op(e2,e3))
    & op(op(e1,e3),e0) = op(e1,op(e3,e0))
    & op(op(e1,e3),e1) = op(e1,op(e3,e1))
    & op(op(e1,e3),e2) = op(e1,op(e3,e2))
    & op(op(e1,e3),e3) = op(e1,op(e3,e3))
    & op(op(e2,e0),e0) = op(e2,op(e0,e0))
    & op(op(e2,e0),e1) = op(e2,op(e0,e1))
    & op(op(e2,e0),e2) = op(e2,op(e0,e2))
    & op(op(e2,e0),e3) = op(e2,op(e0,e3))
    & op(op(e2,e1),e0) = op(e2,op(e1,e0))
    & op(op(e2,e1),e1) = op(e2,op(e1,e1))
    & op(op(e2,e1),e2) = op(e2,op(e1,e2))
    & op(op(e2,e1),e3) = op(e2,op(e1,e3))
    & op(op(e2,e2),e0) = op(e2,op(e2,e0))
    & op(op(e2,e2),e1) = op(e2,op(e2,e1))
    & op(op(e2,e2),e2) = op(e2,op(e2,e2))
    & op(op(e2,e2),e3) = op(e2,op(e2,e3))
    & op(op(e2,e3),e0) = op(e2,op(e3,e0))
    & op(op(e2,e3),e1) = op(e2,op(e3,e1))
    & op(op(e2,e3),e2) = op(e2,op(e3,e2))
    & op(op(e2,e3),e3) = op(e2,op(e3,e3))
    & op(op(e3,e0),e0) = op(e3,op(e0,e0))
    & op(op(e3,e0),e1) = op(e3,op(e0,e1))
    & op(op(e3,e0),e2) = op(e3,op(e0,e2))
    & op(op(e3,e0),e3) = op(e3,op(e0,e3))
    & op(op(e3,e1),e0) = op(e3,op(e1,e0))
    & op(op(e3,e1),e1) = op(e3,op(e1,e1))
    & op(op(e3,e1),e2) = op(e3,op(e1,e2))
    & op(op(e3,e1),e3) = op(e3,op(e1,e3))
    & op(op(e3,e2),e0) = op(e3,op(e2,e0))
    & op(op(e3,e2),e1) = op(e3,op(e2,e1))
    & op(op(e3,e2),e2) = op(e3,op(e2,e2))
    & op(op(e3,e2),e3) = op(e3,op(e2,e3))
    & op(op(e3,e3),e0) = op(e3,op(e3,e0))
    & op(op(e3,e3),e1) = op(e3,op(e3,e1))
    & op(op(e3,e3),e2) = op(e3,op(e3,e2))
    & op(op(e3,e3),e3) = op(e3,op(e3,e3)) )).

fof(ax3,axiom,
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

fof(ax4,axiom,
    ( op(e0,inv(e0)) = unit
    & op(inv(e0),e0) = unit
    & op(e1,inv(e1)) = unit
    & op(inv(e1),e1) = unit
    & op(e2,inv(e2)) = unit
    & op(inv(e2),e2) = unit
    & op(e3,inv(e3)) = unit
    & op(inv(e3),e3) = unit
    & ( inv(e0) = e0
      | inv(e0) = e1
      | inv(e0) = e2
      | inv(e0) = e3 )
    & ( inv(e1) = e0
      | inv(e1) = e1
      | inv(e1) = e2
      | inv(e1) = e3 )
    & ( inv(e2) = e0
      | inv(e2) = e1
      | inv(e2) = e2
      | inv(e2) = e3 )
    & ( inv(e3) = e0
      | inv(e3) = e1
      | inv(e3) = e2
      | inv(e3) = e3 ) )).

fof(ax5,axiom,
    ( inv(unit) = unit )).

fof(ax6,axiom,
    ( inv(inv(e0)) = e0
    & inv(inv(e1)) = e1
    & inv(inv(e2)) = e2
    & inv(inv(e3)) = e3 )).

fof(ax7,axiom,
    ( ( inv(e0) = e0
     => inv(e0) = e0 )
    & ( inv(e0) = e1
     => inv(e1) = e0 )
    & ( inv(e0) = e2
     => inv(e2) = e0 )
    & ( inv(e0) = e3
     => inv(e3) = e0 )
    & ( inv(e1) = e0
     => inv(e0) = e1 )
    & ( inv(e1) = e1
     => inv(e1) = e1 )
    & ( inv(e1) = e2
     => inv(e2) = e1 )
    & ( inv(e1) = e3
     => inv(e3) = e1 )
    & ( inv(e2) = e0
     => inv(e0) = e2 )
    & ( inv(e2) = e1
     => inv(e1) = e2 )
    & ( inv(e2) = e2
     => inv(e2) = e2 )
    & ( inv(e2) = e3
     => inv(e3) = e2 )
    & ( inv(e3) = e0
     => inv(e0) = e3 )
    & ( inv(e3) = e1
     => inv(e1) = e3 )
    & ( inv(e3) = e2
     => inv(e2) = e3 )
    & ( inv(e3) = e3
     => inv(e3) = e3 ) )).

fof(ax8,axiom,
    ( inv(e0) != inv(e1)
    & inv(e0) != inv(e2)
    & inv(e0) != inv(e3)
    & inv(e1) != inv(e2)
    & inv(e1) != inv(e3)
    & inv(e2) != inv(e3) )).

fof(ax9,axiom,
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

fof(ax10,axiom,
    ( e0 != e1
    & e0 != e2
    & e0 != e3
    & e1 != e2
    & e1 != e3
    & e2 != e3 )).

fof(ax11,axiom,
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

fof(ax12,axiom,
    ( ~ ( e0 = op(op(e2,op(e2,e2)),e2)
        & e1 = op(e2,op(e2,e2))
        & e3 = op(e2,e2) ) )).

fof(ax13,axiom,
    ( ~ ( e0 = op(op(e3,op(e3,e3)),e3)
        & e1 = op(e3,op(e3,e3))
        & e2 = op(e3,e3) ) )).

fof(ax14,axiom,
    ( ~ ( e0 = op(op(e1,op(e1,e1)),e1)
        & e2 = op(e1,op(e1,e1))
        & e3 = op(e1,e1) ) )).

fof(ax15,axiom,
    ( ~ ( e0 = op(op(e3,op(e3,e3)),e3)
        & e2 = op(e3,op(e3,e3))
        & e1 = op(e3,e3) ) )).

fof(ax16,axiom,
    ( ~ ( e0 = op(op(e1,op(e1,e1)),e1)
        & e3 = op(e1,op(e1,e1))
        & e2 = op(e1,e1) ) )).

fof(ax17,axiom,
    ( ~ ( e0 = op(op(e2,op(e2,e2)),e2)
        & e3 = op(e2,op(e2,e2))
        & e1 = op(e2,e2) ) )).

fof(ax18,axiom,
    ( ~ ( e1 = op(op(e2,op(e2,e2)),e2)
        & e0 = op(e2,op(e2,e2))
        & e3 = op(e2,e2) ) )).

fof(ax19,axiom,
    ( ~ ( e1 = op(op(e3,op(e3,e3)),e3)
        & e0 = op(e3,op(e3,e3))
        & e2 = op(e3,e3) ) )).

fof(ax20,axiom,
    ( ~ ( e1 = op(op(e0,op(e0,e0)),e0)
        & e2 = op(e0,op(e0,e0))
        & e3 = op(e0,e0) ) )).

fof(ax21,axiom,
    ( ~ ( e1 = op(op(e3,op(e3,e3)),e3)
        & e2 = op(e3,op(e3,e3))
        & e0 = op(e3,e3) ) )).

fof(ax22,axiom,
    ( ~ ( e1 = op(op(e0,op(e0,e0)),e0)
        & e3 = op(e0,op(e0,e0))
        & e2 = op(e0,e0) ) )).

fof(ax23,axiom,
    ( ~ ( e1 = op(op(e2,op(e2,e2)),e2)
        & e3 = op(e2,op(e2,e2))
        & e0 = op(e2,e2) ) )).

fof(ax24,axiom,
    ( ~ ( e2 = op(op(e1,op(e1,e1)),e1)
        & e0 = op(e1,op(e1,e1))
        & e3 = op(e1,e1) ) )).

fof(ax25,axiom,
    ( ~ ( e2 = op(op(e3,op(e3,e3)),e3)
        & e0 = op(e3,op(e3,e3))
        & e1 = op(e3,e3) ) )).

fof(ax26,axiom,
    ( ~ ( e2 = op(op(e0,op(e0,e0)),e0)
        & e1 = op(e0,op(e0,e0))
        & e3 = op(e0,e0) ) )).

fof(ax27,axiom,
    ( ~ ( e2 = op(op(e3,op(e3,e3)),e3)
        & e1 = op(e3,op(e3,e3))
        & e0 = op(e3,e3) ) )).

fof(ax28,axiom,
    ( ~ ( e2 = op(op(e0,op(e0,e0)),e0)
        & e3 = op(e0,op(e0,e0))
        & e1 = op(e0,e0) ) )).

fof(ax29,axiom,
    ( ~ ( e2 = op(op(e1,op(e1,e1)),e1)
        & e3 = op(e1,op(e1,e1))
        & e0 = op(e1,e1) ) )).

fof(ax30,axiom,
    ( ~ ( e3 = op(op(e1,op(e1,e1)),e1)
        & e0 = op(e1,op(e1,e1))
        & e2 = op(e1,e1) ) )).

fof(ax31,axiom,
    ( ~ ( e3 = op(op(e2,op(e2,e2)),e2)
        & e0 = op(e2,op(e2,e2))
        & e1 = op(e2,e2) ) )).

fof(ax32,axiom,
    ( ~ ( e3 = op(op(e0,op(e0,e0)),e0)
        & e1 = op(e0,op(e0,e0))
        & e2 = op(e0,e0) ) )).

fof(ax33,axiom,
    ( ~ ( e3 = op(op(e2,op(e2,e2)),e2)
        & e1 = op(e2,op(e2,e2))
        & e0 = op(e2,e2) ) )).

fof(ax34,axiom,
    ( ~ ( e3 = op(op(e0,op(e0,e0)),e0)
        & e2 = op(e0,op(e0,e0))
        & e1 = op(e0,e0) ) )).

fof(ax35,axiom,
    ( ~ ( e3 = op(op(e1,op(e1,e1)),e1)
        & e2 = op(e1,op(e1,e1))
        & e0 = op(e1,e1) ) )).

%--------------------------------------------------------------------------
