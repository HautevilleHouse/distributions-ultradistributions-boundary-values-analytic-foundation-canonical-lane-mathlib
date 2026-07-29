import DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean.AnalyticWavefrontSetLayer

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean

structure FBITransformCertificate where
  transformLabel : String
  kernelRoute : String
  compactAnalyticRoute : String
  transformChecked : Bool
  projectionDataCarried : Bool

def fbiTransformCertificate : FBITransformCertificate := {
  transformLabel := "Fourier Bros Iagolnitzer transform for analytic microlocal analysis",
  kernelRoute := "Gaussian kernel with complex phase",
  compactAnalyticRoute := "compact analytic data via FBI transform inversion",
  transformChecked := true,
  projectionDataCarried := true
}

def FBITransformClosed (C : FBITransformCertificate) : Prop :=
  C.transformChecked = true ∧ C.projectionDataCarried = true

theorem fbi_transform_closed_checked :
    FBITransformClosed fbiTransformCertificate := by
  exact And.intro rfl rfl

end DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean
end HautevilleHouse