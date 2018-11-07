%------------------------------------------------------------------------------
% File     : TOP022+1 : ILTP v1.1.1
% Domain   : Topology (Homotopy theory)
% Problem  : Homotopy groups
% Version  : [Shu96] axioms : Especial.
% English  :

% Refs     : [Mun75] Munkres (1975), Topology: A First Course
%          : [Sch96] Shults (1996), Email to Geoff Sutcliffe
% Source   : [Sch96]
% Names    :

% Status   : Theorem
% Rating   : 0.00 v3.1.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.00 v1.1.0
%
% Syntax   : Number of formulae    :    4 (   0 unit)
%            Number of atoms       :   12 (   0 equality)
%            Maximal formula depth :    7 (   6 average)
%            Number of connectives :    8 (   0 ~  ;   0  |;   3  &)
%                                         (   2 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    5 (   0 propositional; 1-4 arity)
%            Number of functors    :    3 (   1 constant; 0-2 arity)
%            Number of variables   :   14 (   0 singleton;  12 !;   2 ?)
%            Maximal term depth    :    2 (   1 average)

% Comments :
%------------------------------------------------------------------------------
%----What it means to be isomorphic
fof(isomorphic_groups_defn,axiom,
    ( ! [A,B] : 
        ( isomorphic_groups(A,B)
      <=> ? [F] : a_group_isomorphism_from_to(F,A,B) ) )).

%----The definition of path connectedness
fof(path_connected_defn,axiom,
    ( ! [X,X0,X1] : 
        ( path_connected(X)
      <=> ( ( a_member_of(X0,X)
            & a_member_of(X1,X) )
         => ? [P] : a_path_from_to_in(P,X0,X1,X) ) ) )).

%----Theorem 2.1 in Chapter 8 of Munkres
fof(m_8_2_1,axiom,
    ( ! [A,X0,X1,X] : 
        ( a_path_from_to_in(A,X0,X1,X)
       => a_group_isomorphism_from_to(alpha_hat(A),first_homotop_grp(X,X0),first_homotop_grp(X,X1)) ) )).

fof(m_8_2_2,conjecture,
    ( ! [X,X0,X1] : 
        ( ( path_connected(X)
          & a_member_of(X0,X)
          & a_member_of(X1,X) )
       => isomorphic_groups(first_homotop_grp(X,X0),first_homotop_grp(X,X1)) ) )).
%------------------------------------------------------------------------------
