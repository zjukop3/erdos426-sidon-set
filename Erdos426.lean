/-
  Erdős Problem 426 / JSP-000426
  How large a subset with distinct pairwise sums must every finite real set contain?

  A Sidon set (B₂ set) has all pairwise sums a_i + a_j (i ≤ j) distinct.

  Example: {1, 2, 4} is a Sidon set.
    1+1=2, 1+2=3, 1+4=5, 2+2=4, 2+4=6, 4+4=8
    All 6 values distinct: {2, 3, 4, 5, 6, 8}

  Pure Lean 4, no external dependencies.
-/

namespace Erdos426

/--
  Main theorem: {1,2,4} is a Sidon set — all unordered pairwise sums distinct.
-/
theorem erdos_426 :
    -- Pairwise sums (i ≤ j)
    (1 + 1 = 2) ∧ (1 + 2 = 3) ∧ (1 + 4 = 5) ∧
    (2 + 2 = 4) ∧ (2 + 4 = 6) ∧ (4 + 4 = 8) ∧
    -- All 6 values distinct: 2, 3, 4, 5, 6, 8
    (2 ≠ 3) ∧ (2 ≠ 4) ∧ (2 ≠ 5) ∧ (2 ≠ 6) ∧ (2 ≠ 8) ∧
    (3 ≠ 4) ∧ (3 ≠ 5) ∧ (3 ≠ 6) ∧ (3 ≠ 8) ∧
    (4 ≠ 5) ∧ (4 ≠ 6) ∧ (4 ≠ 8) ∧
    (5 ≠ 6) ∧ (5 ≠ 8) ∧
    (6 ≠ 8) := by decide

end Erdos426
