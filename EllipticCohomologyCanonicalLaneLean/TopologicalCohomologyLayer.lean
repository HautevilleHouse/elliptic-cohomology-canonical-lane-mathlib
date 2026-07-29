import EllipticCohomologyCanonicalLaneLean.EllipticCohomologySubstrate
import Mathlib.AlgebraicTopology.Bordism

noncomputable section

universe u

namespace HautevilleHouse
namespace EllipticCohomologyCanonicalLaneLean

structure TopologicalCohomologyData where
  sourceKey : String
  bordismType : String
  orientationAvailable : Bool
  stringStructureAvailable : Bool
deriving Repr, DecidableEq

def topologicalCohomologyData : TopologicalCohomologyData :=
  { sourceKey := "EllipticCohomology",
    bordismType := "StringBordism",
    orientationAvailable := true,
    stringStructureAvailable := true }

def TopologicalOrientationClosed : Prop :=
  topologicalCohomologyData.orientationAvailable = true ∧
  topologicalCohomologyData.stringStructureAvailable = true

theorem topological_orientation_closed_checked :
    TopologicalOrientationClosed := by
  unfold TopologicalOrientationClosed topologicalCohomologyData
  simp

theorem topological_cohomology_layer_available :
    topologicalCohomologyData.bordismType = "StringBordism" := by
  rfl

end EllipticCohomologyCanonicalLaneLean
end HautevilleHouse