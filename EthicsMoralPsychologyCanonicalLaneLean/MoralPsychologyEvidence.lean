import EthicsMoralPsychologyCanonicalLaneLean.NormativeEthicsFramework

namespace HautevilleHouse
namespace EthicsMoralPsychologyCanonicalLaneLean

structure MoralPsychologyEvidence (E : NormativeEthicsPackage) where
  moralJudgmentConsistent : Prop
  emotionalResponseValid : Prop
  socialIntuitionModeled : Prop
  cognitiveReasoningRational : Prop
  evidenceClosed : moralJudgmentConsistent ∧ emotionalResponseValid ∧ socialIntuitionModeled ∧ cognitiveReasoningRational

def MoralPsychologyClosed (E : NormativeEthicsPackage) : Prop :=
  ∃ (ev : MoralPsychologyEvidence E), ev.evidenceClosed

theorem moral_psychology_closed_intro (E : NormativeEthicsPackage) (ev : MoralPsychologyEvidence E) :
    MoralPsychologyClosed E := by
  refine ⟨ev, ev.evidenceClosed⟩

end EthicsMoralPsychologyCanonicalLaneLean
end HautevilleHouse