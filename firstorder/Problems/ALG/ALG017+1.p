%--------------------------------------------------------------------------
% File     : ALG017+1 : ILTP v1.1.0
% Domain   : General Algebra
% Problem  : Groups 4: CPROPS-PAIRWISE-EXCLUSIVE-PROBLEM-1
% Version  : Especial.
% English  : 

% Refs     : [Mei03] Meier (2003), Email to G.Sutcliffe
%          : [CM+04] Colton et al. (2004), Automatic Generation of Classifi
% Source   : [Mei03]
% Names    : 

% Status   : Theorem
% Rating   : 0.00 v3.1.0, 0.11 v2.7.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.75 v1.1
%
% Syntax   : Number of formulae    :   12 (   1 unit)
%            Number of atoms       :  295 ( 295 equality)
%            Maximal formula depth :   64 (  17 average)
%            Number of connectives :  345 (  62 ~  ;  69  |; 198  &)
%                                         (   0 <=>;  16 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    1 (   0 propositional; 2-2 arity)
%            Number of functors    :    7 (   5 constant; 0-2 arity)
%            Number of variables   :    0 (   0 singleton;   0 !;   0 ?)
%            Maximal term depth    :    3 (   2 average)

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
    ( e0 = op(e3,e3)
    & e1 = op(e2,e3) )).

fof(co1,conjecture,
    ( ~ ( ( ( op(e0,e0) = e0
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
            & op(e3,e3) = e3 ) )
        & ~ ( ( op(e0,e0) = e0
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
              & op(e3,e3) = e3 ) ) ) )).

%--------------------------------------------------------------------------