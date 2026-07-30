import canonicalLaneMathlib.AdmissibleClass
import WeakSolutionsPdesCanonicalLaneLean.SobolevSpaces

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure GalerkinApproximationPackage (Ω : Type*) [TopologicalSpace Ω] {S : SobolevSpacePackage Ω} where
  finiteDimensionalSubspaces : Type u
  approximateSolution : Type v
  convergence : Prop
  errorEstimate : Prop

structure GalerkinApproximationEvidence {Ω : Type*} [TopologicalSpace Ω] {S : SobolevSpacePackage Ω} (G : GalerkinApproximationPackage Ω S) where
  convergenceClosed : G.convergence
  errorEstimateClosed : G.errorEstimate

def GalerkinApproximationClosed {Ω : Type*} [TopologicalSpace Ω] {S : SobolevSpacePackage Ω} (G : GalerkinApproximationPackage Ω S) : Prop :=
  G.convergence ∧ G.errorEstimate

theorem galerkin_approximation_closed_from_evidence {Ω : Type*} [TopologicalSpace Ω] {S : SobolevSpacePackage Ω} (G : GalerkinApproximationPackage Ω S) (E : GalerkinApproximationEvidence G) : GalerkinApproximationClosed G := by
  exact And.intro E.convergenceClosed E.errorEstimateClosed

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse