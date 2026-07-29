import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure CompletionStructurePackage (R : Type u) [CommRing R] where
  idealAdicCompletion : Prop
  inverseLimitExists : Prop
  naturalMapInjective : Prop
  completionIsComplete : Prop

structure CompletionStructureEvidence (R : Type u) [CommRing R]
    (C : CompletionStructurePackage R) where
  idealAdicCompletionClosed : C.idealAdicCompletion
  inverseLimitExistsClosed : C.inverseLimitExists
  naturalMapInjectiveClosed : C.naturalMapInjective
  completionIsCompleteClosed : C.completionIsComplete

def CompletionStructureClosed (R : Type u) [CommRing R]
    (C : CompletionStructurePackage R) : Prop :=
  C.idealAdicCompletion ∧ C.inverseLimitExists ∧ C.naturalMapInjective ∧ C.completionIsComplete

theorem completion_structure_closed_from_evidence
    (R : Type u) [CommRing R] (C : CompletionStructurePackage R)
    (E : CompletionStructureEvidence R C) : CompletionStructureClosed R C := by
  exact And.intro E.idealAdicCompletionClosed
    (And.intro E.inverseLimitExistsClosed
      (And.intro E.naturalMapInjectiveClosed E.completionIsCompleteClosed))

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse