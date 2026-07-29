import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure PowerSeriesRing (R : Type u) [CommSemiring R] where
  carrier : Type v
  algebra : Algebra R carrier
  topology : TopologicalSpace carrier
  isAdic : Prop
  adicIdeal : Ideal carrier
  complete : Prop

structure PowerSeriesRingEvidence (R : Type u) [CommSemiring R] (S : PowerSeriesRing R) where
  isAdicClosed : S.isAdic
  adicIdealDefined : S.adicIdeal ≠ ⊤
  completeClosed : S.complete

def PowerSeriesRingClosed (R : Type u) [CommSemiring R] (S : PowerSeriesRing R) : Prop :=
  S.isAdic ∧ S.adicIdeal ≠ ⊤ ∧ S.complete

theorem power_series_ring_closed_from_evidence (R : Type u) [CommSemiring R] (S : PowerSeriesRing R)
    (E : PowerSeriesRingEvidence R S) : PowerSeriesRingClosed R S := by
  exact And.intro E.isAdicClosed (And.intro E.adicIdealDefined E.completeClosed)

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse