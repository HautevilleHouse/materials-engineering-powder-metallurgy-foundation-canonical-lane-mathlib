import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure PowderCharacterizationPackage where
  particleSizeDistribution : Type u
  morphology : Type v
  apparentDensity : Prop
  flowRate : Prop
  compressibility : Prop
  particleSizeDistributionClosed : particleSizeDistribution
  morphologyClosed : morphology
  apparentDensityTerm : apparentDensity
  flowRateTerm : flowRate
  compressibilityTerm : compressibility

structure PowderCharacterizationEvidence (P : PowderCharacterizationPackage) where
  apparentDensityClosed : P.apparentDensity
  flowRateClosed : P.flowRate
  compressibilityClosed : P.compressibility

def PowderCharacterizationClosed (P : PowderCharacterizationPackage) : Prop :=
  P.apparentDensity ∧ P.flowRate ∧ P.compressibility

theorem powder_characterization_closed_from_evidence (P : PowderCharacterizationPackage) (E : PowderCharacterizationEvidence P) :
    PowderCharacterizationClosed P := by
  exact And.intro E.apparentDensityClosed (And.intro E.flowRateClosed E.compressibilityClosed)

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse