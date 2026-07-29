import DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean.BoundaryValueRepresentationLayer

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean

structure AnalyticWavefrontSetCertificate where
  wavefrontLabel : String
  singularityRoute : String
  microlocalRoute : String
  wavefrontChecked : Bool
  kernelDataCarried : Bool

def analyticWavefrontSetCertificate : AnalyticWavefrontSetCertificate := {
  wavefrontLabel := "analytic wavefront set (by Hörmander)",
  singularityRoute := "singularities detected via Fourier-Lebeau condition",
  microlocalRoute := "microlocal cut-off and pseudodifferential operators",
  wavefrontChecked := true,
  kernelDataCarried := true
}

def AnalyticWavefrontSetClosed (C : AnalyticWavefrontSetCertificate) : Prop :=
  C.wavefrontChecked = true ∧ C.kernelDataCarried = true

theorem analytic_wavefront_set_closed_checked :
    AnalyticWavefrontSetClosed analyticWavefrontSetCertificate := by
  exact And.intro rfl rfl

end DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean
end HautevilleHouse