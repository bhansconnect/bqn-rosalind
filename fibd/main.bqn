#!/usr/bin/env bqn

# Sample Values
# n ← 6
# m ← 3

# Real Values
n ← 85
m ← 17

nat ← •Import "bignat.bqn"
B ← (⊢»˜⟜<nat.Add´∘(1⊸↓))
•Out nat.Repr nat.Add´B⍟(n-1) <¨1∾(m-1)⥊0