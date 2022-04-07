#!/usr/bin/env bqn

dna ← •file.Chars "rosalind_revc.txt" 

_r_ ← { 𝕗⊸(=×𝕘⊸-)}

RC ← ⌽∘(⊢+'A'_r_'T'+'T'_r_'A'+'C'_r_'G'+'G'_r_'C')

•Out RC dna