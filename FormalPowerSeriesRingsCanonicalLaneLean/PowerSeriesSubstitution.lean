import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure SubstitutionStructure (R : Type u) [CommSemiring R] (A : FormalPowerSeriesRing R) where
  substitutionMap : A.carrier → A.carrier
  substitutionProperty : Prop
  substitutionPropClosed : substitutionProperty

structure SubstitutionEvidence (R : Type u) [CommSemiring R] {A : FormalPowerSeriesRing R} (S : SubstitutionStructure R A) where
  substitutionProof : S.substitutionProperty

def SubstitutionClosed (R : Type u) [CommSemiring R] {A : FormalPowerSeriesRing R} (S : SubstitutionStructure R A) : Prop :=
  S.substitutionProperty

theorem substitution_closed_from_evidence (R : Type u) [CommSemiring R] {A : FormalPowerSeriesRing R} (S : SubstitutionStructure R A) (E : SubstitutionEvidence R S) : SubstitutionClosed R S := by
  exact E.substitutionProof

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse
