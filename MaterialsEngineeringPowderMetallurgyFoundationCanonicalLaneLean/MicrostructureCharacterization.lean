import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure MicrostructurePackage where
  grainSizeDistribution : Prop
  porosityFraction : Prop
  particleMorphology : Prop
  sinteringNeckGrowth : Prop

structure MicrostructureEvidence (M : MicrostructurePackage) where
  grainSizeDistributionClosed : M.grainSizeDistribution
  porosityFractionClosed : M.porosityFraction
  particleMorphologyClosed : M.particleMorphology
  sinteringNeckGrowthClosed : M.sinteringNeckGrowth

def MicrostructureClosed (M : MicrostructurePackage) : Prop :=
  M.grainSizeDistribution ∧ M.porosityFraction ∧ M.particleMorphology ∧ M.sinteringNeckGrowth

theorem microstructure_closed_from_evidence (M : MicrostructurePackage) (E : MicrostructureEvidence M) :
    MicrostructureClosed M := by
  exact And.intro E.grainSizeDistributionClosed
    (And.intro E.porosityFractionClosed
      (And.intro E.particleMorphologyClosed E.sinteringNeckGrowthClosed))

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse
