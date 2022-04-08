#!/usr/bin/env bqn

# This has a slight problem. BQN use doubles when numbers get large.
# Rosaling expects calculations with 64bit integer

# Sample Values
# n ← 6
# m ← 3

# Real Values
n ← 94
m ← 18

B ← (⊢»˜+´∘(1⊸↓))
•Show +´0» B⍟n 1∾(m-1)⥊0