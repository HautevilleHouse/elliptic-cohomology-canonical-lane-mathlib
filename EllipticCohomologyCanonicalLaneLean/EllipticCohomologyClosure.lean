import EllipticCohomologyCanonicalLaneLean.EllipticCohomologyCertificate
import EllipticCohomologyCanonicalLaneLean.FinalTheorem

noncomputable section

namespace HautevilleHouse
namespace EllipticCohomologyCanonicalLaneLean

def EllipticCohomologyAdmittedClosure (A : AdmissibleClass) : Prop :=
  ConstrainedTheoremClosure A ∧ EllipticCohomologyAdmittedCertificateClosed

theorem elliptic_cohomology_admitted_closure_checked (A : AdmissibleClass) :
    EllipticCohomologyAdmittedClosure A := by
  refine ⟨?_, ?_⟩
  · exact constrained_theorem_closure A
  · exact elliptic_cohomology_admitted_certificate_checked

theorem elliptic_cohomology_unrestricted_classical_boundary_carried :
    ellipticCohomologyCertificate.unrestrictedClassicalClosure = false := by
  rfl

end EllipticCohomologyCanonicalLaneLean
end HautevilleHouse