#!/usr/bin/env bqn


a‿b←∾¨1⊸↓¨1↓(⊢⊔˜+`∘(∨´∘⥊∘∊˜⟜'>'¨))•FLines "rosalind_tran.txt" 
•Show ((¬ts)⊸∧a≠b)÷˜○(+´)ts←a=⟜("AGCT"⊏˜"GATC"⊸⊐)b