import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure SobolevSpacePackage (Ω : Type*) [TopologicalSpace Ω] where
  distributionalDerivativeType : Type u
  integrabilityExponent : ℝ
  normDefined : Prop
  completeness : Prop
  embeddingTheorem : Prop

structure SobolevSpaceEvidence {Ω : Type*} [TopologicalSpace Ω] (S : SobolevSpacePackage Ω) where
  normDefinedClosed : S.normDefined
  completenessClosed : S.completeness
  embeddingTheoremClosed : S.embeddingTheorem

def SobolevSpaceClosed {Ω : Type*} [TopologicalSpace Ω] (S : SobolevSpacePackage Ω) : Prop :=
  S.normDefined ∧ S.completeness ∧ S.embeddingTheorem

theorem sobolev_space_closed_from_evidence {Ω : Type*} [TopologicalSpace Ω] (S : SobolevSpacePackage Ω) (E : SobolevSpaceEvidence S) : SobolevSpaceClosed S := by
  exact And.intro E.normDefinedClosed (And.intro E.completenessClosed E.embeddingTheoremClosed)

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse