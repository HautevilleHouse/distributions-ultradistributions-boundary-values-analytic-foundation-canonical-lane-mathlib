import DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean.MathlibStatement

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean

structure AnalyticFunctionalDatum where
  growthConditionRouteRecorded : Bool
  boundaryValueRouteRecorded : Bool
  analyticContinuationRouteRecorded : Bool

def primitiveAnalyticFunctionalDatum : AnalyticFunctionalDatum := {
  growthConditionRouteRecorded := true,
  boundaryValueRouteRecorded := true,
  analyticContinuationRouteRecorded := true
}

structure AnalyticFunctionalProjection where
  toFun : AnalyticFunctionalDatum → AnalyticFunctionalDatum
  idempotent : ∀ x, toFun (toFun x) = toFun x

def analyticFunctionalProjection : AnalyticFunctionalProjection := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem analytic_functional_projection_idempotent (D : AnalyticFunctionalDatum) :
    analyticFunctionalProjection.toFun (analyticFunctionalProjection.toFun D) = analyticFunctionalProjection.toFun D := by
  exact analyticFunctionalProjection.idempotent D

end DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean
end HautevilleHouse