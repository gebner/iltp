%--------------------------------------------------------------------------
% File     : ALG034+1 : ILTP v1.1.0
% Domain   : General Algebra
% Problem  : Groups 6: VERIFY-GEN-SYSES-PROBLEM-1
% Version  : Especial.
% English  : 

% Refs     : [Mei03] Meier (2003), Email to G.Sutcliffe
%          : [CM+04] Colton et al. (2004), Automatic Generation of Classifi
% Source   : [Mei03]
% Names    : 

% Status   : Theorem
% Rating   : 0.89 v3.1.0, 0.75 v2.7.0
%
% Status (intuit.) : Non-Theorem
% Rating (intuit.) : 0.50 v1.1
%
% Syntax   : Number of formulae    :  731 (   1 unit)
%            Number of atoms       : 4423 (4423 equality)
%            Maximal formula depth :  216 (   7 average)
%            Number of connectives : 4622 ( 930 ~  ; 215  |;3441  &)
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
    ( op(e0,e0) = op(e0,e0)
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
    & op(e5,e5) = op(e5,e5) )).

fof(ax12,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax13,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax14,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax15,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax16,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax17,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax18,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax19,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax20,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax21,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax22,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax23,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax24,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax25,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax26,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax27,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax28,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax29,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax30,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax31,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax32,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax33,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax34,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax35,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax36,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax37,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax38,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax39,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax40,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax41,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax42,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax43,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax44,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax45,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax46,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax47,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax48,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax49,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax50,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax51,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax52,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax53,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax54,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax55,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax56,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax57,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax58,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax59,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax60,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax61,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax62,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax63,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax64,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax65,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax66,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax67,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax68,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax69,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax70,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax71,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax72,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax73,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax74,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax75,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax76,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax77,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax78,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax79,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax80,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax81,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax82,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax83,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax84,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax85,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax86,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax87,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax88,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax89,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax90,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax91,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax92,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax93,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax94,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax95,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax96,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax97,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax98,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax99,axiom,
    ( ~ ( e0 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax100,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax101,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax102,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax103,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax104,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax105,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax106,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax107,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax108,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax109,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax110,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax111,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax112,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax113,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax114,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax115,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax116,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax117,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax118,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax119,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax120,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax121,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax122,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax123,axiom,
    ( ~ ( e0 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax124,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax125,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax126,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax127,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax128,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax129,axiom,
    ( ~ ( e0 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax130,axiom,
    ( ~ ( e0 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax131,axiom,
    ( ~ ( e0 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax132,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax133,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax134,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax135,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax136,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax137,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax138,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax139,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax140,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax141,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax142,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax143,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax144,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax145,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax146,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax147,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax148,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax149,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax150,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax151,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax152,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax153,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax154,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax155,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax156,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax157,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax158,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax159,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax160,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax161,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax162,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax163,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax164,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax165,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax166,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax167,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax168,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax169,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax170,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax171,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax172,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax173,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax174,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax175,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax176,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax177,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax178,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax179,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax180,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax181,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax182,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax183,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax184,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax185,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax186,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax187,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax188,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax189,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax190,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax191,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax192,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax193,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax194,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax195,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax196,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax197,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax198,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax199,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax200,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax201,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax202,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax203,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax204,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax205,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax206,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax207,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax208,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax209,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax210,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax211,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax212,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax213,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax214,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax215,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax216,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax217,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax218,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax219,axiom,
    ( ~ ( e1 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax220,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax221,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax222,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax223,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax224,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax225,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax226,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax227,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax228,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax229,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax230,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax231,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax232,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax233,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax234,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax235,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax236,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax237,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax238,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax239,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax240,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax241,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax242,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax243,axiom,
    ( ~ ( e1 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax244,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax245,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax246,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax247,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax248,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax249,axiom,
    ( ~ ( e1 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax250,axiom,
    ( ~ ( e1 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax251,axiom,
    ( ~ ( e1 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax252,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax253,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax254,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax255,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax256,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax257,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax258,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax259,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax260,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax261,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax262,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax263,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax264,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax265,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax266,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax267,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax268,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax269,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax270,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax271,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax272,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax273,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax274,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax275,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax276,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax277,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax278,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax279,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax280,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax281,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax282,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax283,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax284,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax285,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax286,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax287,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax288,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax289,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax290,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax291,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax292,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax293,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax294,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax295,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax296,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax297,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax298,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax299,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax300,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax301,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax302,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax303,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax304,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax305,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax306,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax307,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax308,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax309,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax310,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax311,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax312,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax313,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax314,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax315,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax316,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax317,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax318,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax319,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax320,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax321,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax322,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax323,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax324,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax325,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax326,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax327,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax328,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax329,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax330,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax331,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax332,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax333,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax334,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax335,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax336,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax337,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax338,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax339,axiom,
    ( ~ ( e2 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax340,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax341,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax342,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax343,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax344,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax345,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax346,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax347,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax348,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax349,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax350,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax351,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax352,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax353,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax354,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax355,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax356,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax357,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax358,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax359,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax360,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax361,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax362,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax363,axiom,
    ( ~ ( e2 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax364,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax365,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax366,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax367,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax368,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax369,axiom,
    ( ~ ( e2 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax370,axiom,
    ( ~ ( e2 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax371,axiom,
    ( ~ ( e2 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax372,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax373,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax374,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax375,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax376,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax377,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax378,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax379,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax380,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax381,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax382,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax383,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax384,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax385,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax386,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax387,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax388,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax389,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax390,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax391,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax392,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax393,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax394,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax395,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax396,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax397,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax398,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax399,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax400,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax401,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax402,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax403,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax404,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax405,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax406,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax407,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax408,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax409,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax410,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax411,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax412,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax413,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax414,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax415,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax416,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax417,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax418,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax419,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax420,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax421,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax422,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax423,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax424,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax425,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax426,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e5 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax427,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e4 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax428,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax429,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e4 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax430,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax431,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e5 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax432,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax433,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax434,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax435,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e4 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax436,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax437,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax438,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax439,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax440,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax441,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e5 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax442,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax443,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax444,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax445,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax446,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax447,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax448,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax449,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax450,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax451,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax452,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax453,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax454,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax455,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax456,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax457,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax458,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax459,axiom,
    ( ~ ( e3 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e4 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax460,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax461,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax462,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax463,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax464,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax465,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax466,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax467,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax468,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax469,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax470,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax471,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax472,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax473,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax474,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax475,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax476,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax477,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax478,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax479,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax480,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax481,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax482,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax483,axiom,
    ( ~ ( e3 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e5 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax484,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax485,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax486,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax487,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax488,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax489,axiom,
    ( ~ ( e3 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax490,axiom,
    ( ~ ( e3 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax491,axiom,
    ( ~ ( e3 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax492,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax493,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax494,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax495,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax496,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax497,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax498,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax499,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax500,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax501,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax502,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax503,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax504,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax505,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax506,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax507,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e0 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax508,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax509,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax510,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax511,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax512,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax513,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax514,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax515,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax516,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax517,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax518,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax519,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax520,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax521,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax522,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax523,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax524,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax525,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax526,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax527,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax528,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax529,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax530,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax531,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e1 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax532,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax533,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax534,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax535,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax536,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax537,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax538,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax539,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax540,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax541,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax542,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax543,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax544,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax545,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax546,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e5 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax547,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e3 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax548,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax549,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e3 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax550,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax551,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e5 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax552,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax553,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax554,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax555,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e2 = op(op(e5,e5),e5)
        & e3 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax556,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax557,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax558,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax559,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax560,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax561,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e5 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax562,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax563,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax564,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax565,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax566,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax567,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e0 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax568,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax569,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax570,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e5 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax571,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e2 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax572,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax573,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e1 = op(op(op(e5,e5),e5),e5)
        & e2 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax574,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax575,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e5 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax576,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e5 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax577,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e0 = op(e5,e5)
        & e1 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax578,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e5 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax579,axiom,
    ( ~ ( e4 = op(op(op(op(e5,e5),e5),e5),op(e5,e5))
        & e3 = op(op(e5,e5),e5)
        & e2 = op(op(op(e5,e5),e5),e5)
        & e1 = op(e5,e5)
        & e0 = op(op(op(op(e5,e5),e5),e5),e5) ) )).

fof(ax580,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e5 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax581,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e5 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax582,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax583,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax584,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax585,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e5 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax586,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e5 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax587,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e5 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax588,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax589,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax590,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax591,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax592,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax593,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax594,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax595,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax596,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax597,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax598,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax599,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax600,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax601,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax602,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax603,axiom,
    ( ~ ( e4 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e5 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax604,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax605,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax606,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax607,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax608,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax609,axiom,
    ( ~ ( e4 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e5 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax610,axiom,
    ( ~ ( e4 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e5 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax611,axiom,
    ( ~ ( e4 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e5 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax612,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax613,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax614,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax615,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax616,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax617,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax618,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax619,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax620,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax621,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax622,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax623,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax624,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax625,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax626,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax627,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e0 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax628,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax629,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax630,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax631,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax632,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax633,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e0 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax634,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e0 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax635,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e0 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax636,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax637,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax638,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax639,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax640,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax641,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax642,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax643,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax644,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax645,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax646,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax647,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax648,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax649,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax650,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax651,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e1 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax652,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax653,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax654,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax655,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax656,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax657,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e1 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax658,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e1 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax659,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e1 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax660,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax661,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax662,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax663,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax664,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax665,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax666,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e4 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax667,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e3 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax668,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax669,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e3 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax670,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax671,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e4 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax672,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax673,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax674,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax675,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e2 = op(op(e4,e4),e4)
        & e3 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax676,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax677,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax678,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax679,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax680,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax681,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e2 = op(op(e3,e3),e3)
        & e4 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax682,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e2 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax683,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e2 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax684,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax685,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax686,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax687,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e0 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax688,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax689,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax690,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e4 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax691,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e2 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax692,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax693,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e1 = op(op(op(e4,e4),e4),e4)
        & e2 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax694,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax695,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e4 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax696,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e4 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax697,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e0 = op(e4,e4)
        & e1 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax698,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e4 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax699,axiom,
    ( ~ ( e5 = op(op(op(op(e4,e4),e4),e4),op(e4,e4))
        & e3 = op(op(e4,e4),e4)
        & e2 = op(op(op(e4,e4),e4),e4)
        & e1 = op(e4,e4)
        & e0 = op(op(op(op(e4,e4),e4),e4),e4) ) )).

fof(ax700,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e4 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax701,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e4 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax702,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax703,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax704,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax705,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e3 = op(op(e2,e2),e2)
        & e4 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax706,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e3 = op(op(e0,e0),e0)
        & e4 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax707,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e3 = op(op(e1,e1),e1)
        & e4 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax708,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax709,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax710,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax711,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e0 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax712,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e0 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax713,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e0 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax714,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e3 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax715,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e2 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax716,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax717,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e1 = op(op(op(e3,e3),e3),e3)
        & e2 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax718,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e1 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax719,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e1 = op(op(op(e2,e2),e2),e2)
        & e3 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax720,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e3 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax721,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e0 = op(e3,e3)
        & e1 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax722,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e3 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax723,axiom,
    ( ~ ( e5 = op(op(op(op(e3,e3),e3),e3),op(e3,e3))
        & e4 = op(op(e3,e3),e3)
        & e2 = op(op(op(e3,e3),e3),e3)
        & e1 = op(e3,e3)
        & e0 = op(op(op(op(e3,e3),e3),e3),e3) ) )).

fof(ax724,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e2 = op(op(op(e0,e0),e0),e0)
        & e3 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax725,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e2 = op(op(op(e1,e1),e1),e1)
        & e3 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax726,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e0 = op(e1,e1)
        & e2 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

fof(ax727,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e0 = op(e2,e2)
        & e1 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax728,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e1 = op(e0,e0)
        & e2 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax729,axiom,
    ( ~ ( e5 = op(op(op(op(e2,e2),e2),e2),op(e2,e2))
        & e4 = op(op(e2,e2),e2)
        & e3 = op(op(op(e2,e2),e2),e2)
        & e1 = op(e2,e2)
        & e0 = op(op(op(op(e2,e2),e2),e2),e2) ) )).

fof(ax730,axiom,
    ( ~ ( e5 = op(op(op(op(e0,e0),e0),e0),op(e0,e0))
        & e4 = op(op(e0,e0),e0)
        & e3 = op(op(op(e0,e0),e0),e0)
        & e2 = op(e0,e0)
        & e1 = op(op(op(op(e0,e0),e0),e0),e0) ) )).

fof(ax731,axiom,
    ( ~ ( e5 = op(op(op(op(e1,e1),e1),e1),op(e1,e1))
        & e4 = op(op(e1,e1),e1)
        & e3 = op(op(op(e1,e1),e1),e1)
        & e2 = op(e1,e1)
        & e0 = op(op(op(op(e1,e1),e1),e1),e1) ) )).

%--------------------------------------------------------------------------
