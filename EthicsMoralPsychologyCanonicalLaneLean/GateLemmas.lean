import canonicalLaneMathlib.AdmissibleClass
import EthicsMoralPsychologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EthicsMoralPsychologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EthicsMoralPsychologyCanonicalLaneLean
end HautevilleHouse