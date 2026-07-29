import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure FormalPowerSeriesRing (R : Type u) [CommSemiring R] where
  carrier : Type v
  coefficientRing : R
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  isRing : Ring carrier
  isFormalPowerSeries : Prop

def FormalPowerSeriesRingClosed (R : Type u) [CommSemiring R] (A : FormalPowerSeriesRing R) : Prop :=
  A.isFormalPowerSeries

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse
