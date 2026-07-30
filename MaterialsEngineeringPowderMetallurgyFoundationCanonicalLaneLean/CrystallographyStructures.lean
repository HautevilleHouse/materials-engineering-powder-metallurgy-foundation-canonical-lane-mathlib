import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure CrystalStructure where
  unitCellVolume : ℕ
  crystalSystem : String
  bravaisLattice : String
  spaceGroup : String

def crystalStructureClosed (cs : CrystalStructure) : Prop :=
  cs.unitCellVolume > 0 ∧ cs.crystalSystem ≠ "" ∧ cs.bravaisLattice ≠ "" ∧ cs.spaceGroup ≠ "" 

structure CrystallographyPackage (A : AdmissibleClass) where
  crystal : CrystalStructure
  closureProof : crystalStructureClosed crystal

theorem crystallography_closed (A : AdmissibleClass) (pkg : CrystallographyPackage A) :
  crystalStructureClosed pkg.crystal := pkg.closureProof

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse
