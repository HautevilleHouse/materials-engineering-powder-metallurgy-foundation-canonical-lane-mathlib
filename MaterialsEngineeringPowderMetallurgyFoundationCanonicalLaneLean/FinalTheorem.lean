import MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

def ConstrainedPowderMetallurgyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_powder_metallurgy_endgame (A : AdmissibleClass) :
    ConstrainedPowderMetallurgyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse