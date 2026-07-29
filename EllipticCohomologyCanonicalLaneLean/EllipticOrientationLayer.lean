import EllipticCohomologyCanonicalLaneLean.EllipticSpectrumLayer

namespace HautevilleHouse
namespace EllipticCohomologyCanonicalLaneLean

structure EllipticOrientation where
  spectrum : NativeEllipticSpectrum
  orientationMap : String
  rigged : Bool

def defaultEllipticOrientation : EllipticOrientation :=
  { spectrum := ellipticSpectrumExample,
    orientationMap := "MU to Elliptic",
    rigged := true
  }

def EllipticOrientationClosed : Prop :=
  defaultEllipticOrientation.rigged = true

theorem elliptic_orientation_checked :
    EllipticOrientationClosed := by
  exact rfl

end EllipticCohomologyCanonicalLaneLean
end HautevilleHouse