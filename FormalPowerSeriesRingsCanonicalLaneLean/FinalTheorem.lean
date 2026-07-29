import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedFormalPowerSeriesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact Or.inl A.endpointSatisfied

theorem constrained_formal_power_series_endgame (A : AdmissibleClass) : ConstrainedFormalPowerSeriesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse
