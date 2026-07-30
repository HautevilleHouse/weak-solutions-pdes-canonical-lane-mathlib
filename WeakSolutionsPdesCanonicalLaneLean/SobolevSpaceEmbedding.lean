import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure SobolevSpaceEmbeddingPackage where
  domainDimension : Nat
  sobolevExponentP : ℝ
  embeddingExponentQ : ℝ
  embeddingContinuous : Prop
  embeddingCompact : Prop
  domainRegular : Prop

structure SobolevSpaceEmbeddingEvidence (S : SobolevSpaceEmbeddingPackage) where
  embeddingContinuousClosed : S.embeddingContinuous
  embeddingCompactClosed : S.embeddingCompact
  domainRegularClosed : S.domainRegular

def SobolevSpaceEmbeddingClosed (S : SobolevSpaceEmbeddingPackage) : Prop :=
  S.embeddingContinuous ∧ S.embeddingCompact ∧ S.domainRegular

theorem sobolev_space_embedding_closed_from_evidence
    (S : SobolevSpaceEmbeddingPackage) (E : SobolevSpaceEmbeddingEvidence S) :
    SobolevSpaceEmbeddingClosed S := by
  exact And.intro E.embeddingContinuousClosed
    (And.intro E.embeddingCompactClosed E.domainRegularClosed)

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse