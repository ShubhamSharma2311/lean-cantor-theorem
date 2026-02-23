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

end Cantor
