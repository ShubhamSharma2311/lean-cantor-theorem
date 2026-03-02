import Cantor.Basic

namespace Cantor

example : ¬ Function.Surjective (fun n : ℕ => ({n} : Set ℕ)) := not_surjective _

example : Cardinal.mk ℕ < Cardinal.mk (Set ℕ) := mk_lt_mk_set

end Cantor
