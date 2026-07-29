import EthicsMoralPsychologyCanonicalLaneLean.MoralFoundations

/-!
# Virtue Ethics Package
-/

namespace HautevilleHouse
namespace EthicsMoralPsychologyCanonicalLaneLean

structure VirtueEthicsPackage (A : AdmissibleClass) where
  virtueDefined : Prop
  virtueCultivation : Prop
  eudaimonia : Prop

structure VirtueEthicsEvidence (A : AdmissibleClass) (V : VirtueEthicsPackage A) where
  virtueDefinedClosed : V.virtueDefined
  virtueCultivationClosed : V.virtueCultivation
  eudaimoniaClosed : V.eudaimonia

def VirtueEthicsClosed (A : AdmissibleClass) (V : VirtueEthicsPackage A) : Prop :=
  V.virtueDefined ∧ V.virtueCultivation ∧ V.eudaimonia

theorem virtue_ethics_closed_from_evidence (A : AdmissibleClass) (V : VirtueEthicsPackage A)
    (E : VirtueEthicsEvidence A V) : VirtueEthicsClosed A V := by
  exact And.intro E.virtueDefinedClosed
    (And.intro E.virtueCultivationClosed E.eudaimoniaClosed)

end EthicsMoralPsychologyCanonicalLaneLean
end HautevilleHouse
