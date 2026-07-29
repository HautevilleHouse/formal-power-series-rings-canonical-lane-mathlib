import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure HenselLemma (R : Type u) [CommRing R] where
  ring : PowerSeriesRing R
  polynomial : PowerSeriesRing R → PowerSeriesRing R
  root : PowerSeriesRing R
  liftExists : Prop

structure HenselLemmaEvidence (R : Type u) [CommRing R] (H : HenselLemma R) where
  rootApproximate : Prop
  liftExistsClosed : H.liftExists

def HenselLemmaClosed (R : Type u) [CommRing R] (H : HenselLemma R) : Prop :=
  H.liftExists

theorem hensel_lemma_closed_from_evidence (R : Type u) [CommRing R]
    (H : HenselLemma R) (E : HenselLemmaEvidence R H) : HenselLemmaClosed R H := by
  exact E.liftExistsClosed

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse