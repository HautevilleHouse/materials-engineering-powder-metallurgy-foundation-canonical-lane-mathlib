import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure PowderCompactionPackage where
  greenDensityDistribution : Prop
  pressureDensityRelation : Prop
  frictionCoefficient : Prop
  dieFillDensity : Prop

structure PowderCompactionEvidence (P : PowderCompactionPackage) where
  greenDensityDistributionClosed : P.greenDensityDistribution
  pressureDensityRelationClosed : P.pressureDensityRelation
  frictionCoefficientClosed : P.frictionCoefficient
  dieFillDensityClosed : P.dieFillDensity

def PowderCompactionClosed (P : PowderCompactionPackage) : Prop :=
  P.greenDensityDistribution ∧ P.pressureDensityRelation ∧ P.frictionCoefficient ∧ P.dieFillDensity

theorem powder_compaction_closed_from_evidence (P : PowderCompactionPackage) (E : PowderCompactionEvidence P) :
    PowderCompactionClosed P := by
  exact And.intro E.greenDensityDistributionClosed
    (And.intro E.pressureDensityRelationClosed
      (And.intro E.frictionCoefficientClosed E.dieFillDensityClosed))

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse
