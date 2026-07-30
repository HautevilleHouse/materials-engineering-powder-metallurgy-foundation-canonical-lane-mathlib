import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean

structure PowderProcessPackage where
  powderCharacteristics : Type u
  compactionProcess : Type v
  sinteringDensification : Prop
  powderFlowability : Prop
  greenStrength : Prop
  sinteringDensificationTerm : sinteringDensification
  powderFlowabilityTerm : powderFlowability
  greenStrengthTerm : greenStrength

structure PowderProcessEvidence (P : PowderProcessPackage) where
  sinteringDensificationClosed : P.sinteringDensification
  powderFlowabilityClosed : P.powderFlowability
  greenStrengthClosed : P.greenStrength

def PowderProcessClosed (P : PowderProcessPackage) : Prop :=
  P.sinteringDensification ∧ P.powderFlowability ∧ P.greenStrength

theorem powder_process_closed_from_evidence (P : PowderProcessPackage) (E : PowderProcessEvidence P) : PowderProcessClosed P := by
  exact And.intro E.sinteringDensificationClosed (And.intro E.powderFlowabilityClosed E.greenStrengthClosed)

end MaterialsEngineeringPowderMetallurgyFoundationCanonicalLaneLean
end HautevilleHouse