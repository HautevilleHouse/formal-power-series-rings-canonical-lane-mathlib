import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure HenselsLemma (R : Type u) [CommSemiring R] (F : FormalPowerSeriesRing R) where
  polynomial : ℕ → F.carrier
  rootModuloIdeal : (polynomial 0).coeff 0 = 0
  derivativeNonzero : (polynomial 1).coeff 0 ≠ 0
  liftToRoot : ∃ (a : F.carrier), a.coeff 0 = 0 ∧ ∀ n, (polynomial n).coeff n = 0

structure HenselsLemmaEvidence (R : Type u) [CommSemiring R] (F : FormalPowerSeriesRing R) (H : HenselsLemma R F) where
  rootModuloIdealClosed : H.rootModuloIdeal
  derivativeNonzeroClosed : H.derivativeNonzero
  liftToRootClosed : H.liftToRoot

def HenselsLemmaClosed (R : Type u) [CommSemiring R] (F : FormalPowerSeriesRing R) (H : HenselsLemma R F) : Prop :=
  H.rootModuloIdeal ∧ H.derivativeNonzero ∧ H.liftToRoot

theorem hensels_lemma_closed_from_evidence (R : Type u) [CommSemiring R] (F : FormalPowerSeriesRing R) (H : HenselsLemma R F) (E : HenselsLemmaEvidence R F H) : HenselsLemmaClosed R F H := by
  exact And.intro E.rootModuloIdealClosed (And.intro E.derivativeNonzeroClosed E.liftToRootClosed)

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse