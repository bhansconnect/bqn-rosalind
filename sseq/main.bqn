#!/usr/bin/env bqn

f←1↓(⊢⊔˜+`∘(∨´∘⥊∘∊˜⟜'>'¨))•FLines "rosalind_sseq.txt" 
•Show ⊑¨1+/¨(⊢∧((∨`∘»∘⊣∧⊢)`)) (∾1↓1⊑f)=⌜<∾1↓⊑f