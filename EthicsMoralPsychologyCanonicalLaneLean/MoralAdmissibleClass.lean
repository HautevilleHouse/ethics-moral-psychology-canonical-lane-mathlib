import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EthicsMoralPsychologyCanonicalLaneLean

structure MoralAdmissibleObject where
  agent : Type
  actionType : Type
  norms : Prop
  consequences : Prop
  conclusion : norms ∧ consequences

structure AdmissibleClass where
  object : MoralAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MoralWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def MoralWitnessClosed (O : MoralAdmissibleObject) : Prop :=
  O.conclusion

end EthicsMoralPsychologyCanonicalLaneLean
end HautevilleHouse