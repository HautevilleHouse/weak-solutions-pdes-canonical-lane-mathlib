import canonicalLaneMathlib.AdmissibleClass
import WeakSolutionsPdesCanonicalLaneLean.ParabolicRegularity

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure MaximalExistencePackage (Ω : Type*) [TopologicalSpace Ω] {P : ParabolicRegularityPackage Ω} where
  maximalTime : Type u
  existenceOnInterval : Prop
  blowupCriterion : Prop
  uniqueness : Prop

structure MaximalExistenceEvidence {Ω : Type*} [TopologicalSpace Ω] {P : ParabolicRegularityPackage Ω} (M : MaximalExistencePackage Ω P) where
  existenceOnIntervalClosed : M.existenceOnInterval
  blowupCriterionClosed : M.blowupCriterion
  uniquenessClosed : M.uniqueness

def MaximalExistenceClosed {Ω : Type*} [TopologicalSpace Ω] {P : ParabolicRegularityPackage Ω} (M : MaximalExistencePackage Ω P) : Prop :=
  M.existenceOnInterval ∧ M.blowupCriterion ∧ M.uniqueness

theorem maximal_existence_closed_from_evidence {Ω : Type*} [TopologicalSpace Ω] {P : ParabolicRegularityPackage Ω} (M : MaximalExistencePackage Ω P) (E : MaximalExistenceEvidence M) : MaximalExistenceClosed M := by
  exact And.intro E.existenceOnIntervalClosed (And.intro E.blowupCriterionClosed E.uniquenessClosed)

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse