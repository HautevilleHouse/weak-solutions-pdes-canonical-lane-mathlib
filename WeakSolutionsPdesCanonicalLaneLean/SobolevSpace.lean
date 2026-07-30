import WeakSolutionsPdesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WeakSolutionsPdesCanonicalLaneLean

structure SobolevSpace where
  domain : Type u
  measure : Set (domain → ℝ) → ℝ
  norm : (domain → ℝ) → ℝ
  completeness : Prop
  completenessTerm : completeness

structure SobolevEmbedding where
  space : SobolevSpace
  embeddingType : String
  inequalities : Prop
  inequalitiesClosed : inequalities

def SobolevEmbeddingClosed (E : SobolevEmbedding) : Prop :=
  E.inequalities

theorem sobolev_embedding_closed_from_evidence (E : SobolevEmbedding) :
    SobolevEmbeddingClosed E := by
  exact E.inequalitiesClosed

end WeakSolutionsPdesCanonicalLaneLean
end HautevilleHouse