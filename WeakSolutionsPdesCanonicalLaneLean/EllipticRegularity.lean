import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeakSolutionsPdesCanonicalLaneLean.SobolevSpaces

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure EllipticRegularityPackage where
  ellipticOperator : Type u
  solutionGain : Prop
  bootstrappingEstimate : Prop
  maximalRegularity : Prop

structure EllipticRegularityEvidence (E : EllipticRegularityPackage) where
  solutionGainClosed : E.solutionGain
  bootstrappingEstimateClosed : E.bootstrappingEstimate
  maximalRegularityClosed : E.maximalRegularity

def EllipticRegularityClosed (E : EllipticRegularityPackage) : Prop :=
  E.solutionGain ∧ E.bootstrappingEstimate ∧ E.maximalRegularity

theorem elliptic_regularity_closed_from_evidence (E : EllipticRegularityPackage)
    (Ev : EllipticRegularityEvidence E) : EllipticRegularityClosed E := by
  exact And.intro Ev.solutionGainClosed
    (And.intro Ev.bootstrappingEstimateClosed Ev.maximalRegularityClosed)

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse