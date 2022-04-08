#!/usr/bin/env bqn

fasta ← •FLines "rosalind_lcsm.txt" 

s←1↓(⊢⊔˜+`∘(∨´∘⥊∘∊˜⟜'>'¨))fasta
s ↩ (∾´1⊸↓)¨s
s ↩ ((⍋∘⍋≠¨)⍋⊸⊏⊢)s

# This is a bruteforce implementation.
# Maybe try something better???
ss ← (⍷∘∾<˘¨)¨(1⊸+∘↕∘≠↕⌜<)¨s
ps ← ⊑ss

•Show ¯1⊑ps/˜∧´(ps⊸∊)¨ss