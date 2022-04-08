#!/usr/bin/env bqn

dna ← •FLines "rosalind_hamm.txt" 

•Out +´(⊑≠1⊸⊑)dna