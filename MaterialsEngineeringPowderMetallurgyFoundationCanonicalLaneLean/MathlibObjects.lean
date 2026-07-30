import MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PowderMetallurgySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PowderMetallurgyAdmittedObject where
  space : PowderMetallurgySpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure PowderMetallurgyEndgameState where
  object : PowderMetallurgyAdmittedObject

def PowderMetallurgyWitnessClosed (O : PowderMetallurgyAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse