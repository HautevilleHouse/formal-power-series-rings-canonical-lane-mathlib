import FormalPowerSeriesRingsCanonicalLaneLean.WeierstrassPreparation

/-!
# Localization Package
-/

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

structure LocalizationPackage (R : FPSRing) where
  localRing : Prop
  maximalIdealGeneratedByX : Prop
  fractionField : Prop
  henselian : Prop

structure LocalizationEvidence (R : FPSRing) (L : LocalizationPackage R) where
  localRingClosed : L.localRing
  maximalIdealGeneratedByXClosed : L.maximalIdealGeneratedByX
  fractionFieldClosed : L.fractionField
  henselianClosed : L.henselian

def LocalizationClosed (R : FPSRing) (L : LocalizationPackage R) : Prop :=
  L.localRing ∧ L.maximalIdealGeneratedByX ∧ L.fractionField ∧ L.henselian

theorem localization_closed_from_evidence (R : FPSRing) (L : LocalizationPackage R)
    (E : LocalizationEvidence R L) : LocalizationClosed R L := by
  exact And.intro E.localRingClosed 
    (And.intro E.maximalIdealGeneratedByXClosed
      (And.intro E.fractionFieldClosed E.henselianClosed))

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse