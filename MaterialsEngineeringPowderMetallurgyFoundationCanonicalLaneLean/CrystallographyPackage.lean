import MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean.MathlibObjects

/-!
# Crystallography Package
-/

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure CrystallographyPackage {G : PowderMetallurgyFoundation}
    {F : PhaseDiagramPackage G} where
  unitCellGeometry : Prop
  bravaisLatticeClassified : Prop
  millerIndicesComputed : Prop
  xrdPatternSimulated : Prop

structure CrystallographyEvidence {G : PowderMetallurgyFoundation}
    {F : PhaseDiagramPackage G}
    (C : CrystallographyPackage F) where
  unitCellGeometryClosed : C.unitCellGeometry
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  millerIndicesComputedClosed : C.millerIndicesComputed
  xrdPatternSimulatedClosed : C.xrdPatternSimulated

def CrystallographyClosed {G : PowderMetallurgyFoundation}
    {F : PhaseDiagramPackage G}
    (C : CrystallographyPackage F) : Prop :=
  C.unitCellGeometry ∧ C.bravaisLatticeClassified ∧
  C.millerIndicesComputed ∧ C.xrdPatternSimulated

theorem crystallography_closed_from_evidence
    {G : PowderMetallurgyFoundation} {F : PhaseDiagramPackage G}
    (C : CrystallographyPackage F) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.unitCellGeometryClosed
    (And.intro E.bravaisLatticeClassifiedClosed
      (And.intro E.millerIndicesComputedClosed E.xrdPatternSimulatedClosed))

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse