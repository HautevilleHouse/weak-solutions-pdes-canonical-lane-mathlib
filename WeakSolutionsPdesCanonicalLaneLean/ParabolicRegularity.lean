import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure ParabolicRegularityPackage (Ω : Type*) [TopologicalSpace Ω] where
  timeSpaceDomain : Type u
  weakSolution : Type v
  interiorRegularity : Prop
  boundaryRegularity : Prop
  hölderEstimate : Prop

structure ParabolicRegularityEvidence {Ω : Type*} [TopologicalSpace Ω] (P : ParabolicRegularityPackage Ω) where
  interiorRegularityClosed : P.interiorRegularity
  boundaryRegularityClosed : P.boundaryRegularity
  hölderEstimateClosed : P.hölderEstimate

def ParabolicRegularityClosed {Ω : Type*} [TopologicalSpace Ω] (P : ParabolicRegularityPackage Ω) : Prop :=
  P.interiorRegularity ∧ P.boundaryRegularity ∧ P.hölderEstimate

theorem parabolic_regularity_closed_from_evidence {Ω : Type*} [TopologicalSpace Ω] (P : ParabolicRegularityPackage Ω) (E : ParabolicRegularityEvidence P) : ParabolicRegularityClosed P := by
  exact And.intro E.interiorRegularityClosed (And.intro E.boundaryRegularityClosed E.hölderEstimateClosed)

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse