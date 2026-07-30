import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure FractureMechanicsPackage where
  crackPropagation : Type u
  stressIntensityFactor : Type v
  fractureToughness : Prop
  parisLaw : Prop
  fatigueCrackGrowth : Prop
  crackPropagationClosed : crackPropagation
  stressIntensityFactorClosed : stressIntensityFactor
  fractureToughnessTerm : fractureToughness
  parisLawTerm : parisLaw
  fatigueCrackGrowthTerm : fatigueCrackGrowth

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness
  parisLawClosed : F.parisLaw
  fatigueCrackGrowthClosed : F.fatigueCrackGrowth

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness ∧ F.parisLaw ∧ F.fatigueCrackGrowth

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.fractureToughnessClosed (And.intro E.parisLawClosed E.fatigueCrackGrowthClosed)

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse