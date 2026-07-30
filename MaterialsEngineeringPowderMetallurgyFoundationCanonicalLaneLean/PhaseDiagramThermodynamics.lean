import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  binaryPhaseDiagram : Prop
  ternaryPhaseDiagram : Prop
  solidSolubilityLimit : Prop
  eutecticComposition : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  binaryPhaseDiagramClosed : P.binaryPhaseDiagram
  ternaryPhaseDiagramClosed : P.ternaryPhaseDiagram
  solidSolubilityLimitClosed : P.solidSolubilityLimit
  eutecticCompositionClosed : P.eutecticComposition

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.binaryPhaseDiagram ∧ P.ternaryPhaseDiagram ∧ P.solidSolubilityLimit ∧ P.eutecticComposition

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.binaryPhaseDiagramClosed
    (And.intro E.ternaryPhaseDiagramClosed
      (And.intro E.solidSolubilityLimitClosed E.eutecticCompositionClosed))

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse
