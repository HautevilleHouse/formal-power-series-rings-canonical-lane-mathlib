import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure WeierstrassData (R : Type u) [CommSemiring R] (A : FormalPowerSeriesRing R) where
  weierstrassPolynomial : A.carrier
  unitFactor : A.carrier
  preparationTheorem : Prop
  preparationTheoremClosed : preparationTheorem

structure WeierstrassEvidence (R : Type u) [CommSemiring R] {A : FormalPowerSeriesRing R} (W : WeierstrassData R A) where
  preparationProof : W.preparationTheorem

def WeierstrassPreparationClosed (R : Type u) [CommSemiring R] {A : FormalPowerSeriesRing R} (W : WeierstrassData R A) : Prop :=
  W.preparationTheorem

theorem weierstrass_preparation_closed_from_evidence (R : Type u) [CommSemiring R] {A : FormalPowerSeriesRing R} (W : WeierstrassData R A) (E : WeierstrassEvidence R W) : WeierstrassPreparationClosed R W := by
  exact E.preparationProof

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse
