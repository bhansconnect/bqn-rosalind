#!/usr/bin/env bqn

# This has a slight problem:
# In CBQN it doesn't print with run, but it does work in the repl.
# Apparently show does not work dyadically in the version of cbqn I have.

# Sample Values
# n ← 6
# m ← 3

# Real Values
n ← 92
m ← 20

B ← (⊢»˜+´∘(1⊸↓))
"%g" •Show +´B⍟(n-1) 1∾(m-1)⥊0