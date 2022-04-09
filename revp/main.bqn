#!/usr/bin/env bqn

d←∾1↓1⊑(⊢⊔˜+`∘(∨´∘⥊∘∊˜⟜'>'¨))•FLines "rosalind_revp.txt"
l←(4+↕9)
RC←⌽∘("ATGC"⊏˜"TACG"⊸⊐)
•Show¨∧∾l∾˜¨¨1+/¨(≡⟜RC)˘¨l↕⌜<d