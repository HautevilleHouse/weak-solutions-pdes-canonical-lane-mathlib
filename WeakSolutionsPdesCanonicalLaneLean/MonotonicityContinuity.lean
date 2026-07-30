import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.WeakSolutionsPdesCanonicalLaneLean.GalerkinApproximation

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure MonotonicityContinuityPackage where
  operatorMonotone : Prop
  hemicontinuous : Prop
  pseudomonotoneImplication : Prop
  weakSolutionExistence : Prop

structure MonotonicityContinuityEvidence (M : MonotonicityContinuityPackage) where
  operatorMonotoneClosed : M.operatorMonotone
  hemicontinuousClosed : M.hemicontinuous
  pseudomonotoneImplicationClosed : M.pseudomonotoneImplication
  weakSolutionExistenceClosed : M.weakSolutionExistence

def MonotonicityContinuityClosed (M : MonotonicityContinuityPackage) : Prop :=
  M.operatorMonotone ∧ M.hemicontinuous ∧ M.pseudomonotoneImplication ∧ M.weakSolutionExistence

theorem monotonicity_continuity_closed_from_evidence (M : MonotonicityContinuityPackage)
    (E : MonotonicityContinuityEvidence M) : MonotonicityContinuityClosed M := by
  exact And.intro E.operatorMonotoneClosed
    (And.intro E.hemicontinuousClosed
      (And.intro E.pseudomonotoneImplicationClosed E.weakSolutionExistenceClosed))

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse