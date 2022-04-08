#!/usr/bin/env bqn

# Higher precision double from sengali
To   ← ⋈⟜0
Add12 ← {a𝕊b:
  s ← a + b
  av← s - bv← s - a
  ⟨s, +´a‿b-av‿bv⟩
}
Add ← {a𝕊b:
  r ← a +○⊑ b
  s ← (-r) +´ ¯1⌽⌽⍟(a<○⊑b) b⌽⊸∾a
  r Add12 s
}
_repr ← { len‿b _𝕣: {c←0 ⋄ {𝕩+↩c⋄c↩⌊𝕩÷b⋄b|𝕩}¨𝕩} ·+´ b|⌊∘÷⟜b⍟(↕len)¨ }

# Sample Values
# n ← 6
# m ← 3

# Real Values
n ← 100
m ← 20

B ← (⊢»˜⟜<Add´∘(1⊸↓))
•Out (∨`'0'⊸≠)⊸/∾´'0'+⌽ 25‿10 _repr Add´B⍟(n-1) To¨1∾(m-1)⥊0