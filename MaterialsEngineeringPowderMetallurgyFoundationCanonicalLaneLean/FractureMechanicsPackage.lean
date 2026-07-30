import MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean.ElasticityPackage

/-!
# Fracture Mechanics Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure FractureMechanicsPackage {G : PowderMetallurgyFoundation}
    {F : PhaseDiagramPackage G} {C : CrystallographyPackage F}
    {El : ElasticityPackage C} where
  fractureToughnessMeasured : Prop
  crackPropagationModeled : Prop
  parisLawCalibrated : Prop
  fatigueLifePredicted : Prop

structure FractureMechanicsEvidence {G : PowderMetallurgyFoundation}
    {F : PhaseDiagramPackage G} {C : CrystallographyPackage F}
    {El : ElasticityPackage C}
    (Fr : FractureMechanicsPackage El) where
  fractureToughnessMeasuredClosed : Fr.fractureToughnessMeasured
  crackPropagationModeledClosed : Fr.crackPropagationModeled
  parisLawCalibratedClosed : Fr.parisLawCalibrated
  fatigueLifePredictedClosed : Fr.fatigueLifePredicted

def FractureMechanicsClosed {G : PowderMetallurgyFoundation}
    {F : PhaseDiagramPackage G} {C : CrystallographyPackage F}
    {El : ElasticityPackage C}
    (Fr : FractureMechanicsPackage El) : Prop :=
  Fr.fractureToughnessMeasured ∧ Fr.crackPropagationModeled ∧
  Fr.parisLawCalibrated ∧ Fr.fatigueLifePredicted

theorem fracture_mechanics_closed_from_evidence
    {G : PowderMetallurgyFoundation} {F : PhaseDiagramPackage G}
    {C : CrystallographyPackage F} {El : ElasticityPackage C}
    (Fr : FractureMechanicsPackage El) (Ev : FractureMechanicsEvidence Fr) :
    FractureMechanicsClosed Fr := by
  exact And.intro Ev.fractureToughnessMeasuredClosed
    (And.intro Ev.crackPropagationModeledClosed
      (And.intro Ev.parisLawCalibratedClosed Ev.fatigueLifePredictedClosed))

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse