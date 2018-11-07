%--------------------------------------------------------------------------
% File     : ALG028+1 : ILTP v1.1.0
% Domain   : General Algebra
% Problem  : Groups 6: CPROPS-PAIRWISE-EXCLUSIVE-PROBLEM-1
% Version  : Especial.
% English  : 

% Refs     : [Mei03] Meier (2003), Email to G.Sutcliffe
%          : [CM+04] Colton et al. (2004), Automatic Generation of Classifi
% Source   : [Mei03]
% Names    : 

% Status   : Theorem
% Rating   : 0.11 v2.7.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.25 v1.1
%
% Syntax   : Number of formulae    :   12 (   1 unit)
%            Number of atoms       :  864 ( 864 equality)
%            Maximal formula depth :  216 (  53 average)
%            Number of connectives : 1064 ( 212 ~  ; 215  |; 601  &)
%                                         (   0 <=>;  36 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    9 (   7 constant; 0-2 arity)
%            Number of variables   :    0 (   0 singleton;   0 !;   0 ?)
%            Maximal term depth    :    5 (   2 average)

% Comments : 
%--------------------------------------------------------------------------
fof(ax1,axiom,
    ( ( op(e0,e0) = e0
      | op(e0,e0) = e1
      | op(e0,e0) = e2
      | op(e0,e0) = e3
      | op(e0,e0) = e4
      | op(e0,e0) = e5 )
    & ( op(e0,e1) = e0
      | op(e0,e1) = e1
      | op(e0,e1) = e2
      | op(e0,e1) = e3
      | op(e0,e1) = e4
      | op(e0,e1) = e5 )
    & ( op(e0,e2) = e0
      | op(e0,e2) = e1
      | op(e0,e2) = e2
      | op(e0,e2) = e3
      | op(e0,e2) = e4
      | op(e0,e2) = e5 )
    & ( op(e0,e3) = e0
      | op(e0,e3) = e1
      | op(e0,e3) = e2
      | op(e0,e3) = e3
      | op(e0,e3) = e4
      | op(e0,e3) = e5 )
    & ( op(e0,e4) = e0
      | op(e0,e4) = e1
      | op(e0,e4) = e2
      | op(e0,e4) = e3
      | op(e0,e4) = e4
      | op(e0,e4) = e5 )
    & ( op(e0,e5) = e0
      | op(e0,e5) = e1
      | op(e0,e5) = e2
      | op(e0,e5) = e3
      | op(e0,e5) = e4
      | op(e0,e5) = e5 )
    & ( op(e1,e0) = e0
      | op(e1,e0) = e1
      | op(e1,e0) = e2
      | op(e1,e0) = e3
      | op(e1,e0) = e4
      | op(e1,e0) = e5 )
    & ( op(e1,e1) = e0
      | op(e1,e1) = e1
      | op(e1,e1) = e2
      | op(e1,e1) = e3
      | op(e1,e1) = e4
      | op(e1,e1) = e5 )
    & ( op(e1,e2) = e0
      | op(e1,e2) = e1
      | op(e1,e2) = e2
      | op(e1,e2) = e3
      | op(e1,e2) = e4
      | op(e1,e2) = e5 )
    & ( op(e1,e3) = e0
      | op(e1,e3) = e1
      | op(e1,e3) = e2
      | op(e1,e3) = e3
      | op(e1,e3) = e4
      | op(e1,e3) = e5 )
    & ( op(e1,e4) = e0
      | op(e1,e4) = e1
      | op(e1,e4) = e2
      | op(e1,e4) = e3
      | op(e1,e4) = e4
      | op(e1,e4) = e5 )
    & ( op(e1,e5) = e0
      | op(e1,e5) = e1
      | op(e1,e5) = e2
      | op(e1,e5) = e3
      | op(e1,e5) = e4
      | op(e1,e5) = e5 )
    & ( op(e2,e0) = e0
      | op(e2,e0) = e1
      | op(e2,e0) = e2
      | op(e2,e0) = e3
      | op(e2,e0) = e4
      | op(e2,e0) = e5 )
    & ( op(e2,e1) = e0
      | op(e2,e1) = e1
      | op(e2,e1) = e2
      | op(e2,e1) = e3
      | op(e2,e1) = e4
      | op(e2,e1) = e5 )
    & ( op(e2,e2) = e0
      | op(e2,e2) = e1
      | op(e2,e2) = e2
      | op(e2,e2) = e3
      | op(e2,e2) = e4
      | op(e2,e2) = e5 )
    & ( op(e2,e3) = e0
      | op(e2,e3) = e1
      | op(e2,e3) = e2
      | op(e2,e3) = e3
      | op(e2,e3) = e4
      | op(e2,e3) = e5 )
    & ( op(e2,e4) = e0
      | op(e2,e4) = e1
      | op(e2,e4) = e2
      | op(e2,e4) = e3
      | op(e2,e4) = e4
      | op(e2,e4) = e5 )
    & ( op(e2,e5) = e0
      | op(e2,e5) = e1
      | op(e2,e5) = e2
      | op(e2,e5) = e3
      | op(e2,e5) = e4
      | op(e2,e5) = e5 )
    & ( op(e3,e0) = e0
      | op(e3,e0) = e1
      | op(e3,e0) = e2
      | op(e3,e0) = e3
      | op(e3,e0) = e4
      | op(e3,e0) = e5 )
    & ( op(e3,e1) = e0
      | op(e3,e1) = e1
      | op(e3,e1) = e2
      | op(e3,e1) = e3
      | op(e3,e1) = e4
      | op(e3,e1) = e5 )
    & ( op(e3,e2) = e0
      | op(e3,e2) = e1
      | op(e3,e2) = e2
      | op(e3,e2) = e3
      | op(e3,e2) = e4
      | op(e3,e2) = e5 )
    & ( op(e3,e3) = e0
      | op(e3,e3) = e1
      | op(e3,e3) = e2
      | op(e3,e3) = e3
      | op(e3,e3) = e4
      | op(e3,e3) = e5 )
    & ( op(e3,e4) = e0
      | op(e3,e4) = e1
      | op(e3,e4) = e2
      | op(e3,e4) = e3
      | op(e3,e4) = e4
      | op(e3,e4) = e5 )
    & ( op(e3,e5) = e0
      | op(e3,e5) = e1
      | op(e3,e5) = e2
      | op(e3,e5) = e3
      | op(e3,e5) = e4
      | op(e3,e5) = e5 )
    & ( op(e4,e0) = e0
      | op(e4,e0) = e1
      | op(e4,e0) = e2
      | op(e4,e0) = e3
      | op(e4,e0) = e4
      | op(e4,e0) = e5 )
    & ( op(e4,e1) = e0
      | op(e4,e1) = e1
      | op(e4,e1) = e2
      | op(e4,e1) = e3
      | op(e4,e1) = e4
      | op(e4,e1) = e5 )
    & ( op(e4,e2) = e0
      | op(e4,e2) = e1
      | op(e4,e2) = e2
      | op(e4,e2) = e3
      | op(e4,e2) = e4
      | op(e4,e2) = e5 )
    & ( op(e4,e3) = e0
      | op(e4,e3) = e1
      | op(e4,e3) = e2
      | op(e4,e3) = e3
      | op(e4,e3) = e4
      | op(e4,e3) = e5 )
    & ( op(e4,e4) = e0
      | op(e4,e4) = e1
      | op(e4,e4) = e2
      | op(e4,e4) = e3
      | op(e4,e4) = e4
      | op(e4,e4) = e5 )
    & ( op(e4,e5) = e0
      | op(e4,e5) = e1
      | op(e4,e5) = e2
      | op(e4,e5) = e3
      | op(e4,e5) = e4
      | op(e4,e5) = e5 )
    & ( op(e5,e0) = e0
      | op(e5,e0) = e1
      | op(e5,e0) = e2
      | op(e5,e0) = e3
      | op(e5,e0) = e4
      | op(e5,e0) = e5 )
    & ( op(e5,e1) = e0
      | op(e5,e1) = e1
      | op(e5,e1) = e2
      | op(e5,e1) = e3
      | op(e5,e1) = e4
      | op(e5,e1) = e5 )
    & ( op(e5,e2) = e0
      | op(e5,e2) = e1
      | op(e5,e2) = e2
      | op(e5,e2) = e3
      | op(e5,e2) = e4
      | op(e5,e2) = e5 )
    & ( op(e5,e3) = e0
      | op(e5,e3) = e1
      | op(e5,e3) = e2
      | op(e5,e3) = e3
      | op(e5,e3) = e4
      | op(e5,e3) = e5 )
    & ( op(e5,e4) = e0
      | op(e5,e4) = e1
      | op(e5,e4) = e2
      | op(e5,e4) = e3
      | op(e5,e4) = e4
      | op(e5,e4) = e5 )
    & ( op(e5,e5) = e0
      | op(e5,e5) = e1
      | op(e5,e5) = e2
      | op(e5,e5) = e3
      | op(e5,e5) = e4
      | op(e5,e5) = e5 ) )).

fof(ax2,axiom,
    ( op(op(e0,e0),e0) = op(e0,op(e0,e0))
    & op(op(e0,e0),e1) = op(e0,op(e0,e1))
    & op(op(e0,e0),e2) = op(e0,op(e0,e2))
    & op(op(e0,e0),e3) = op(e0,op(e0,e3))
    & op(op(e0,e0),e4) = op(e0,op(e0,e4))
    & op(op(e0,e0),e5) = op(e0,op(e0,e5))
    & op(op(e0,e1),e0) = op(e0,op(e1,e0))
    & op(op(e0,e1),e1) = op(e0,op(e1,e1))
    & op(op(e0,e1),e2) = op(e0,op(e1,e2))
    & op(op(e0,e1),e3) = op(e0,op(e1,e3))
    & op(op(e0,e1),e4) = op(e0,op(e1,e4))
    & op(op(e0,e1),e5) = op(e0,op(e1,e5))
    & op(op(e0,e2),e0) = op(e0,op(e2,e0))
    & op(op(e0,e2),e1) = op(e0,op(e2,e1))
    & op(op(e0,e2),e2) = op(e0,op(e2,e2))
    & op(op(e0,e2),e3) = op(e0,op(e2,e3))
    & op(op(e0,e2),e4) = op(e0,op(e2,e4))
    & op(op(e0,e2),e5) = op(e0,op(e2,e5))
    & op(op(e0,e3),e0) = op(e0,op(e3,e0))
    & op(op(e0,e3),e1) = op(e0,op(e3,e1))
    & op(op(e0,e3),e2) = op(e0,op(e3,e2))
    & op(op(e0,e3),e3) = op(e0,op(e3,e3))
    & op(op(e0,e3),e4) = op(e0,op(e3,e4))
    & op(op(e0,e3),e5) = op(e0,op(e3,e5))
    & op(op(e0,e4),e0) = op(e0,op(e4,e0))
    & op(op(e0,e4),e1) = op(e0,op(e4,e1))
    & op(op(e0,e4),e2) = op(e0,op(e4,e2))
    & op(op(e0,e4),e3) = op(e0,op(e4,e3))
    & op(op(e0,e4),e4) = op(e0,op(e4,e4))
    & op(op(e0,e4),e5) = op(e0,op(e4,e5))
    & op(op(e0,e5),e0) = op(e0,op(e5,e0))
    & op(op(e0,e5),e1) = op(e0,op(e5,e1))
    & op(op(e0,e5),e2) = op(e0,op(e5,e2))
    & op(op(e0,e5),e3) = op(e0,op(e5,e3))
    & op(op(e0,e5),e4) = op(e0,op(e5,e4))
    & op(op(e0,e5),e5) = op(e0,op(e5,e5))
    & op(op(e1,e0),e0) = op(e1,op(e0,e0))
    & op(op(e1,e0),e1) = op(e1,op(e0,e1))
    & op(op(e1,e0),e2) = op(e1,op(e0,e2))
    & op(op(e1,e0),e3) = op(e1,op(e0,e3))
    & op(op(e1,e0),e4) = op(e1,op(e0,e4))
    & op(op(e1,e0),e5) = op(e1,op(e0,e5))
    & op(op(e1,e1),e0) = op(e1,op(e1,e0))
    & op(op(e1,e1),e1) = op(e1,op(e1,e1))
    & op(op(e1,e1),e2) = op(e1,op(e1,e2))
    & op(op(e1,e1),e3) = op(e1,op(e1,e3))
    & op(op(e1,e1),e4) = op(e1,op(e1,e4))
    & op(op(e1,e1),e5) = op(e1,op(e1,e5))
    & op(op(e1,e2),e0) = op(e1,op(e2,e0))
    & op(op(e1,e2),e1) = op(e1,op(e2,e1))
    & op(op(e1,e2),e2) = op(e1,op(e2,e2))
    & op(op(e1,e2),e3) = op(e1,op(e2,e3))
    & op(op(e1,e2),e4) = op(e1,op(e2,e4))
    & op(op(e1,e2),e5) = op(e1,op(e2,e5))
    & op(op(e1,e3),e0) = op(e1,op(e3,e0))
    & op(op(e1,e3),e1) = op(e1,op(e3,e1))
    & op(op(e1,e3),e2) = op(e1,op(e3,e2))
    & op(op(e1,e3),e3) = op(e1,op(e3,e3))
    & op(op(e1,e3),e4) = op(e1,op(e3,e4))
    & op(op(e1,e3),e5) = op(e1,op(e3,e5))
    & op(op(e1,e4),e0) = op(e1,op(e4,e0))
    & op(op(e1,e4),e1) = op(e1,op(e4,e1))
    & op(op(e1,e4),e2) = op(e1,op(e4,e2))
    & op(op(e1,e4),e3) = op(e1,op(e4,e3))
    & op(op(e1,e4),e4) = op(e1,op(e4,e4))
    & op(op(e1,e4),e5) = op(e1,op(e4,e5))
    & op(op(e1,e5),e0) = op(e1,op(e5,e0))
    & op(op(e1,e5),e1) = op(e1,op(e5,e1))
    & op(op(e1,e5),e2) = op(e1,op(e5,e2))
    & op(op(e1,e5),e3) = op(e1,op(e5,e3))
    & op(op(e1,e5),e4) = op(e1,op(e5,e4))
    & op(op(e1,e5),e5) = op(e1,op(e5,e5))
    & op(op(e2,e0),e0) = op(e2,op(e0,e0))
    & op(op(e2,e0),e1) = op(e2,op(e0,e1))
    & op(op(e2,e0),e2) = op(e2,op(e0,e2))
    & op(op(e2,e0),e3) = op(e2,op(e0,e3))
    & op(op(e2,e0),e4) = op(e2,op(e0,e4))
    & op(op(e2,e0),e5) = op(e2,op(e0,e5))
    & op(op(e2,e1),e0) = op(e2,op(e1,e0))
    & op(op(e2,e1),e1) = op(e2,op(e1,e1))
    & op(op(e2,e1),e2) = op(e2,op(e1,e2))
    & op(op(e2,e1),e3) = op(e2,op(e1,e3))
    & op(op(e2,e1),e4) = op(e2,op(e1,e4))
    & op(op(e2,e1),e5) = op(e2,op(e1,e5))
    & op(op(e2,e2),e0) = op(e2,op(e2,e0))
    & op(op(e2,e2),e1) = op(e2,op(e2,e1))
    & op(op(e2,e2),e2) = op(e2,op(e2,e2))
    & op(op(e2,e2),e3) = op(e2,op(e2,e3))
    & op(op(e2,e2),e4) = op(e2,op(e2,e4))
    & op(op(e2,e2),e5) = op(e2,op(e2,e5))
    & op(op(e2,e3),e0) = op(e2,op(e3,e0))
    & op(op(e2,e3),e1) = op(e2,op(e3,e1))
    & op(op(e2,e3),e2) = op(e2,op(e3,e2))
    & op(op(e2,e3),e3) = op(e2,op(e3,e3))
    & op(op(e2,e3),e4) = op(e2,op(e3,e4))
    & op(op(e2,e3),e5) = op(e2,op(e3,e5))
    & op(op(e2,e4),e0) = op(e2,op(e4,e0))
    & op(op(e2,e4),e1) = op(e2,op(e4,e1))
    & op(op(e2,e4),e2) = op(e2,op(e4,e2))
    & op(op(e2,e4),e3) = op(e2,op(e4,e3))
    & op(op(e2,e4),e4) = op(e2,op(e4,e4))
    & op(op(e2,e4),e5) = op(e2,op(e4,e5))
    & op(op(e2,e5),e0) = op(e2,op(e5,e0))
    & op(op(e2,e5),e1) = op(e2,op(e5,e1))
    & op(op(e2,e5),e2) = op(e2,op(e5,e2))
    & op(op(e2,e5),e3) = op(e2,op(e5,e3))
    & op(op(e2,e5),e4) = op(e2,op(e5,e4))
    & op(op(e2,e5),e5) = op(e2,op(e5,e5))
    & op(op(e3,e0),e0) = op(e3,op(e0,e0))
    & op(op(e3,e0),e1) = op(e3,op(e0,e1))
    & op(op(e3,e0),e2) = op(e3,op(e0,e2))
    & op(op(e3,e0),e3) = op(e3,op(e0,e3))
    & op(op(e3,e0),e4) = op(e3,op(e0,e4))
    & op(op(e3,e0),e5) = op(e3,op(e0,e5))
    & op(op(e3,e1),e0) = op(e3,op(e1,e0))
    & op(op(e3,e1),e1) = op(e3,op(e1,e1))
    & op(op(e3,e1),e2) = op(e3,op(e1,e2))
    & op(op(e3,e1),e3) = op(e3,op(e1,e3))
    & op(op(e3,e1),e4) = op(e3,op(e1,e4))
    & op(op(e3,e1),e5) = op(e3,op(e1,e5))
    & op(op(e3,e2),e0) = op(e3,op(e2,e0))
    & op(op(e3,e2),e1) = op(e3,op(e2,e1))
    & op(op(e3,e2),e2) = op(e3,op(e2,e2))
    & op(op(e3,e2),e3) = op(e3,op(e2,e3))
    & op(op(e3,e2),e4) = op(e3,op(e2,e4))
    & op(op(e3,e2),e5) = op(e3,op(e2,e5))
    & op(op(e3,e3),e0) = op(e3,op(e3,e0))
    & op(op(e3,e3),e1) = op(e3,op(e3,e1))
    & op(op(e3,e3),e2) = op(e3,op(e3,e2))
    & op(op(e3,e3),e3) = op(e3,op(e3,e3))
    & op(op(e3,e3),e4) = op(e3,op(e3,e4))
    & op(op(e3,e3),e5) = op(e3,op(e3,e5))
    & op(op(e3,e4),e0) = op(e3,op(e4,e0))
    & op(op(e3,e4),e1) = op(e3,op(e4,e1))
    & op(op(e3,e4),e2) = op(e3,op(e4,e2))
    & op(op(e3,e4),e3) = op(e3,op(e4,e3))
    & op(op(e3,e4),e4) = op(e3,op(e4,e4))
    & op(op(e3,e4),e5) = op(e3,op(e4,e5))
    & op(op(e3,e5),e0) = op(e3,op(e5,e0))
    & op(op(e3,e5),e1) = op(e3,op(e5,e1))
    & op(op(e3,e5),e2) = op(e3,op(e5,e2))
    & op(op(e3,e5),e3) = op(e3,op(e5,e3))
    & op(op(e3,e5),e4) = op(e3,op(e5,e4))
    & op(op(e3,e5),e5) = op(e3,op(e5,e5))
    & op(op(e4,e0),e0) = op(e4,op(e0,e0))
    & op(op(e4,e0),e1) = op(e4,op(e0,e1))
    & op(op(e4,e0),e2) = op(e4,op(e0,e2))
    & op(op(e4,e0),e3) = op(e4,op(e0,e3))
    & op(op(e4,e0),e4) = op(e4,op(e0,e4))
    & op(op(e4,e0),e5) = op(e4,op(e0,e5))
    & op(op(e4,e1),e0) = op(e4,op(e1,e0))
    & op(op(e4,e1),e1) = op(e4,op(e1,e1))
    & op(op(e4,e1),e2) = op(e4,op(e1,e2))
    & op(op(e4,e1),e3) = op(e4,op(e1,e3))
    & op(op(e4,e1),e4) = op(e4,op(e1,e4))
    & op(op(e4,e1),e5) = op(e4,op(e1,e5))
    & op(op(e4,e2),e0) = op(e4,op(e2,e0))
    & op(op(e4,e2),e1) = op(e4,op(e2,e1))
    & op(op(e4,e2),e2) = op(e4,op(e2,e2))
    & op(op(e4,e2),e3) = op(e4,op(e2,e3))
    & op(op(e4,e2),e4) = op(e4,op(e2,e4))
    & op(op(e4,e2),e5) = op(e4,op(e2,e5))
    & op(op(e4,e3),e0) = op(e4,op(e3,e0))
    & op(op(e4,e3),e1) = op(e4,op(e3,e1))
    & op(op(e4,e3),e2) = op(e4,op(e3,e2))
    & op(op(e4,e3),e3) = op(e4,op(e3,e3))
    & op(op(e4,e3),e4) = op(e4,op(e3,e4))
    & op(op(e4,e3),e5) = op(e4,op(e3,e5))
    & op(op(e4,e4),e0) = op(e4,op(e4,e0))
    & op(op(e4,e4),e1) = op(e4,op(e4,e1))
    & op(op(e4,e4),e2) = op(e4,op(e4,e2))
    & op(op(e4,e4),e3) = op(e4,op(e4,e3))
    & op(op(e4,e4),e4) = op(e4,op(e4,e4))
    & op(op(e4,e4),e5) = op(e4,op(e4,e5))
    & op(op(e4,e5),e0) = op(e4,op(e5,e0))
    & op(op(e4,e5),e1) = op(e4,op(e5,e1))
    & op(op(e4,e5),e2) = op(e4,op(e5,e2))
    & op(op(e4,e5),e3) = op(e4,op(e5,e3))
    & op(op(e4,e5),e4) = op(e4,op(e5,e4))
    & op(op(e4,e5),e5) = op(e4,op(e5,e5))
    & op(op(e5,e0),e0) = op(e5,op(e0,e0))
    & op(op(e5,e0),e1) = op(e5,op(e0,e1))
    & op(op(e5,e0),e2) = op(e5,op(e0,e2))
    & op(op(e5,e0),e3) = op(e5,op(e0,e3))
    & op(op(e5,e0),e4) = op(e5,op(e0,e4))
    & op(op(e5,e0),e5) = op(e5,op(e0,e5))
    & op(op(e5,e1),e0) = op(e5,op(e1,e0))
    & op(op(e5,e1),e1) = op(e5,op(e1,e1))
    & op(op(e5,e1),e2) = op(e5,op(e1,e2))
    & op(op(e5,e1),e3) = op(e5,op(e1,e3))
    & op(op(e5,e1),e4) = op(e5,op(e1,e4))
    & op(op(e5,e1),e5) = op(e5,op(e1,e5))
    & op(op(e5,e2),e0) = op(e5,op(e2,e0))
    & op(op(e5,e2),e1) = op(e5,op(e2,e1))
    & op(op(e5,e2),e2) = op(e5,op(e2,e2))
    & op(op(e5,e2),e3) = op(e5,op(e2,e3))
    & op(op(e5,e2),e4) = op(e5,op(e2,e4))
    & op(op(e5,e2),e5) = op(e5,op(e2,e5))
    & op(op(e5,e3),e0) = op(e5,op(e3,e0))
    & op(op(e5,e3),e1) = op(e5,op(e3,e1))
    & op(op(e5,e3),e2) = op(e5,op(e3,e2))
    & op(op(e5,e3),e3) = op(e5,op(e3,e3))
    & op(op(e5,e3),e4) = op(e5,op(e3,e4))
    & op(op(e5,e3),e5) = op(e5,op(e3,e5))
    & op(op(e5,e4),e0) = op(e5,op(e4,e0))
    & op(op(e5,e4),e1) = op(e5,op(e4,e1))
    & op(op(e5,e4),e2) = op(e5,op(e4,e2))
    & op(op(e5,e4),e3) = op(e5,op(e4,e3))
    & op(op(e5,e4),e4) = op(e5,op(e4,e4))
    & op(op(e5,e4),e5) = op(e5,op(e4,e5))
    & op(op(e5,e5),e0) = op(e5,op(e5,e0))
    & op(op(e5,e5),e1) = op(e5,op(e5,e1))
    & op(op(e5,e5),e2) = op(e5,op(e5,e2))
    & op(op(e5,e5),e3) = op(e5,op(e5,e3))
    & op(op(e5,e5),e4) = op(e5,op(e5,e4))
    & op(op(e5,e5),e5) = op(e5,op(e5,e5)) )).

fof(ax3,axiom,
    ( op(unit,e0) = e0
    & op(e0,unit) = e0
    & op(unit,e1) = e1
    & op(e1,unit) = e1
    & op(unit,e2) = e2
    & op(e2,unit) = e2
    & op(unit,e3) = e3
    & op(e3,unit) = e3
    & op(unit,e4) = e4
    & op(e4,unit) = e4
    & op(unit,e5) = e5
    & op(e5,unit) = e5
    & ( unit = e0
      | unit = e1
      | unit = e2
      | unit = e3
      | unit = e4
      | unit = e5 ) )).

fof(ax4,axiom,
    ( op(e0,inv(e0)) = unit
    & op(inv(e0),e0) = unit
    & op(e1,inv(e1)) = unit
    & op(inv(e1),e1) = unit
    & op(e2,inv(e2)) = unit
    & op(inv(e2),e2) = unit
    & op(e3,inv(e3)) = unit
    & op(inv(e3),e3) = unit
    & op(e4,inv(e4)) = unit
    & op(inv(e4),e4) = unit
    & op(e5,inv(e5)) = unit
    & op(inv(e5),e5) = unit
    & ( inv(e0) = e0
      | inv(e0) = e1
      | inv(e0) = e2
      | inv(e0) = e3
      | inv(e0) = e4
      | inv(e0) = e5 )
    & ( inv(e1) = e0
      | inv(e1) = e1
      | inv(e1) = e2
      | inv(e1) = e3
      | inv(e1) = e4
      | inv(e1) = e5 )
    & ( inv(e2) = e0
      | inv(e2) = e1
      | inv(e2) = e2
      | inv(e2) = e3
      | inv(e2) = e4
      | inv(e2) = e5 )
    & ( inv(e3) = e0
      | inv(e3) = e1
      | inv(e3) = e2
      | inv(e3) = e3
      | inv(e3) = e4
      | inv(e3) = e5 )
    & ( inv(e4) = e0
      | inv(e4) = e1
      | inv(e4) = e2
      | inv(e4) = e3
      | inv(e4) = e4
      | inv(e4) = e5 )
    & ( inv(e5) = e0
      | inv(e5) = e1
      | inv(e5) = e2
      | inv(e5) = e3
      | inv(e5) = e4
      | inv(e5) = e5 ) )).

fof(ax5,axiom,
    ( inv(unit) = unit )).

fof(ax6,axiom,
    ( inv(inv(e0)) = e0
    & inv(inv(e1)) = e1
    & inv(inv(e2)) = e2
    & inv(inv(e3)) = e3
    & inv(inv(e4)) = e4
    & inv(inv(e5)) = e5 )).

fof(ax7,axiom,
    ( ( inv(e0) = e0
     => inv(e0) = e0 )
    & ( inv(e0) = e1
     => inv(e1) = e0 )
    & ( inv(e0) = e2
     => inv(e2) = e0 )
    & ( inv(e0) = e3
     => inv(e3) = e0 )
    & ( inv(e0) = e4
     => inv(e4) = e0 )
    & ( inv(e0) = e5
     => inv(e5) = e0 )
    & ( inv(e1) = e0
     => inv(e0) = e1 )
    & ( inv(e1) = e1
     => inv(e1) = e1 )
    & ( inv(e1) = e2
     => inv(e2) = e1 )
    & ( inv(e1) = e3
     => inv(e3) = e1 )
    & ( inv(e1) = e4
     => inv(e4) = e1 )
    & ( inv(e1) = e5
     => inv(e5) = e1 )
    & ( inv(e2) = e0
     => inv(e0) = e2 )
    & ( inv(e2) = e1
     => inv(e1) = e2 )
    & ( inv(e2) = e2
     => inv(e2) = e2 )
    & ( inv(e2) = e3
     => inv(e3) = e2 )
    & ( inv(e2) = e4
     => inv(e4) = e2 )
    & ( inv(e2) = e5
     => inv(e5) = e2 )
    & ( inv(e3) = e0
     => inv(e0) = e3 )
    & ( inv(e3) = e1
     => inv(e1) = e3 )
    & ( inv(e3) = e2
     => inv(e2) = e3 )
    & ( inv(e3) = e3
     => inv(e3) = e3 )
    & ( inv(e3) = e4
     => inv(e4) = e3 )
    & ( inv(e3) = e5
     => inv(e5) = e3 )
    & ( inv(e4) = e0
     => inv(e0) = e4 )
    & ( inv(e4) = e1
     => inv(e1) = e4 )
    & ( inv(e4) = e2
     => inv(e2) = e4 )
    & ( inv(e4) = e3
     => inv(e3) = e4 )
    & ( inv(e4) = e4
     => inv(e4) = e4 )
    & ( inv(e4) = e5
     => inv(e5) = e4 )
    & ( inv(e5) = e0
     => inv(e0) = e5 )
    & ( inv(e5) = e1
     => inv(e1) = e5 )
    & ( inv(e5) = e2
     => inv(e2) = e5 )
    & ( inv(e5) = e3
     => inv(e3) = e5 )
    & ( inv(e5) = e4
     => inv(e4) = e5 )
    & ( inv(e5) = e5
     => inv(e5) = e5 ) )).

fof(ax8,axiom,
    ( inv(e0) != inv(e1)
    & inv(e0) != inv(e2)
    & inv(e0) != inv(e3)
    & inv(e0) != inv(e4)
    & inv(e0) != inv(e5)
    & inv(e1) != inv(e2)
    & inv(e1) != inv(e3)
    & inv(e1) != inv(e4)
    & inv(e1) != inv(e5)
    & inv(e2) != inv(e3)
    & inv(e2) != inv(e4)
    & inv(e2) != inv(e5)
    & inv(e3) != inv(e4)
    & inv(e3) != inv(e5)
    & inv(e4) != inv(e5) )).

fof(ax9,axiom,
    ( op(e0,e0) != op(e1,e0)
    & op(e0,e0) != op(e2,e0)
    & op(e0,e0) != op(e3,e0)
    & op(e0,e0) != op(e4,e0)
    & op(e0,e0) != op(e5,e0)
    & op(e1,e0) != op(e2,e0)
    & op(e1,e0) != op(e3,e0)
    & op(e1,e0) != op(e4,e0)
    & op(e1,e0) != op(e5,e0)
    & op(e2,e0) != op(e3,e0)
    & op(e2,e0) != op(e4,e0)
    & op(e2,e0) != op(e5,e0)
    & op(e3,e0) != op(e4,e0)
    & op(e3,e0) != op(e5,e0)
    & op(e4,e0) != op(e5,e0)
    & op(e0,e1) != op(e1,e1)
    & op(e0,e1) != op(e2,e1)
    & op(e0,e1) != op(e3,e1)
    & op(e0,e1) != op(e4,e1)
    & op(e0,e1) != op(e5,e1)
    & op(e1,e1) != op(e2,e1)
    & op(e1,e1) != op(e3,e1)
    & op(e1,e1) != op(e4,e1)
    & op(e1,e1) != op(e5,e1)
    & op(e2,e1) != op(e3,e1)
    & op(e2,e1) != op(e4,e1)
    & op(e2,e1) != op(e5,e1)
    & op(e3,e1) != op(e4,e1)
    & op(e3,e1) != op(e5,e1)
    & op(e4,e1) != op(e5,e1)
    & op(e0,e2) != op(e1,e2)
    & op(e0,e2) != op(e2,e2)
    & op(e0,e2) != op(e3,e2)
    & op(e0,e2) != op(e4,e2)
    & op(e0,e2) != op(e5,e2)
    & op(e1,e2) != op(e2,e2)
    & op(e1,e2) != op(e3,e2)
    & op(e1,e2) != op(e4,e2)
    & op(e1,e2) != op(e5,e2)
    & op(e2,e2) != op(e3,e2)
    & op(e2,e2) != op(e4,e2)
    & op(e2,e2) != op(e5,e2)
    & op(e3,e2) != op(e4,e2)
    & op(e3,e2) != op(e5,e2)
    & op(e4,e2) != op(e5,e2)
    & op(e0,e3) != op(e1,e3)
    & op(e0,e3) != op(e2,e3)
    & op(e0,e3) != op(e3,e3)
    & op(e0,e3) != op(e4,e3)
    & op(e0,e3) != op(e5,e3)
    & op(e1,e3) != op(e2,e3)
    & op(e1,e3) != op(e3,e3)
    & op(e1,e3) != op(e4,e3)
    & op(e1,e3) != op(e5,e3)
    & op(e2,e3) != op(e3,e3)
    & op(e2,e3) != op(e4,e3)
    & op(e2,e3) != op(e5,e3)
    & op(e3,e3) != op(e4,e3)
    & op(e3,e3) != op(e5,e3)
    & op(e4,e3) != op(e5,e3)
    & op(e0,e4) != op(e1,e4)
    & op(e0,e4) != op(e2,e4)
    & op(e0,e4) != op(e3,e4)
    & op(e0,e4) != op(e4,e4)
    & op(e0,e4) != op(e5,e4)
    & op(e1,e4) != op(e2,e4)
    & op(e1,e4) != op(e3,e4)
    & op(e1,e4) != op(e4,e4)
    & op(e1,e4) != op(e5,e4)
    & op(e2,e4) != op(e3,e4)
    & op(e2,e4) != op(e4,e4)
    & op(e2,e4) != op(e5,e4)
    & op(e3,e4) != op(e4,e4)
    & op(e3,e4) != op(e5,e4)
    & op(e4,e4) != op(e5,e4)
    & op(e0,e5) != op(e1,e5)
    & op(e0,e5) != op(e2,e5)
    & op(e0,e5) != op(e3,e5)
    & op(e0,e5) != op(e4,e5)
    & op(e0,e5) != op(e5,e5)
    & op(e1,e5) != op(e2,e5)
    & op(e1,e5) != op(e3,e5)
    & op(e1,e5) != op(e4,e5)
    & op(e1,e5) != op(e5,e5)
    & op(e2,e5) != op(e3,e5)
    & op(e2,e5) != op(e4,e5)
    & op(e2,e5) != op(e5,e5)
    & op(e3,e5) != op(e4,e5)
    & op(e3,e5) != op(e5,e5)
    & op(e4,e5) != op(e5,e5)
    & op(e0,e0) != op(e0,e1)
    & op(e0,e0) != op(e0,e2)
    & op(e0,e0) != op(e0,e3)
    & op(e0,e0) != op(e0,e4)
    & op(e0,e0) != op(e0,e5)
    & op(e0,e1) != op(e0,e2)
    & op(e0,e1) != op(e0,e3)
    & op(e0,e1) != op(e0,e4)
    & op(e0,e1) != op(e0,e5)
    & op(e0,e2) != op(e0,e3)
    & op(e0,e2) != op(e0,e4)
    & op(e0,e2) != op(e0,e5)
    & op(e0,e3) != op(e0,e4)
    & op(e0,e3) != op(e0,e5)
    & op(e0,e4) != op(e0,e5)
    & op(e1,e0) != op(e1,e1)
    & op(e1,e0) != op(e1,e2)
    & op(e1,e0) != op(e1,e3)
    & op(e1,e0) != op(e1,e4)
    & op(e1,e0) != op(e1,e5)
    & op(e1,e1) != op(e1,e2)
    & op(e1,e1) != op(e1,e3)
    & op(e1,e1) != op(e1,e4)
    & op(e1,e1) != op(e1,e5)
    & op(e1,e2) != op(e1,e3)
    & op(e1,e2) != op(e1,e4)
    & op(e1,e2) != op(e1,e5)
    & op(e1,e3) != op(e1,e4)
    & op(e1,e3) != op(e1,e5)
    & op(e1,e4) != op(e1,e5)
    & op(e2,e0) != op(e2,e1)
    & op(e2,e0) != op(e2,e2)
    & op(e2,e0) != op(e2,e3)
    & op(e2,e0) != op(e2,e4)
    & op(e2,e0) != op(e2,e5)
    & op(e2,e1) != op(e2,e2)
    & op(e2,e1) != op(e2,e3)
    & op(e2,e1) != op(e2,e4)
    & op(e2,e1) != op(e2,e5)
    & op(e2,e2) != op(e2,e3)
    & op(e2,e2) != op(e2,e4)
    & op(e2,e2) != op(e2,e5)
    & op(e2,e3) != op(e2,e4)
    & op(e2,e3) != op(e2,e5)
    & op(e2,e4) != op(e2,e5)
    & op(e3,e0) != op(e3,e1)
    & op(e3,e0) != op(e3,e2)
    & op(e3,e0) != op(e3,e3)
    & op(e3,e0) != op(e3,e4)
    & op(e3,e0) != op(e3,e5)
    & op(e3,e1) != op(e3,e2)
    & op(e3,e1) != op(e3,e3)
    & op(e3,e1) != op(e3,e4)
    & op(e3,e1) != op(e3,e5)
    & op(e3,e2) != op(e3,e3)
    & op(e3,e2) != op(e3,e4)
    & op(e3,e2) != op(e3,e5)
    & op(e3,e3) != op(e3,e4)
    & op(e3,e3) != op(e3,e5)
    & op(e3,e4) != op(e3,e5)
    & op(e4,e0) != op(e4,e1)
    & op(e4,e0) != op(e4,e2)
    & op(e4,e0) != op(e4,e3)
    & op(e4,e0) != op(e4,e4)
    & op(e4,e0) != op(e4,e5)
    & op(e4,e1) != op(e4,e2)
    & op(e4,e1) != op(e4,e3)
    & op(e4,e1) != op(e4,e4)
    & op(e4,e1) != op(e4,e5)
    & op(e4,e2) != op(e4,e3)
    & op(e4,e2) != op(e4,e4)
    & op(e4,e2) != op(e4,e5)
    & op(e4,e3) != op(e4,e4)
    & op(e4,e3) != op(e4,e5)
    & op(e4,e4) != op(e4,e5)
    & op(e5,e0) != op(e5,e1)
    & op(e5,e0) != op(e5,e2)
    & op(e5,e0) != op(e5,e3)
    & op(e5,e0) != op(e5,e4)
    & op(e5,e0) != op(e5,e5)
    & op(e5,e1) != op(e5,e2)
    & op(e5,e1) != op(e5,e3)
    & op(e5,e1) != op(e5,e4)
    & op(e5,e1) != op(e5,e5)
    & op(e5,e2) != op(e5,e3)
    & op(e5,e2) != op(e5,e4)
    & op(e5,e2) != op(e5,e5)
    & op(e5,e3) != op(e5,e4)
    & op(e5,e3) != op(e5,e5)
    & op(e5,e4) != op(e5,e5) )).

fof(ax10,axiom,
    ( e0 != e1
    & e0 != e2
    & e0 != e3
    & e0 != e4
    & e0 != e5
    & e1 != e2
    & e1 != e3
    & e1 != e4
    & e1 != e5
    & e2 != e3
    & e2 != e4
    & e2 != e5
    & e3 != e4
    & e3 != e5
    & e4 != e5 )).

fof(ax11,axiom,
    ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
    & e1 = op(op(e4,e4),e4)
    & e2 = op(op(op(e4,e4),e4),e4)
    & e3 = op(e4,e4)
    & e5 = op(op(op(op(e4,e4),e4),e4),e4) )).

