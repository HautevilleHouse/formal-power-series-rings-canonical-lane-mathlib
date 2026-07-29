import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure MonomialOrder (α : Type u) [DecidableEq α] where
  carrier : Set (α → ℕ)
  order : carrier → carrier → Prop
  total : ∀ a b, order a b ∨ order b a
  transitive : ∀ a b c, order a b → order b c → order a c
  antisymmetric : ∀ a b, order a b → order b a → a = b
  wellFounded : WellFounded order

structure MonomialOrderEvidence (α : Type u) [DecidableEq α] (M : MonomialOrder α) where
  totalClosed : M.total
  transitiveClosed : M.transitive
  antisymmetricClosed : M.antisymmetric
  wellFoundedClosed : M.wellFounded

def MonomialOrderClosed (α : Type u) [DecidableEq α] (M : MonomialOrder α) : Prop :=
  M.total ∧ M.transitive ∧ M.antisymmetric ∧ M.wellFounded

theorem monomial_order_closed_from_evidence (α : Type u) [DecidableEq α] (M : MonomialOrder α) (E : MonomialOrderEvidence α M) : MonomialOrderClosed α M := by
  exact And.intro E.totalClosed (And.intro E.transitiveClosed (And.intro E.antisymmetricClosed E.wellFoundedClosed))

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse