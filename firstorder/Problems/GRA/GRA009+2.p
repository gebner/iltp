%--------------------------------------------------------------------------
% File     : GRA009+2 : ILTP v1.1.0
% Domain   : Graph Theory
% Problem  : Maximal shortest path length in terms of triangles
% Version  : Reformulated > Especial.
% English  : In a complete graph with a shortest path P from V1 to V2 with
%            edges E1 and E2, E1 sequential to E2, there is an edge E3 such 
%            that E1, E2, and E3 form a triangle.

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : Theorem
% Rating   : 0.91 v3.1.0
%
% Status (intuit.) : Open
% Rating (intuit.) : 1.00 v1.1
%

% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   93 (  24 equality)
%            Maximal formula depth :   13 (   9 average)
%            Number of connectives :   82 (   6 ~  ;   3  |;  47  &)
%                                         (   3 <=>;  18 =>;   2 <=)
%                                         (   3 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   12 (   1 propositional; 0-3 arity)
%            Number of functors    :   12 (   6 constant; 0-2 arity)
%            Number of variables   :   70 (   0 singleton;  59 !;  11 ?)
%            Maximal term depth    :    3 (   1 average)

% Comments : 
%--------------------------------------------------------------------------
%----Include axioms for directed graphs and paths
include('Axioms/GRA001+0.ax').
%--------------------------------------------------------------------------
fof(triangle_defn,axiom,
    ( ! [E1,E2,E3] : 
        ( triangle(E1,E2,E3)
      <=> ( edge(E1)
          & edge(E2)
          & edge(E3)
          & sequential(E1,E2)
          & sequential(E2,E3)
          & sequential(E3,E1) ) ) )).

fof(length_defn,axiom,
    ( ! [V1,V2,P] : 
        ( path(V1,V2,P)
       => length_of(P) = number_of_in(edges,P) ) )).

fof(path_length_sequential_pairs,axiom,
    ( ! [V1,V2,P] : 
        ( path(V1,V2,P)
       => number_of_in(sequential_pairs,P) = minus(length_of(P),n1) ) )).

fof(sequential_pairs_and_triangles,axiom,
    ( ! [P,V1,V2] : 
        ( ( path(V1,V2,P)
          & ! [E1,E2] : 
              ( ( on_path(E1,P)
                & on_path(E2,P)
                & sequential(E1,E2) )
             => ? [E3] : triangle(E1,E2,E3) ) )
       => number_of_in(sequential_pairs,P) = number_of_in(triangles,P) ) )).

fof(graph_has_them_all,axiom,
    ( ! [Things,InThese] : less_or_equal(number_of_in(Things,InThese),number_of_in(Things,graph)) )).

fof(complete_means_path_means_stuff_means_triangles,conjecture,
    ( complete
   => ! [P,V1,V2] :
        ( shortest_path(V1,V2,P)
       => ! [E1,E2] :
            ( ( on_path(E1,P)
              & on_path(E2,P)
              & sequential(E1,E2) )
           => ? [E3] : triangle(E1,E2,E3) ) ) )).
%--------------------------------------------------------------------------
