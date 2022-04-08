#!/usr/bin/env bqn

fasta ← •FLines "rosalind_gc.txt" 

sequences←1↓(⊢⊔˜+`∘(∨´∘⥊∘∊˜⟜'>'¨))fasta

GC ← ((<1⊸↓∘⊑)∾(100⊸×∘(≢÷˜+´∘(+˝⎉1=⌜)˜⟜'C'‿'G')∾∘↓˜⟜1))

name‿value ← (⊑∘⍒∘(1⊸⊏¨)⊑⊢)GC¨sequences

•Out name
•Show value