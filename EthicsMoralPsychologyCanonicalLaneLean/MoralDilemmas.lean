import EthicsMoralPsychologyCanonicalLaneLean.MoralFoundations

/-!
# Moral Dilemmas Package
-/

namespace HautevilleHouse
namespace EthicsMoralPsychologyCanonicalLaneLean

structure MoralDilemma where
  scenario : String
  options : List String
  resolved : Prop

structure MoralDilemmasPackage (A : AdmissibleClass) where
  dilemmas : List MoralDilemma
  allResolved : Prop

structure MoralDilemmasEvidence (A : AdmissibleClass) (D : MoralDilemmasPackage A) where
  allResolvedClosed : D.allResolved

def MoralDilemmasClosed (A : AdmissibleClass) (D : MoralDilemmasPackage A) : Prop :=
  D.allResolved

theorem moral_dilemmas_closed_from_evidence (A : AdmissibleClass) (D : MoralDilemmasPackage A)
    (E : MoralDilemmasEvidence A D) : MoralDilemmasClosed A D := by
  exact E.allResolvedClosed

end EthicsMoralPsychologyCanonicalLaneLean
end HautevilleHouse
