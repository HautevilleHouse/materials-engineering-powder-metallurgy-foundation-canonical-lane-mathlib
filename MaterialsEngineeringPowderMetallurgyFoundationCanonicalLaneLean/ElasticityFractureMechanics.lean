import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure ElasticityPackage where
  elasticModulusTensor : Prop
  poissonRatio : Prop
  yieldStrength : Prop
  fractureToughness : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticModulusTensorClosed : E.elasticModulusTensor
  poissonRatioClosed : E.poissonRatio
  yieldStrengthClosed : E.yieldStrength
  fractureToughnessClosed : E.fractureToughness

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticModulusTensor ∧ E.poissonRatio ∧ E.yieldStrength ∧ E.fractureToughness

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.elasticModulusTensorClosed
    (And.intro Ev.poissonRatioClosed
      (And.intro Ev.yieldStrengthClosed Ev.fractureToughnessClosed))

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse
