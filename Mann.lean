/-
Copyright (c) 2026 Fred Rajasekaran. All rights reserved.
Released under Apache 2.0 license.

# Mann's theorem — locked statement

Board "Mann" of the Problem Market group "Waring's problem in Lean". A submission closes
the `sorry` below, keeping the statement verbatim. Everything from the top of this file
through the `:= by` is the locked region. See tasks/Mann.md.
-/
import Mathlib

open Pointwise

namespace Mann

/-- **Mann's theorem**: Schnirelmann density is superadditive on sets containing `0`. -/
theorem mann (A B : Set ℕ)
    [DecidablePred (· ∈ A)] [DecidablePred (· ∈ B)] [DecidablePred (· ∈ A + B)]
    (hA : 0 ∈ A) (hB : 0 ∈ B) :
    min 1 (schnirelmannDensity A + schnirelmannDensity B)
      ≤ schnirelmannDensity (A + B) := by
  sorry

end Mann
