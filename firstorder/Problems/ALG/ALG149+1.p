%--------------------------------------------------------------------------
% File     : ALG149+1 : ILTP v1.1.1
% Domain   : General Algebra
% Problem  : Quasigroups 4: PROP-SATS-GEN-SYS-59
% Version  : Especial.
% English  : 

% Refs     : [Mei03] Meier (2003), Email to G.Sutcliffe
%          : [CM+04] Colton et al. (2004), Automatic Generation of Classifi
% Source   : [Mei03]
% Names    : 

% Status   : Unsatisfiable
% Rating   : 0.67 v3.1.0, 0.83 v2.7.0
%
% Status (intuit.) : Open (Problem negated)
% Rating (intuit.) : 1.00 v1.1.0
%
% Syntax   : Number of formulae    :   29 (   0 unit)
%            Number of atoms       :  450 ( 450 equality)
%            Maximal formula depth :   49 (   8 average)
%            Number of connectives :  567 ( 146 ~  ; 211  |; 210  &)
%                                         (   0 <=>;   0 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    5 (   4 constant; 0-2 arity)
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

fof(ax3,axiom,
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

fof(ax4,axiom,
    ( e0 != e1
    & e0 != e2
    & e0 != e3
    & e1 != e2
    & e1 != e3
    & e2 != e3 )).

fof(ax5,axiom,
    ( op(e0,e0) != e0
    & op(e1,e1) != e1
    & op(e2,e2) != e2
    & op(e3,e3) != e3
    & ( ( ( op(e0,e0) != e0
          | op(e0,e0) = e0 )
        & ( op(e0,e1) != e0
          | op(e0,e0) = e1 )
        & ( op(e0,e2) != e0
          | op(e0,e0) = e2 )
        & ( op(e0,e3) != e0
          | op(e0,e0) = e3 )
        & ( op(e1,e0) != e0
          | op(e1,e0) = e0 )
        & ( op(e1,e1) != e0
          | op(e1,e0) = e1 )
        & ( op(e1,e2) != e0
          | op(e1,e0) = e2 )
        & ( op(e1,e3) != e0
          | op(e1,e0) = e3 )
        & ( op(e2,e0) != e0
          | op(e2,e0) = e0 )
        & ( op(e2,e1) != e0
          | op(e2,e0) = e1 )
        & ( op(e2,e2) != e0
          | op(e2,e0) = e2 )
        & ( op(e2,e3) != e0
          | op(e2,e0) = e3 )
        & ( op(e3,e0) != e0
          | op(e3,e0) = e0 )
        & ( op(e3,e1) != e0
          | op(e3,e0) = e1 )
        & ( op(e3,e2) != e0
          | op(e3,e0) = e2 )
        & ( op(e3,e3) != e0
          | op(e3,e0) = e3 ) )
      | ( ( op(e0,e0) != e1
          | op(e0,e1) = e0 )
        & ( op(e0,e1) != e1
          | op(e0,e1) = e1 )
        & ( op(e0,e2) != e1
          | op(e0,e1) = e2 )
        & ( op(e0,e3) != e1
          | op(e0,e1) = e3 )
        & ( op(e1,e0) != e1
          | op(e1,e1) = e0 )
        & ( op(e1,e1) != e1
          | op(e1,e1) = e1 )
        & ( op(e1,e2) != e1
          | op(e1,e1) = e2 )
        & ( op(e1,e3) != e1
          | op(e1,e1) = e3 )
        & ( op(e2,e0) != e1
          | op(e2,e1) = e0 )
        & ( op(e2,e1) != e1
          | op(e2,e1) = e1 )
        & ( op(e2,e2) != e1
          | op(e2,e1) = e2 )
        & ( op(e2,e3) != e1
          | op(e2,e1) = e3 )
        & ( op(e3,e0) != e1
          | op(e3,e1) = e0 )
        & ( op(e3,e1) != e1
          | op(e3,e1) = e1 )
        & ( op(e3,e2) != e1
          | op(e3,e1) = e2 )
        & ( op(e3,e3) != e1
          | op(e3,e1) = e3 ) )
      | ( ( op(e0,e0) != e2
          | op(e0,e2) = e0 )
        & ( op(e0,e1) != e2
          | op(e0,e2) = e1 )
        & ( op(e0,e2) != e2
          | op(e0,e2) = e2 )
        & ( op(e0,e3) != e2
          | op(e0,e2) = e3 )
        & ( op(e1,e0) != e2
          | op(e1,e2) = e0 )
        & ( op(e1,e1) != e2
          | op(e1,e2) = e1 )
        & ( op(e1,e2) != e2
          | op(e1,e2) = e2 )
        & ( op(e1,e3) != e2
          | op(e1,e2) = e3 )
        & ( op(e2,e0) != e2
          | op(e2,e2) = e0 )
        & ( op(e2,e1) != e2
          | op(e2,e2) = e1 )
        & ( op(e2,e2) != e2
          | op(e2,e2) = e2 )
        & ( op(e2,e3) != e2
          | op(e2,e2) = e3 )
        & ( op(e3,e0) != e2
          | op(e3,e2) = e0 )
        & ( op(e3,e1) != e2
          | op(e3,e2) = e1 )
        & ( op(e3,e2) != e2
          | op(e3,e2) = e2 )
        & ( op(e3,e3) != e2
          | op(e3,e2) = e3 ) )
      | ( ( op(e0,e0) != e3
          | op(e0,e3) = e0 )
        & ( op(e0,e1) != e3
          | op(e0,e3) = e1 )
        & ( op(e0,e2) != e3
          | op(e0,e3) = e2 )
        & ( op(e0,e3) != e3
          | op(e0,e3) = e3 )
        & ( op(e1,e0) != e3
          | op(e1,e3) = e0 )
        & ( op(e1,e1) != e3
          | op(e1,e3) = e1 )
        & ( op(e1,e2) != e3
          | op(e1,e3) = e2 )
        & ( op(e1,e3) != e3
          | op(e1,e3) = e3 )
        & ( op(e2,e0) != e3
          | op(e2,e3) = e0 )
        & ( op(e2,e1) != e3
          | op(e2,e3) = e1 )
        & ( op(e2,e2) != e3
          | op(e2,e3) = e2 )
        & ( op(e2,e3) != e3
          | op(e2,e3) = e3 )
        & ( op(e3,e0) != e3
          | op(e3,e3) = e0 )
        & ( op(e3,e1) != e3
          | op(e3,e3) = e1 )
        & ( op(e3,e2) != e3
          | op(e3,e3) = e2 )
        & ( op(e3,e3) != e3
          | op(e3,e3) = e3 ) ) ) )).

fof(ax6,axiom,
    ( ~ ( e1 = op(op(op(e0,e0),e0),e0)
        & e2 = op(op(e0,e0),e0)
        & e3 = op(e0,e0) ) )).

fof(ax7,axiom,
    ( ~ ( e1 = op(op(op(e0,e0),e0),e0)
        & e3 = op(op(e0,e0),e0)
        & e2 = op(e0,e0) ) )).

fof(ax8,axiom,
    ( ~ ( e2 = op(op(op(e0,e0),e0),e0)
        & e1 = op(op(e0,e0),e0)
        & e3 = op(e0,e0) ) )).

fof(ax9,axiom,
    ( ~ ( e2 = op(op(op(e0,e0),e0),e0)
        & e3 = op(op(e0,e0),e0)
        & e1 = op(e0,e0) ) )).

fof(ax10,axiom,
    ( ~ ( e3 = op(op(op(e0,e0),e0),e0)
        & e1 = op(op(e0,e0),e0)
        & e2 = op(e0,e0) ) )).

fof(ax11,axiom,
    ( ~ ( e3 = op(op(op(e0,e0),e0),e0)
        & e2 = op(op(e0,e0),e0)
        & e1 = op(e0,e0) ) )).

fof(ax12,axiom,
    ( ~ ( e0 = op(op(op(e1,e1),e1),e1)
        & e2 = op(op(e1,e1),e1)
        & e3 = op(e1,e1) ) )).

fof(ax13,axiom,
    ( ~ ( e0 = op(op(op(e1,e1),e1),e1)
        & e3 = op(op(e1,e1),e1)
        & e2 = op(e1,e1) ) )).

fof(ax14,axiom,
    ( ~ ( e2 = op(op(op(e1,e1),e1),e1)
        & e0 = op(op(e1,e1),e1)
        & e3 = op(e1,e1) ) )).

fof(ax15,axiom,
    ( ~ ( e2 = op(op(op(e1,e1),e1),e1)
        & e3 = op(op(e1,e1),e1)
        & e0 = op(e1,e1) ) )).

fof(ax16,axiom,
    ( ~ ( e3 = op(op(op(e1,e1),e1),e1)
        & e0 = op(op(e1,e1),e1)
        & e2 = op(e1,e1) ) )).

fof(ax17,axiom,
    ( ~ ( e3 = op(op(op(e1,e1),e1),e1)
        & e2 = op(op(e1,e1),e1)
        & e0 = op(e1,e1) ) )).

fof(ax18,axiom,
    ( ~ ( e0 = op(op(op(e2,e2),e2),e2)
        & e1 = op(op(e2,e2),e2)
        & e3 = op(e2,e2) ) )).

fof(ax19,axiom,
    ( ~ ( e0 = op(op(op(e2,e2),e2),e2)
        & e3 = op(op(e2,e2),e2)
        & e1 = op(e2,e2) ) )).

fof(ax20,axiom,
    ( ~ ( e1 = op(op(op(e2,e2),e2),e2)
        & e0 = op(op(e2,e2),e2)
        & e3 = op(e2,e2) ) )).

fof(ax21,axiom,
    ( ~ ( e1 = op(op(op(e2,e2),e2),e2)
        & e3 = op(op(e2,e2),e2)
        & e0 = op(e2,e2) ) )).

fof(ax22,axiom,
    ( ~ ( e3 = op(op(op(e2,e2),e2),e2)
        & e0 = op(op(e2,e2),e2)
        & e1 = op(e2,e2) ) )).

fof(ax23,axiom,
    ( ~ ( e3 = op(op(op(e2,e2),e2),e2)
        & e1 = op(op(e2,e2),e2)
        & e0 = op(e2,e2) ) )).

fof(ax24,axiom,
    ( ~ ( e0 = op(op(op(e3,e3),e3),e3)
        & e1 = op(op(e3,e3),e3)
        & e2 = op(e3,e3) ) )).

fof(ax25,axiom,
    ( ~ ( e0 = op(op(op(e3,e3),e3),e3)
        & e2 = op(op(e3,e3),e3)
        & e1 = op(e3,e3) ) )).

fof(ax26,axiom,
    ( ~ ( e1 = op(op(op(e3,e3),e3),e3)
        & e0 = op(op(e3,e3),e3)
        & e2 = op(e3,e3) ) )).

fof(ax27,axiom,
    ( ~ ( e1 = op(op(op(e3,e3),e3),e3)
        & e2 = op(op(e3,e3),e3)
        & e0 = op(e3,e3) ) )).

fof(ax28,axiom,
    ( ~ ( e2 = op(op(op(e3,e3),e3),e3)
        & e0 = op(op(e3,e3),e3)
        & e1 = op(e3,e3) ) )).

fof(ax29,axiom,
    ( ~ ( e2 = op(op(op(e3,e3),e3),e3)
        & e1 = op(op(e3,e3),e3)
        & e0 = op(e3,e3) ) )).

%--------------------------------------------------------------------------
