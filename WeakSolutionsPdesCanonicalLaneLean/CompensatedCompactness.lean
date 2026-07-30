import WeakSolutionsPdesCanonicalLaneLean.GalerkinApproximation

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure CompensatedCompactness {S : SobolevSpace} where
  approximatingSequence : ℕ → (S.domain → ℝ)
  weakConvergence : Prop
  divCurlLemma : Prop
  measureProduction : Prop
  weakConvergenceClosed : weakConvergence
  divCurlLemmaClosed : divCurlLemma
  measureProductionClosed : measureProduction

def CompensatedCompactnessClosed {S : SobolevSpace} (C : CompensatedCompactness S) : Prop :=
  C.weakConvergence ∧ C.divCurlLemma ∧ C.measureProduction

theorem compensated_compactness_closed_from_evidence {S : SobolevSpace}
    (C : CompensatedCompactness S) : CompensatedCompactnessClosed C := by
  exact And.intro C.weakConvergenceClosed
    (And.intro C.divCurlLemmaClosed C.measureProductionClosed)

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse