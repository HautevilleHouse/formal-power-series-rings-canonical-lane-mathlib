import FormalPowerSeriesRingsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Polynomial.Basic

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FPSRing where
  carrier : Type
  ring : Ring carrier
  powerSeries : carrier → (ℕ → carrier)

structure FPSAdmittedObject where
  ring : FPSRing
  localizationComplete : Prop
  weierstrassPrep : Prop
  conclusion : localizationComplete ∧ weierstrassPrep

def FPSWitnessClosed (O : FPSAdmittedObject) : Prop :=
  O.localizationComplete ∧ O.weierstrassPrep

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse