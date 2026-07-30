import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure ElasticityPackage where
  elasticStiffness : Type u
  hookesLaw : Prop
  youngModulus : Prop
  poissonRatio : Prop
  shearModulus : Prop
  elasticStiffnessClosed : elasticStiffness
  hookesLawTerm : hookesLaw
  youngModulusTerm : youngModulus
  poissonRatioTerm : poissonRatio
  shearModulusTerm : shearModulus

structure ElasticityEvidence (E : ElasticityPackage) where
  hookesLawClosed : E.hookesLaw
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  shearModulusClosed : E.shearModulus

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.hookesLaw ∧ E.youngModulus ∧ E.poissonRatio ∧ E.shearModulus

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.hookesLawClosed (And.intro Ev.youngModulusClosed (And.intro Ev.poissonRatioClosed Ev.shearModulusClosed))

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse