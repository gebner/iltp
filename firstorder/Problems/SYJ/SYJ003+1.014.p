%--------------------------------------------------------------------------
% File     : SYJ003+1 : ILTP v1.1.0
% Domain   : Intuitionistic Syntactic
% Problem  : Alternations of quantifiers
% Version  : Especial.
%          : Theorem formulation : For N = SIZE. Size 14
% English  : Ex x1.All x2.Ex x3... Ex x2n-1 all x2n.(p1(x1,x2) & p2(x3,x4)&..pn(x2n-1,x2n)) ->
%            All x2n.Ex x2n-1...Ex x3.All x2.Ex x1.(p1(x1,x2) & p2(x3,x4)&..pn(x2n-1,x2n))

% Refs     : [SFH92] Dan Sahlin, Torkel Franzén and Seif Haridi. An
%            Intuitionistic Predicate Logic Theorem Prover, Journal of
%            Logic and Computation, Vol. 2, No. 5, pp 619-656, 1992.
%            http://www.sm.luth.se/~torkel/eget/ft/ft1.23/benchmarks.pred
% Source   : [SFH92]
% Names    : 
%
% Status (intuit.) : Unknown
% Rating (intuit.) : 1.00 v1.1
%

% Comments : 
%--------------------------------------------------------------------------
fof(con,conjecture,(
(? [X1] : (! [X2] : (? [X3] : (! [X4] : (? [X5] : (! [X6] : (? [X7] : (! [X8] : (? [X9] : (! [X10] : (? [X11] : (! [X12] : (? [X13] : (! [X14] : (? [X15] : (! [X16] : (? [X17] : (! [X18] : (? [X19] : (! [X20] : (? [X21] : (! [X22] : (? [X23] : (! [X24] : (? [X25] : (! [X26] : (? [X27] : (! [X28] :  
(p1(X1,X2) & p2(X3,X4) & p3(X5,X6) & p4(X7,X8) & p5(X9,X10) & p6(X11,X12) & p7(X13,X14) & p8(X15,X16) & p9(X17,X18) & p(X19,X20) & p(X21,X22) & p(X23,X24) & p(X25,X26) & p(X27,X28)))))))))))))))))))))))))))))) =>
(! [X28] : (? [X27] : (! [X26] : (? [X25] : (! [X24] : (? [X23] : (! [X22] : (? [X21] : (! [X20] : (? [X19] : (! [X18] : (? [X17] : (! [X16] :(? [X15] : (! [X14] :(? [X13] : (! [X12] : (? [X11] : (! [X10] : (? [X9] : (! [X8] : (? [X7] : (! [X6] : (? [X5] : (! [X4] : (? [X3] : (! [X2] : (? [X1] : 
(p1(X1,X2) & p2(X3,X4) & p3(X5,X6) & p4(X7,X8) & p5(X9,X10) & p6(X11,X12) & p7(X13,X14) & p8(X15,X16) & p9(X17,X18) & p(X19,X20) & p(X21,X21) & p(X23,X24)) & p(X25,X26) & p(X27,X28)))))))))))))))))))))))))))))
)).

%--------------------------------------------------------------------------
