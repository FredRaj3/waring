/-
Copyright (c) 2026 Fred Rajasekaran. All rights reserved.
Released under Apache 2.0 license.

# The Hilbert–Waring theorem — locked statement

Capstone board "HilbertWaring" of the Problem Market group "Waring's problem in Lean". A
submission closes the `sorry` below, keeping the statement verbatim. Everything from the
top of this file through the `:= by` is the locked region. See tasks/HilbertWaring.md.
-/
import Mathlib

namespace HilbertWaring

/-- **Hilbert–Waring**: for every exponent `k ≥ 1` there is a `g` such that every
natural number is a sum of `g` k-th powers. -/
theorem hilbert_waring (k : ℕ) (hk : 1 ≤ k) :
    ∃ g : ℕ, ∀ n : ℕ, ∃ f : Fin g → ℕ, n = ∑ i, f i ^ k := by
  sorry

end HilbertWaring
