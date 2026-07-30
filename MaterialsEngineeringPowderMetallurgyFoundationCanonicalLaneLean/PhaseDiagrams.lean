import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  binarySystem : Type u
  ternarySystem : Type v
  solidusLiquidus : Prop
  eutecticPoint : Prop
  solubilityLimit : Prop
  binarySystemClosed : binarySystem
  ternarySystemClosed : ternarySystem
  solidusLiquidusTerm : solidusLiquidus
  eutecticPointTerm : eutecticPoint
  solubilityLimitTerm : solubilityLimit

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  solidusLiquidusClosed : P.solidusLiquidus
  eutecticPointClosed : P.eutecticPoint
  solubilityLimitClosed : P.solubilityLimit

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.solidusLiquidus ∧ P.eutecticPoint ∧ P.solubilityLimit

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.solidusLiquidusClosed (And.intro E.eutecticPointClosed E.solubilityLimitClosed)

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse