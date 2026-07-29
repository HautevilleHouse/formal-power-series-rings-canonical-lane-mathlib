import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure FPSRingStructure where
  coefficientRing : Type u
  variableCount : Nat
  formalSeries : Type v
  addition : formalSeries → formalSeries → formalSeries
  multiplication : formalSeries → formalSeries → formalSeries
  ringAxioms : Prop
  additionClosed : addition
  multiplicationClosed : multiplication
  ringAxiomsClosed : ringAxioms

structure FPSRingEvidence (R : FPSRingStructure) where
  additionClosed : R.addition
  multiplicationClosed : R.multiplication
  ringAxiomsClosed : R.ringAxioms

def FPSRingClosed (R : FPSRingStructure) : Prop :=
  R.addition ∧ R.multiplication ∧ R.ringAxioms

theorem fps_ring_closed_from_evidence (R : FPSRingStructure) (E : FPSRingEvidence R) :
    FPSRingClosed R := by
  exact And.intro E.additionClosed (And.intro E.multiplicationClosed E.ringAxiomsClosed)

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse