import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure SinteringKineticsPackage where
  diffusionCoefficient : Prop
  grainBoundaryMigration : Prop
  densificationRate : Prop
  poreClosureModel : Prop

structure SinteringKineticsEvidence (S : SinteringKineticsPackage) where
  diffusionCoefficientClosed : S.diffusionCoefficient
  grainBoundaryMigrationClosed : S.grainBoundaryMigration
  densificationRateClosed : S.densificationRate
  poreClosureModelClosed : S.poreClosureModel

def SinteringKineticsClosed (S : SinteringKineticsPackage) : Prop :=
  S.diffusionCoefficient ∧ S.grainBoundaryMigration ∧ S.densificationRate ∧ S.poreClosureModel

theorem sintering_kinetics_closed_from_evidence (S : SinteringKineticsPackage) (E : SinteringKineticsEvidence S) :
    SinteringKineticsClosed S := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.grainBoundaryMigrationClosed
      (And.intro E.densificationRateClosed E.poreClosureModelClosed))

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse
