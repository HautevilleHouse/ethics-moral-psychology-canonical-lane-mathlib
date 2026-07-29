import EthicsMoralPsychologyCanonicalLaneLean.MoralDilemmas

/-!
# Utilitarianism Package
-/

namespace HautevilleHouse
namespace EthicsMoralPsychologyCanonicalLaneLean

structure UtilitarianismPackage (A : AdmissibleClass) where
  utilityPrinciple : Prop
  greatestHappiness : Prop
  impartiality : Prop

structure UtilitarianismEvidence (A : AdmissibleClass) (U : UtilitarianismPackage A) where
  utilityPrincipleClosed : U.utilityPrinciple
  greatestHappinessClosed : U.greatestHappiness
  impartialityClosed : U.impartiality

def UtilitarianismClosed (A : AdmissibleClass) (U : UtilitarianismPackage A) : Prop :=
  U.utilityPrinciple ∧ U.greatestHappiness ∧ U.impartiality

theorem utilitarianism_closed_from_evidence (A : AdmissibleClass) (U : UtilitarianismPackage A)
    (E : UtilitarianismEvidence A U) : UtilitarianismClosed A U := by
  exact And.intro E.utilityPrincipleClosed
    (And.intro E.greatestHappinessClosed E.impartialityClosed)

end EthicsMoralPsychologyCanonicalLaneLean
end HautevilleHouse
