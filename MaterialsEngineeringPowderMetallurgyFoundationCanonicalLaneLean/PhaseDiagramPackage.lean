import MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean.MathlibObjects

/-!
# Phase Diagram Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure PhaseDiagramPackage (G : PowderMetallurgyFoundation) where
  temperatureCompositionGrid : Prop
  phaseBoundariesComputed : Prop
  leverRuleApplied : Prop
  eutecticIdentified : Prop

structure PhaseDiagramEvidence (G : PowderMetallurgyFoundation)
    (F : PhaseDiagramPackage G) where
  temperatureCompositionGridClosed : F.temperatureCompositionGrid
  phaseBoundariesComputedClosed : F.phaseBoundariesComputed
  leverRuleAppliedClosed : F.leverRuleApplied
  eutecticIdentifiedClosed : F.eutecticIdentified

def PhaseDiagramClosed (G : PowderMetallurgyFoundation)
    (F : PhaseDiagramPackage G) : Prop :=
  F.temperatureCompositionGrid ∧ F.phaseBoundariesComputed ∧
  F.leverRuleApplied ∧ F.eutecticIdentified

theorem phase_diagram_closed_from_evidence
    (G : PowderMetallurgyFoundation) (F : PhaseDiagramPackage G)
    (E : PhaseDiagramEvidence G F) : PhaseDiagramClosed G F := by
  exact And.intro E.temperatureCompositionGridClosed
    (And.intro E.phaseBoundariesComputedClosed
      (And.intro E.leverRuleAppliedClosed E.eutecticIdentifiedClosed))

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse