#!/usr/bin/env bqn
m ← ⟨
"TTT"‿'F', "CTT"‿'L', "ATT"‿'I', "GTT"‿'V',
"TTC"‿'F', "CTC"‿'L', "ATC"‿'I', "GTC"‿'V',
"TTA"‿'L', "CTA"‿'L', "ATA"‿'I', "GTA"‿'V',
"TTG"‿'L', "CTG"‿'L', "ATG"‿'M', "GTG"‿'V',
"TCT"‿'S', "CCT"‿'P', "ACT"‿'T', "GCT"‿'A',
"TCC"‿'S', "CCC"‿'P', "ACC"‿'T', "GCC"‿'A',
"TCA"‿'S', "CCA"‿'P', "ACA"‿'T', "GCA"‿'A',
"TCG"‿'S', "CCG"‿'P', "ACG"‿'T', "GCG"‿'A',
"TAT"‿'Y', "CAT"‿'H', "AAT"‿'N', "GAT"‿'D',
"TAC"‿'Y', "CAC"‿'H', "AAC"‿'N', "GAC"‿'D',
"CAA"‿'Q', "AAA"‿'K', "GAA"‿'E', "CAG"‿'Q',
"AAG"‿'K', "GAG"‿'E', "TGT"‿'C', "CGT"‿'R',
"AGT"‿'S', "GGT"‿'G', "TGC"‿'C', "CGC"‿'R',
"AGC"‿'S', "GGC"‿'G', "CGA"‿'R', "AGA"‿'R',
"GGA"‿'G', "TGG"‿'W', "CGG"‿'R', "AGG"‿'R',
"GGG"‿'G'
⟩
s ← "TAA"‿"TAG"‿"TGA"

f←1↓(⊢⊔˜+`∘(∨´∘⥊∘∊˜⟜'>'¨))•FLines "rosalind_splc.txt" 

d←∾1↓⊑f
ss←∾(⥊1⊸↓)¨1↓f

# TODO: Is there a better way without the while loop?
While   ← {𝕩{𝔽⍟𝔾∘𝔽_𝕣_𝔾∘𝔽⍟𝔾𝕩}𝕨@}´
While {𝕤⋄∨´∾ss⍷⌜<d}‿{𝕤
  ai←⊑∘(∾⟜≠⟜d)∘/¨ss⍷⌜<d
  l←≠ss⊑˜⊑⍋ai
  i←⌊´ai
  d↩d/˜¬((i+l-1)⊸≥∧i⊸≤)↕≠d
}

•Out ((1⊸⊑¨m)⊏˜(⊑¨m)⊸⊐)(s⊸(¬∘(∨`∘∨˝≡⌜)/⊢))<˘∘‿3⥊d