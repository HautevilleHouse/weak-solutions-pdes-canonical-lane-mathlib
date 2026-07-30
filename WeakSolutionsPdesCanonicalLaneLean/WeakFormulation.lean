import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure WeakFormulationPackage where
  testFunctionSpace : Type
  bilinearForm : Prop
  linearFunctional : Prop
  weakSolutionExists : Prop
  uniquenessUnderRegularity : Prop

structure WeakFormulationEvidence (W : WeakFormulationPackage) where
  bilinearFormClosed : W.bilinearForm
  linearFunctionalClosed : W.linearFunctional
  weakSolutionExistsClosed : W.weakSolutionExists
  uniquenessUnderRegularityClosed : W.uniquenessUnderRegularity

def WeakFormulationClosed (W : WeakFormulationPackage) : Prop :=
  W.bilinearForm ∧ W.linearFunctional ∧ W.weakSolutionExists ∧ W.uniquenessUnderRegularity

theorem weak_formulation_closed_from_evidence
    (W : WeakFormulationPackage) (E : WeakFormulationEvidence W) :
    WeakFormulationClosed W := by
  exact And.intro E.bilinearFormClosed
    (And.intro E.linearFunctionalClosed
      (And.intro E.weakSolutionExistsClosed E.uniquenessUnderRegularityClosed))

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse