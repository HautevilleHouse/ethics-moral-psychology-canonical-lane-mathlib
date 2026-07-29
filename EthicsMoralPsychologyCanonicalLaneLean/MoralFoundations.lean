import EthicsMoralPsychologyCanonicalLaneLean.AdmissibleClass

/-!
# Moral Foundations Package
-/

namespace HautevilleHouse
namespace EthicsMoralPsychologyCanonicalLaneLean

structure MoralFoundationsPackage (A : AdmissibleClass) where
  careHarm : Prop
  fairnessCheating : Prop
  loyaltyBetrayal : Prop
  authoritySubversion : Prop
  sanctityDegradation : Prop
  libertyOppression : Prop

structure MoralFoundationsEvidence (A : AdmissibleClass) (M : MoralFoundationsPackage A) where
  careHarmClosed : M.careHarm
  fairnessCheatingClosed : M.fairnessCheating
  loyaltyBetrayalClosed : M.loyaltyBetrayal
  authoritySubversionClosed : M.authoritySubversion
  sanctityDegradationClosed : M.sanctityDegradation
  libertyOppressionClosed : M.libertyOppression

def MoralFoundationsClosed (A : AdmissibleClass) (M : MoralFoundationsPackage A) : Prop :=
  M.careHarm ∧ M.fairnessCheating ∧ M.loyaltyBetrayal ∧
  M.authoritySubversion ∧ M.sanctityDegradation ∧ M.libertyOppression

theorem moral_foundations_closed_from_evidence (A : AdmissibleClass) (M : MoralFoundationsPackage A)
    (E : MoralFoundationsEvidence A M) : MoralFoundationsClosed A M := by
  exact And.intro E.careHarmClosed
    (And.intro E.fairnessCheatingClosed
      (And.intro E.loyaltyBetrayalClosed
        (And.intro E.authoritySubversionClosed
          (And.intro E.sanctityDegradationClosed
            E.libertyOppressionClosed))))

end EthicsMoralPsychologyCanonicalLaneLean
end HautevilleHouse
