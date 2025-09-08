
Step ← { s 𝕊 stack: {
    s ≡ "C" ? 1↓stack ;
    s ≡ "D" ? (2×⊑stack)∾stack ;
    s ≡ "+" ? (+´2↑stack)∾stack ;
    (•BQN s)∾stack
  }
}

Score ← { +´ (⋈•BQN ⊑𝕩) Step´ ⌽1↓𝕩 }

•Show Score ⟨"5","2","C","D","+"⟩
•Show Score ⟨"5","-2","4","C","D","9","+","+"⟩
•Show Score ⟨"7","D","D","C","+","3"⟩
•Show Score ⟨"-5","-10","+","D","C","+"⟩
•Show Score ⟨"3","6","+","D","C","8","+","D","-2","C","+"⟩
