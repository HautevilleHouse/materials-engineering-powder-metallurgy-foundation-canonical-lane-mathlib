import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure Elasticity where
  youngsModulus : ℕ
  poissonRatio : ℕ
  elasticConstants : List ℕ

def elasticityClosed (e : Elasticity) : Prop :=
  e.youngsModulus > 0 ∧ e.poissonRatio ∈ ℕ

structure ElasticityPackage (A : AdmissibleClass) where
  elasticity : Elasticity
  closureProof : elasticityClosed elasticity

theorem elasticity_closed (A : AdmissibleClass) (pkg : ElasticityPackage A) :
  elasticityClosed pkg.elasticity := pkg.closureProof

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse
