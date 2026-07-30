import MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PowderMetallurgyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse