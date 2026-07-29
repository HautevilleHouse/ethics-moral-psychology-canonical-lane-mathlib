import canonicalLaneMathlib.AdmissibleClass
import EthicsMoralPsychologyCanonicalLaneLean.MoralAdmissibleClass

namespace HautevilleHouse
namespace EthicsMoralPsychologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MoralWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EthicsMoralPsychologyCanonicalLaneLean
end HautevilleHouse