fof(co1,conjecture,
    ( ~ ( op(e0,e0) = op(e0,e0)
        & op(e0,e1) = op(e1,e0)
        & op(e0,e2) = op(e2,e0)
        & op(e0,e3) = op(e3,e0)
        & op(e0,e4) = op(e4,e0)
        & op(e0,e5) = op(e5,e0)
        & op(e1,e0) = op(e0,e1)
        & op(e1,e1) = op(e1,e1)
        & op(e1,e2) = op(e2,e1)
        & op(e1,e3) = op(e3,e1)
        & op(e1,e4) = op(e4,e1)
        & op(e1,e5) = op(e5,e1)
        & op(e2,e0) = op(e0,e2)
        & op(e2,e1) = op(e1,e2)
        & op(e2,e2) = op(e2,e2)
        & op(e2,e3) = op(e3,e2)
        & op(e2,e4) = op(e4,e2)
        & op(e2,e5) = op(e5,e2)
        & op(e3,e0) = op(e0,e3)
        & op(e3,e1) = op(e1,e3)
        & op(e3,e2) = op(e2,e3)
        & op(e3,e3) = op(e3,e3)
        & op(e3,e4) = op(e4,e3)
        & op(e3,e5) = op(e5,e3)
        & op(e4,e0) = op(e0,e4)
        & op(e4,e1) = op(e1,e4)
        & op(e4,e2) = op(e2,e4)
        & op(e4,e3) = op(e3,e4)
        & op(e4,e4) = op(e4,e4)
        & op(e4,e5) = op(e5,e4)
        & op(e5,e0) = op(e0,e5)
        & op(e5,e1) = op(e1,e5)
        & op(e5,e2) = op(e2,e5)
        & op(e5,e3) = op(e3,e5)
        & op(e5,e4) = op(e4,e5)
        & op(e5,e5) = op(e5,e5)
        & ~ ( op(e0,e0) = op(e0,e0)
            & op(e0,e1) = op(e1,e0)
            & op(e0,e2) = op(e2,e0)
            & op(e0,e3) = op(e3,e0)
            & op(e0,e4) = op(e4,e0)
            & op(e0,e5) = op(e5,e0)
            & op(e1,e0) = op(e0,e1)
            & op(e1,e1) = op(e1,e1)
            & op(e1,e2) = op(e2,e1)
            & op(e1,e3) = op(e3,e1)
            & op(e1,e4) = op(e4,e1)
            & op(e1,e5) = op(e5,e1)
            & op(e2,e0) = op(e0,e2)
            & op(e2,e1) = op(e1,e2)
            & op(e2,e2) = op(e2,e2)
            & op(e2,e3) = op(e3,e2)
            & op(e2,e4) = op(e4,e2)
            & op(e2,e5) = op(e5,e2)
            & op(e3,e0) = op(e0,e3)
            & op(e3,e1) = op(e1,e3)
            & op(e3,e2) = op(e2,e3)
            & op(e3,e3) = op(e3,e3)
            & op(e3,e4) = op(e4,e3)
            & op(e3,e5) = op(e5,e3)
            & op(e4,e0) = op(e0,e4)
            & op(e4,e1) = op(e1,e4)
            & op(e4,e2) = op(e2,e4)
            & op(e4,e3) = op(e3,e4)
            & op(e4,e4) = op(e4,e4)
            & op(e4,e5) = op(e5,e4)
            & op(e5,e0) = op(e0,e5)
            & op(e5,e1) = op(e1,e5)
            & op(e5,e2) = op(e2,e5)
            & op(e5,e3) = op(e3,e5)
            & op(e5,e4) = op(e4,e5)
            & op(e5,e5) = op(e5,e5) ) ) )).

%--------------------------------------------------------------------------