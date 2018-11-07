%--------------------------------------------------------------------------
% File     : SWC128+1 : ILTP v1.1.1
% Domain   : Software Creation
% Problem  : cond_pr_works_always_x_filter_segment
% Version  : [Wei00] axioms : Biased.
% English  : Find components in a software library that match a given target
%            specification given in first-order logic. The components are
%            specified in first-order logic as well. The problem represents
%            a test of one library module specification against a target
%            specification.

% Refs     : [Wei00] Weidenbach (2000), Software Reuse of List Functions Ve
%          : [FSS98] Fischer et al. (1998), Deduction-Based Software Compon
% Source   : [Wei00]
% Names    : cond_pr_works_always_x_filter_segment [Wei00]

% Status   : Theorem
% Rating   : 0.27 v3.1.0, 0.78 v2.7.0, 0.67 v2.6.0, 0.83 v2.5.0, 1.00 v2.4.0
%
% Status (intuit.) : Theorem
% Rating (intuit.) : 0.25 v1.1.0, 1.00 v1.0.0
%
% Syntax   : Number of formulae    :   96 (  10 unit)
%            Number of atoms       :  395 (  71 equality)
%            Maximal formula depth :   17 (   6 average)
%            Number of connectives :  323 (  24 ~  ;   8  |;  38  &)
%                                         (  26 <=>; 227 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   21 (   1 propositional; 0-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :  203 (   0 singleton; 190 !;  13 ?)
%            Maximal term depth    :    4 (   1 average)

% Comments : Biased because it has $false which some systems don't understand
%            yet.
%--------------------------------------------------------------------------
%----Include list specification axioms
include('Axioms/SWC001+0.ax').
%--------------------------------------------------------------------------
fof(co1,conjecture,
    ( $true )).

%--------------------------------------------------------------------------
