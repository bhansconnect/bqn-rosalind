#!/usr/bin/env bqn

s←1↓(⊢⊔˜+`∘(∨´∘⥊∘∊˜⟜'>'¨))•FLines "rosalind_grph.txt" 
m←(≠⌜˜∘↕∘≠∧(¯3⊸↑∘⊣≡3⊸↑)⌜˜)(∾1⊸↓)¨s
•Show¨m/○⥊∾○<⌜˜1⊸↓∘⊑¨s