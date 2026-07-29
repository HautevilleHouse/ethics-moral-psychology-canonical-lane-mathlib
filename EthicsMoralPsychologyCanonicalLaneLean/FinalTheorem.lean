import EthicsMoralPsychologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EthicsMoralPsychologyCanonicalLaneLean

def ConstrainedMoralClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_moral_endgame (A : AdmissibleClass) :
    ConstrainedMoralClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EthicsMoralPsychologyCanonicalLaneLean
end HautevilleHouse