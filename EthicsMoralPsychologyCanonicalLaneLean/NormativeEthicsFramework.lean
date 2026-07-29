import EthicsMoralPsychologyCanonicalLaneLean.MoralAdmissibleClass

namespace HautevilleHouse
namespace EthicsMoralPsychologyCanonicalLaneLean

structure DeontologicalConstraints where
  dutyFulfilled : Prop
  rightsRespected : Prop
  ruleUniversalized : Prop

structure ConsequentialistAssessment where
  netBenefitPositive : Prop
  harmMinimized : Prop
  agentNeutral : Prop

structure VirtueEthicalCharacter where
  virtueManifested : Prop
  flourishingPromoted : Prop

structure NormativeEthicsPackage where
  deontological : DeontologicalConstraints
  consequentialist : ConsequentialistAssessment
  virtue : VirtueEthicalCharacter
  coherentIntegration : deontological ∧ consequentialist ∧ virtue

theorem normative_ethics_coherent (pkg : NormativeEthicsPackage) :
    pkg.deontological ∧ pkg.consequentialist ∧ pkg.virtue := pkg.coherentIntegration

end EthicsMoralPsychologyCanonicalLaneLean
end HautevilleHouse