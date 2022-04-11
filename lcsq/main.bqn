#!/usr/bin/env bqn

a‿b←∾¨1⊸↓¨1↓(⊢⊔˜+`∘(∨´∘⥊∘∊˜⟜'>'¨))•FLines "rosalind_lcsq.txt" 

# My original super slow solution.
#M←⊣⍟(>○≠)
#•Show ¯1⊑¯1⊏(M`M`˘)∘(d∾˜¨˘(»»˘)){𝕊∘⊢⍟≢⟜𝔽𝕩} (M`M`˘)d←a(=⌜⥊¨⊣)b

# I was having a really hard time figuring out how to implement this efficiently in an array world.
# So I looked it up to try and just use parts/understand better.
# This is the solution from rosetta code.
# It is actually quite elegant.
# The core thing I missed is that instead of repeating something many times over the matrix
# It is possible to scan across the matrix calculating intermediater results as you go.
# Did not think that was the proper mapping for array oriented programming so I never looked into it.
# Hopefully these learnings will translate to other problems.
# Might also try to make my own unique solution to this in the future.

LCS ← ¯1 ⊑ "" <⊸∾ ""¨∘⊢ ⊣⍟(>○≠){𝕩𝔽¨𝔽`𝕨∾¨""<⊸»𝕩}˝ (=⌜⥊¨⊣)⟜⌽
•Out a LCS b
