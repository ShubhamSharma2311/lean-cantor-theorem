import Mathlib

/-!
# Cantor's theorem

The diagonal set `{x | x ∉ f x}` is never in the range of `f : α → Set α`.
-/

namespace Cantor

variable {α : Type*}

/-- The diagonal set of `f`. -/
def diagonal (f : α → Set α) : Set α := {x | x ∉ f x}

@[simp] lemma mem_diagonal (f : α → Set α) (x : α) : x ∈ diagonal f ↔ x ∉ f x := Iff.rfl

/-- The diagonal set is not a value of `f`. -/
lemma diagonal_ne (f : α → Set α) (a : α) : f a ≠ diagonal f := by
  intro ha
  have h := mem_diagonal f a
  rw [← ha] at h
  exact iff_not_self h

/-- **Cantor's theorem.** No `f : α → Set α` is surjective. -/
theorem not_surjective (f : α → Set α) : ¬ Function.Surjective f := fun hf =>
  let ⟨a, ha⟩ := hf (diagonal f)
  diagonal_ne f a ha

/-- Dually, no `g : Set α → α` is injective. -/
theorem not_injective (g : Set α → α) : ¬ Function.Injective g := by
  intro hg
  haveI : Nonempty (Set α) := ⟨∅⟩
  exact not_surjective (Function.invFun g) (Function.invFun_surjective hg)

/-- Cardinal form: `#α < #(Set α)`. -/
theorem mk_lt_mk_set : Cardinal.mk α < Cardinal.mk (Set α) := by
  sorry

end Cantor
