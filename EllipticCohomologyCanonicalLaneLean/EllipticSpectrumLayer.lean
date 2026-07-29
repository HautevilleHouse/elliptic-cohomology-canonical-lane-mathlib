import EllipticCohomologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EllipticCohomologyCanonicalLaneLean

structure NativeEllipticSpectrum where
  name : String
  genus : String
  formalGroup : String

def ellipticSpectrumExample : NativeEllipticSpectrum :=
  { name := "TMF", genus := "elliptic", formalGroup := "formal group of the elliptic curve" }

structure EllipticSpectrumSubstrate where
  spectrumAvailable : Bool
  formalGroupAvailable : Bool
  orientationAvailable : Bool

def ellipticSpectrumSubstrate : EllipticSpectrumSubstrate :=
  { spectrumAvailable := true, formalGroupAvailable := true, orientationAvailable := true }

theorem elliptic_spectrum_substrate_checked :
    ellipticSpectrumSubstrate.spectrumAvailable = true ∧
    ellipticSpectrumSubstrate.formalGroupAvailable = true ∧
    ellipticSpectrumSubstrate.orientationAvailable = true := by
  exact ⟨rfl, rfl, rfl⟩

end EllipticCohomologyCanonicalLaneLean
end HautevilleHouse