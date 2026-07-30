import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure SinteringPackage where
  sinteringKinetics : Type u
  densificationMechanism : Type v
  grainGrowth : Prop
  poreClosure : Prop
  neckFormation : Prop
  sinteringKineticsClosed : sinteringKinetics
  densificationMechanismClosed : densificationMechanism
  grainGrowthTerm : grainGrowth
  poreClosureTerm : poreClosure
  neckFormationTerm : neckFormation

structure SinteringEvidence (S : SinteringPackage) where
  grainGrowthClosed : S.grainGrowth
  poreClosureClosed : S.poreClosure
  neckFormationClosed : S.neckFormation

def SinteringClosed (S : SinteringPackage) : Prop :=
  S.grainGrowth ∧ S.poreClosure ∧ S.neckFormation

theorem sintering_closed_from_evidence (S : SinteringPackage) (E : SinteringEvidence S) :
    SinteringClosed S := by
  exact And.intro E.grainGrowthClosed (And.intro E.poreClosureClosed E.neckFormationClosed)

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse