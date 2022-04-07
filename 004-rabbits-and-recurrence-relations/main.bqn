#!/usr/bin/env bqn

# Sample Values
# n ← 5
# k ← 3

# Real Values
n ← 31
k ← 2

B ← { a‿b ← 𝕩 ⋄ (a+b)‿(a×𝕨) }

•Show ⊑k B⍟n 0‿1