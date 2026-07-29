import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMoralPsychologyCanonicalLaneLean

structure AdmissibleClass where
  subject : Person
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure Person where
  name : String
  moralCapacity : Prop

def admittedClosure (A : AdmissibleClass) : Prop :=
  MoralWitnessClosed A.subject ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def MoralWitnessClosed (p : Person) : Prop :=
  p.moralCapacity

end EthicsMoralPsychologyCanonicalLaneLean
end HautevilleHouse
