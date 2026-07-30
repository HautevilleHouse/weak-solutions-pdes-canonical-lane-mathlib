import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure MonotoneOperatorPackage where
  operatorDefined : Prop
  monotonicityProperty : Prop
  coercivityProperty : Prop
  existenceOfWeakSolution : Prop

structure MonotoneOperatorEvidence (M : MonotoneOperatorPackage) where
  operatorDefinedClosed : M.operatorDefined
  monotonicityPropertyClosed : M.monotonicityProperty
  coercivityPropertyClosed : M.coercivityProperty
  existenceOfWeakSolutionClosed : M.existenceOfWeakSolution

def MonotoneOperatorClosed (M : MonotoneOperatorPackage) : Prop :=
  M.operatorDefined ∧ M.monotonicityProperty ∧ M.coercivityProperty ∧ M.existenceOfWeakSolution

theorem monotone_operator_closed_from_evidence
    (M : MonotoneOperatorPackage) (E : MonotoneOperatorEvidence M) :
    MonotoneOperatorClosed M := by
  exact And.intro E.operatorDefinedClosed
    (And.intro E.monotonicityPropertyClosed
      (And.intro E.coercivityPropertyClosed E.existenceOfWeakSolutionClosed))

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse