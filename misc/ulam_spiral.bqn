# my BQN version of https://www.youtube.com/watch?v=dBC5vnwf6Zw
# 

IsPrime ← {2=+´0⊸=(1+↕)⊸|𝕩}
IsSquare ← ⌊⊸=√
IsCube ← ⌊⊸=•math.Cbrt

# UlamSpiral ← {(((1+⊑)+(↕∘≠⊏))⊸∾·⌽⍉)⍟𝕩 1‿1⥊1}
# UlamSpiral ← {((⊑+(1⊸+·↕∘≠⊏))⊸∾·⌽⍉)⍟𝕩 1‿1⥊1}
# UlamSpiral ← {((1⊸+⊑+·↕∘≠⊏)⊸∾·⌽⍉)⍟𝕩 1‿1⥊1}
  UlamSpiral ← {((1⊸+⊑+·↕∘≠⊏)⊸∾·⌽⍉)⍟𝕩 ≍≍1}

•Show UlamSpiral 32
# •Show "⬜⬛" ⊏˜ IsPrime ¨ UlamSpiral 32
# •Show "⬜⬛" ⊏˜ IsSquare ¨ UlamSpiral 100
# •Show "⬜⬛" ⊏˜ IsCube ¨ UlamSpiral 100

# nl‿sp ← @+10‿32
# D ← ∾·(sp∾•Fmt)¨⌽2⊸↑≢
# PBM ← {"P1"∾(D𝕩)∾∾⥊(nl∾˘(sp∾•Fmt)¨𝕩)}

# •Out PBM IsPrime ¨ UlamSpiral 100
# •Out PBM IsSquare ¨ UlamSpiral 500
# •Out PBM IsCube ¨ UlamSpiral 500
