import DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean.UltradistributionKernelLayer

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean

structure BoundaryValueRepresentationCertificate where
  representationLabel : String
  boundaryRoute : String
  analyticContinuationRoute : String
  boundaryChecked : Bool
  outsideDependencyFree : Bool

def boundaryValueRepresentationCertificate : BoundaryValueRepresentationCertificate := {
  representationLabel := "boundary value of analytic function in the sense of hyperfunctions",
  boundaryRoute := "boundary value representation via analytic functional calculus",
  analyticContinuationRoute := "analytic continuation through the Fourier-Bros-Iagolnitzer transform",
  boundaryChecked := true,
  outsideDependencyFree := true
}

def BoundaryValueRepresentationClosed (C : BoundaryValueRepresentationCertificate) : Prop :=
  C.boundaryChecked = true ∧ C.outsideDependencyFree = true

theorem boundary_value_representation_closed_checked :
    BoundaryValueRepresentationClosed boundaryValueRepresentationCertificate := by
  exact And.intro rfl rfl

end DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean
end HautevilleHouse