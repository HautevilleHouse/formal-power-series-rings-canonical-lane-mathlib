import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure AdmissibleClass where
  object : FPSAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FPSWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse