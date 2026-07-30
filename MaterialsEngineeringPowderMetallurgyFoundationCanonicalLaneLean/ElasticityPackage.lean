import MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean.CrystallographyPackage

/-!
# Elasticity Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure ElasticityPackage {G : PowderMetallurgyFoundation}
    {F : PhaseDiagramPackage G} {C : CrystallographyPackage F} where
  stressStrainTensor : Prop
  hookesLawAnisotropic : Prop
  elasticModuliComputed : Prop
  yieldCriterionDefined : Prop

structure ElasticityEvidence {G : PowderMetallurgyFoundation}
    {F : PhaseDiagramPackage G} {C : CrystallographyPackage F}
    (E : ElasticityPackage C) where
  stressStrainTensorClosed : E.stressStrainTensor
  hookesLawAnisotropicClosed : E.hookesLawAnisotropic
  elasticModuliComputedClosed : E.elasticModuliComputed
  yieldCriterionDefinedClosed : E.yieldCriterionDefined

def ElasticityClosed {G : PowderMetallurgyFoundation}
    {F : PhaseDiagramPackage G} {C : CrystallographyPackage F}
    (E : ElasticityPackage C) : Prop :=
  E.stressStrainTensor ∧ E.hookesLawAnisotropic ∧
  E.elasticModuliComputed ∧ E.yieldCriterionDefined

theorem elasticity_closed_from_evidence
    {G : PowderMetallurgyFoundation} {F : PhaseDiagramPackage G}
    {C : CrystallographyPackage F} (E : ElasticityPackage C)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressStrainTensorClosed
    (And.intro Ev.hookesLawAnisotropicClosed
      (And.intro Ev.elasticModuliComputedClosed Ev.yieldCriterionDefinedClosed))

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse