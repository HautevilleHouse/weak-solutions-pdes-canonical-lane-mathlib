import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure WeakSolutionSpace (Ω : Type) [MeasureSpace Ω] where
  testFunctionSpace : Type
  linearForms : Type
  integrationByPartsSatisfied : Prop
  boundaryTermsControlled : Prop

structure WeakSolutionSpaceEvidence (S : WeakSolutionSpace Ω) where
  integrationByPartsSatisfiedClosed : S.integrationByPartsSatisfied
  boundaryTermsControlledClosed : S.boundaryTermsControlled

def WeakSolutionSpaceClosed (S : WeakSolutionSpace Ω) : Prop :=
  S.integrationByPartsSatisfied ∧ S.boundaryTermsControlled

theorem weak_solution_space_closed_from_evidence
    (S : WeakSolutionSpace Ω) (E : WeakSolutionSpaceEvidence S) :
    WeakSolutionSpaceClosed S := by
  exact And.intro E.integrationByPartsSatisfiedClosed E.boundaryTermsControlledClosed

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse