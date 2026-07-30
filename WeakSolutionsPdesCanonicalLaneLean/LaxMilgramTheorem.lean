import canonicalLaneMathlib.AdmissibleClass
import WeakSolutionsPdesCanonicalLaneLean.WeakFormulation

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure LaxMilgramPackage (Ω : Type*) [TopologicalSpace Ω] {W : WeakFormulationPackage Ω} where
  coercivityCondition : Prop
  boundednessCondition : Prop
  uniqueSolution : Prop
  continuityEstimate : Prop

structure LaxMilgramEvidence {Ω : Type*} [TopologicalSpace Ω] {W : WeakFormulationPackage Ω} (L : LaxMilgramPackage Ω W) where
  coercivityConditionClosed : L.coercivityCondition
  boundednessConditionClosed : L.boundednessCondition
  uniqueSolutionClosed : L.uniqueSolution
  continuityEstimateClosed : L.continuityEstimate

def LaxMilgramClosed {Ω : Type*} [TopologicalSpace Ω] {W : WeakFormulationPackage Ω} (L : LaxMilgramPackage Ω W) : Prop :=
  L.coercivityCondition ∧ L.boundednessCondition ∧ L.uniqueSolution ∧ L.continuityEstimate

theorem lax_milgram_closed_from_evidence {Ω : Type*} [TopologicalSpace Ω] {W : WeakFormulationPackage Ω} (L : LaxMilgramPackage Ω W) (E : LaxMilgramEvidence L) : LaxMilgramClosed L := by
  exact And.intro E.coercivityConditionClosed (And.intro E.boundednessConditionClosed (And.intro E.uniqueSolutionClosed E.continuityEstimateClosed))

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse