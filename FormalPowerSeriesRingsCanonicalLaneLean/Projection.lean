import FormalPowerSeriesRingsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FormalPowerSeriesRingsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FPSProjectionState where
  object : FPSAdmittedObject

def fpsProjection : Projection FPSProjectionState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem fps_projection_idempotent (x : FPSProjectionState) :
    fpsProjection.toFun (fpsProjection.toFun x) = fpsProjection.toFun x := by
  exact fpsProjection.idempotent x

end FormalPowerSeriesRingsCanonicalLaneLean
end HautevilleHouse