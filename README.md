# Cantor's Theorem

No map `α → Set α` is surjective, via the diagonal set; cardinal and injective forms.

Formalised in Lean 4 with Mathlib. No `sorry`.

## Proof outline

1. Define `D = {x | x ∉ f x}`.
2. If `f a = D` then `a ∈ D ↔ a ∉ D`, a contradiction.
3. So `f` misses `D` and is not surjective.
4. An injection `Set α → α` would have a surjective left inverse, so it cannot exist either.

## Contents

- [`Cantor/Basic.lean`](Cantor/Basic.lean): the main development
- [`Cantor/Examples.lean`](Cantor/Examples.lean): small worked examples

Declarations:

- `Cantor.diagonal`
- `Cantor.mem_diagonal`
- `Cantor.diagonal_not_mem_range`
- `Cantor.not_surjective`
- `Cantor.not_injective`
- `Cantor.mk_lt_mk_set`

## Build

```
lake exe cache get
lake build
```

Toolchain: `leanprover/lean4:v4.33.0-rc1`.
