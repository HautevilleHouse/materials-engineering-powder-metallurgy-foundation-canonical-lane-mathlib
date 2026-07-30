import MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean.AdmissibleClass
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CrystallographicPhasePackage where
  latticeType : String
  unitCellVolume : ℝ
  spaceGroup : String
  powderDiffractionPattern : Prop
  rietveldRefinementClosed : Prop

structure PhaseDiagramPackage where
  temperatureRange : ℝ × ℝ
  compositionRange : ℝ × ℝ
  phaseBoundaries : Prop
  eutecticPoints : Prop
  peritecticReactions : Prop
  phaseRuleSatisfied : Prop

structure ElasticityPackage where
  youngModulus : ℝ
  poissonRatio : ℝ
  shearModulus : ℝ
  bulkModulus : ℝ
  stressStrainRelation : Prop
  elasticityTensorClosed : Prop

structure FractureMechanicsPackage where
  fractureToughness : ℝ
  crackGrowthResistance : Prop
  parisLawRegime : Prop
  stressIntensityFactorComputed : Prop
  fractureCriterionClosed : Prop

structure PowderCharacterizationPackage where
  particleSizeDistribution : Prop
  morphologyAnalyzed : Prop
  flowabilityMeasured : Prop
  apparentDensity : ℝ
  tapDensity : ℝ
  compressibilityIndex : ℝ

structure SinteringKineticsPackage where
  activationEnergy : ℝ
  diffusionCoefficient : ℝ
  neckGrowthRate : ℝ
  densificationCurve : Prop
  grainGrowthModel : Prop
  sinteringStressComputed : Prop

structure MechanicalTestingPackage where
  tensileStrength : ℝ
  yieldStrength : ℝ
  elongationAtBreak : ℝ
  hardnessMeasured : Prop
  fatigueLimit : ℝ
  wearResistance : Prop

structure PowderMetallurgyFoundation where
  crystallography : CrystallographicPhasePackage
  phaseDiagram : PhaseDiagramPackage
  elasticity : ElasticityPackage
  fracture : FractureMechanicsPackage
  powderCharacterization : PowderCharacterizationPackage
  sintering : SinteringKineticsPackage
  mechanicalTesting : MechanicalTestingPackage

def PowderMetallurgyFoundationClosed (f : PowderMetallurgyFoundation) : Prop :=
  f.crystallography.rietveldRefinementClosed ∧
  f.phaseDiagram.phaseRuleSatisfied ∧
  f.elasticity.elasticityTensorClosed ∧
  f.fracture.fractureCriterionClosed ∧
  f.powderCharacterization.compressibilityIndex > 0 ∧
  f.sintering.sinteringStressComputed ∧
  f.mechanicalTesting.hardnessMeasured

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse