#!/usr/bin/env bqn

x←6

# TODO: Study and understand this code at some point.
p←1+((≍↕0){∾˝(0∾˘1+𝕩)⊸⊏˘⍒˘=⌜˜↕𝕨}´-⟜↕)x
•Show ≠p
•Show˘p