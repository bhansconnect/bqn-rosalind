#!/usr/bin/env bqn

dna‿s ← •FLines "rosalind_subs.txt" 
•Show 1+/s⊸≡˘(≢s)↕dna
