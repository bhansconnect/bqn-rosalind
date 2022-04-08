#!/usr/bin/env bqn

dna ← •file.Chars "rosalind_rna.txt" 

•Out 'T' (⊢+=×'U'⊸-) dna