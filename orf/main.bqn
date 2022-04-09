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
d←∾1↓1⊑(⊢⊔˜+`∘(∨´∘⥊∘∊˜⟜'>'¨))•FLines "rosalind_orf.txt"
rc←(⊢∾○<⌽∘("ATCG"⊏˜"TAGC"⊸⊐))((@+10)⊸≠/⊢)d
w←(<˘⌊‿3⊸⥊)¨∾(<(⊏˜)⌜(⌽∘(∾˜`∘⌽∘(1⊸↓)∘⊔+`)∘(«⍟2∘=⟜'G'˜∧«∘=⟜'T'˜∧'A'⊸=)))¨rc
p←(s⊸(¬∘(∨`∘∨˝≡⌜)/⊢))¨((∨´s⊸∊)¨/⊢)w
•Out¨⍷((1⊸⊑¨m)⊏˜(⊑¨m)⊸⊐)¨p
