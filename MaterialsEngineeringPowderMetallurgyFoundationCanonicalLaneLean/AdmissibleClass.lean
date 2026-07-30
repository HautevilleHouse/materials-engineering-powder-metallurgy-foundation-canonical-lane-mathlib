import MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : PowderMetallurgyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PowderMetallurgyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse