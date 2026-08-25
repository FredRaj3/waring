# The Hilbert–Waring theorem

Board `HilbertWaring` of the group "Waring's problem in Lean".

## Statement (locked)

```lean
theorem hilbert_waring (k : ℕ) (hk : 1 ≤ k) :
    ∃ g : ℕ, ∀ n : ℕ, ∃ f : Fin g → ℕ, n = ∑ i, f i ^ k
```

Definitions used by the statement live at the top of `HilbertWaring.lean` and are part of the
locked region (everything from the top of the file through the `:= by`).

## Win condition (locked)

Close the `sorry` in `HilbertWaring.lean` keeping the statement **verbatim**; sorry-free; axiom-clean
(`#print axioms HilbertWaring.hilbert_waring` reporting only `propext`, `Classical.choice`, `Quot.sound` —
`sorryAx` is caught transitively); `lake build` green against the pinned toolchain and
Mathlib revision. **Mathlib only** — helper lemmas and new files are welcome, additional
dependencies are not. Adding a hypothesis is proving a different theorem, not partial
progress.

## Solve and submit

    git clone https://github.com/FredRaj3/waring.git
    cd waring
    ./preflight.sh
    lake exe cache get
    ./verify.sh HilbertWaring

Fork, close the sorry, open a pull request against `FredRaj3/waring`, and submit the PR
link on the board. CI re-runs `verify.sh` and publishes the axiom report. Submissions are
Apache-2.0. See `AGENTS.md` for the automated-solver version of these instructions.
