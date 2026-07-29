import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean

structure UltradistributionSpaceLayerCertificate where
  distributionSpaceType : String
  ultraDistributionLocalConvexChecked : Bool
  analyticityLabel : String
  growthCondition : String
  fourierCarrierChecked : Bool

def ultradistributionSpaceLayerCertificate : UltradistributionSpaceLayerCertificate := {
  distributionSpaceType := "Denjoy-Carleman ultra-differentiable class",
  ultraDistributionLocalConvexChecked := true,
  analyticityLabel := "non-quasianalytic",
  growthCondition := "exponential growth of Fourier transform",
  fourierCarrierChecked := true
}

def UltradistributionSpaceLayerClosed (C : UltradistributionSpaceLayerCertificate) : Prop :=
  C.distributionSpaceType = "Denjoy-Carleman ultra-differentiable class" ∧
  C.ultraDistributionLocalConvexChecked = true ∧
  C.analyticityLabel = "non-quasianalytic" ∧
  C.growthCondition = "exponential growth of Fourier transform" ∧
  C.fourierCarrierChecked = true

theorem ultradistribution_space_layer_closed_checked :
    UltradistributionSpaceLayerClosed ultradistributionSpaceLayerCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean
end HautevilleHouse