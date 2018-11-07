First-order part of the ILTP-v1.1.2-Library
-----------------------------------------

The Intuitionistic Logic Theorem Proving (ILTP) library provides a
platform for testing and benchmarking automated theorem proving
systems for first-order intuitionistic logic. It includes a collection
of propositional and first-order benchmark formulas in a standardised
syntax and tools for converting the formulas into some of the existing
intuitionistic theorem prover formats. It also includes information
about implementations of theorem provers for intuitionistic logic and
their perfomance results on the benchmark formulas.
Webpage: http://www.iltp.de.

Installation
------------

Unpack and untar ILTP-v1.1.2-firstorder.tar.gz
> tar -xzf ILTP-v1.1.2-firstorder.tar.gz
This will create the directory ILTP-v1.1.2-firstorder.
 
Contents
--------

* Problems    - benchmark formulas in a standardised syntax
* Axioms      - axiom sets needed for formulating the problems
* tptp2X      - tool for converting the formula into some of the existing 
                intuitionistic ATP system format
* Documents   - performance results on the benchark formulas for some
                intuitionistic ATP systems, statistics, example sessions,
                readme-ILTP-v1.1.2-fof.txt - this file

tptp2X
------

This tool translates the problems into the syntax of the
Automatic-Theorem-Proving (ATP)-systems. It stems from the
TPTP-Library [1]. So-called format-files specify the syntax of the
respective ATP system.  
You will need some Prolog Interpreter. For full details see the
technical manual at http://www.cs.miami.edu/~tptp. 
 
a) Configure tptp2X tool:
> cd ILTP-v1.1.2-firstorder/TPTP2X
> ./tptp2X_install

This script will ask for required information. (When you are asked to
state your desired format, then simply type 'a' for 'all').

b) Use TPTP2X tool to translate formulas:
> cd ..
> TPTP2X/tptp2X -f <ATP system> [-t <transformations>] [Problems/<domain>/'*.p']

This will write the translated formulas into the directory <ATP system>.
The parameters are:

<ATP system>: intuitionistic ATP system. one of
              ft, ftprolog, jprover, strip, ljt, pitp,
              leancop (for the ATP-systems ileanCoP, ileanTAP, ileanSeP),

<domain>: one of AGT,ALG,COM,CSN,CSR,GEJ,GEO,GPJ,GRA,GRP,HAL,KRS,
                 LCL,MGT,MSC,NLP,NUM,PLA,PUZ,SET,SWC SWV,SYJ,SYN,TOP
                 
<transformations>: the most important ones are:
   stdfof: transforms non-standard connectives like <=, <~>, ~|, ~&
           into standard ones
   shorten: replace symbols by short ones, suppress header information
   add_equality: add equality axioms (necessary, if the prover has no
                 special method for handling equality) (*)
   combination possible, e.g. -t stdfof+shorten+add_equality 

Example: TPTP2X/tptp2X -f ft -t stdfof+shorten+add_equality


   (*) add_equality is not completely stable under SWI-Prolog. If you work with
       SWI-Prolog, please use also "shorten" (e.g. "-t shorten+add_equality"),
       and replace write/1 by print/1 in the format-files.


Problems
--------

2550 problems of 24 domains
2480 non-propositional. 70 propositional
statistics: 2363 abstract problems, of which 20 are generic
            class. status: 1950 valid, 553 invalid, 47 unknown
            185 pure-equality problems


References
----------

[1] G. Sutcliffe, C. Suttner. The TPTP problem library - CNF release
v1.2.1. Journal of Automated Reasoning, 21: 177-203, 1998.
http://www.cs.miami.edu/~tptp/

Contact
-------

Please contact us, if you have any questions, suggestions, or if you
have developed an ATP system or benchmark formulas for intuitionistic
logic. We would like to include your ATP system and your benchmark
formulas in the ILTP-library.

http://www.iltp.de

Thomas Raths
Jens Otten

University of Potsdam
Department of Computer Science
August-Bebel-Straﬂe 89
14482 Potsdam
Germany
