import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FPSWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse