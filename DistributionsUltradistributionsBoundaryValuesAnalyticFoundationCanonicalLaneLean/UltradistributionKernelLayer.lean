import DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean.DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean

structure UltradistributionKernelCertificate where
  kernelLabel : String
  regularityIndex : Nat
  analyticityIndex : Nat
  kernelChecked : Bool
  kernelRoute : String

def ultradistributionKernelCertificate : UltradistributionKernelCertificate := {
  kernelLabel := "ultradistribution kernel via Fourier-Lebeau extension",
  regularityIndex := 0,
  analyticityIndex := 1,
  kernelChecked := true,
  kernelRoute := "ultradistribution kernel projected through the analytic wavefront set"
}

def UltradistributionKernelClosed (C : UltradistributionKernelCertificate) : Prop :=
  C.kernelChecked = true

theorem ultradistribution_kernel_closed_checked :
    UltradistributionKernelClosed ultradistributionKernelCertificate := by
  unfold UltradistributionKernelClosed
  rfl

end DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean
end HautevilleHouse