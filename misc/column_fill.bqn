# Task: given a 2d matrix of 0s and 1s, add rows so that all columns
#       have the same number of 1s
# 
# e.g.
# 
#   g ← 3‿5⥊15 •rand.Range 2
# ┌─           
# ╵ 0 1 1 0 0  
#   0 1 0 1 0  
#   1 0 1 1 0  
#             ┘
#   FillColumns g
# ┌─           
# ╵ 0 1 1 0 0  
#   0 1 0 1 0  
#   1 0 1 1 0  
#   1 0 0 0 1  
#   0 0 0 0 1  
#             ┘

g ← 8‿10⥊80 •rand.Range 2
FillColumns ← {𝕩∾(↕⌈´a)<⌜a←⌈´⊸-+˝𝕩}

•Show g
•Show +˝g
•Show FillColumns g
•Show +˝FillColumns g
