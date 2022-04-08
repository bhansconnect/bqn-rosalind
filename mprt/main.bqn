#!/usr/bin/env bqn

x ← •FLines "rosalind_mprt.txt" 

T ← (⊢/˜(0=+`∘('_'⊸=)))
U ← (∾⟜".fasta"˜"https://www.uniprot.org/uniprot/"⊸∾∘T)
C ← (1⊸⊑∘•Show∘•Sh(⟨"curl"⟩⊸∾<∘U))
d ← ((@+10)⊸≠⊸/)∘(⊢/˜(0≠+`∘((@+10)⊸=)))∘C¨x

M ← (1⊸+∘/∘((«⍟2'S'⊸=∨'T'⊸=)∧((«⍟3∧«⍟1)≠⟜'P')∧'N'⊸=))
i ← M¨d

Print ← ((•Show 1⊸⊑)⊣•Out∘⊑)
Print¨(0≠≠¨i)/x∾○<¨i
