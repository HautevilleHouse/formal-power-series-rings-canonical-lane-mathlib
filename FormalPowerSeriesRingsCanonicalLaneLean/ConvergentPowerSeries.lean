import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure ConvergentPowerSeries (R : Type u) [CommSemiring R] [NormedRing R] where
  ring : PowerSeriesRing R
  convergenceRadius : ℝ
  radiusPositive : convergenceRadius > 0
  sumDefined : Prop

structure ConvergentPowerSeriesEvidence (R : Type u) [CommSemiring R] [NormedRing R]
    (C : ConvergentPowerSeries R) where
  radiusPositiveClosed : C.radiusPositive
  sumDefinedClosed : C.sumDefined

def ConvergentPowerSeriesClosed (R : Type u) [CommSemiring R] [NormedRing R]
    (C : ConvergentPowerSeries R) : Prop :=
  C.radiusPositive ∧ C.sumDefined

theorem convergent_power_series_closed_from_evidence (R : Type u) [CommSemiring R] [NormedRing R]
    (C : ConvergentPowerSeries R) (E : ConvergentPowerSeriesEvidence R C) :
    ConvergentPowerSeriesClosed R C := by
  exact And.intro E.radiusPositiveClosed E.sumDefinedClosed

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse