# Mann's theorem: Schnirelmann density is superadditive

Board `Mann` of the group "Waring's problem in Lean".

## Statement (locked)

```lean
theorem mann (A B : Set ℕ)
    [DecidablePred (· ∈ A)] [DecidablePred (· ∈ B)] [DecidablePred (· ∈ A + B)]
    (hA : 0 ∈ A) (hB : 0 ∈ B) :
    min 1 (schnirelmannDensity A + schnirelmannDensity B)
      ≤ schnirelmannDensity (A + B)
```

Definitions used by the statement live at the top of `Mann.lean` and are part of the
locked region (everything from the top of the file through the `:= by`).

## Win condition (locked)

Close the `sorry` in `Mann.lean` keeping the statement **verbatim**; sorry-free; axiom-clean
(`#print axioms Mann.mann` reporting only `propext`, `Classical.choice`, `Quot.sound` —
`sorryAx` is caught transitively); `lake build` green against the pinned toolchain and
Mathlib revision. **Mathlib only** — helper lemmas and new files are welcome, additional
dependencies are not. Adding a hypothesis is proving a different theorem, not partial
progress.

## Solve and submit

    git clone https://github.com/FredRaj3/waring.git
    cd waring
    ./preflight.sh
    lake exe cache get
    ./verify.sh Mann

Fork, close the sorry, open a pull request against `FredRaj3/waring`, and submit the PR
link on the board. CI re-runs `verify.sh` and publishes the axiom report. Submissions are
Apache-2.0. See `AGENTS.md` for the automated-solver version of these instructions.
