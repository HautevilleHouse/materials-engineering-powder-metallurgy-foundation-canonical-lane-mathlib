import MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def powderProjection : Projection PowderEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem powder_projection_idempotent (x : PowderEndgameState) :
    powderProjection.toFun (powderProjection.toFun x) = powderProjection.toFun x := by
  exact powderProjection.idempotent x

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse