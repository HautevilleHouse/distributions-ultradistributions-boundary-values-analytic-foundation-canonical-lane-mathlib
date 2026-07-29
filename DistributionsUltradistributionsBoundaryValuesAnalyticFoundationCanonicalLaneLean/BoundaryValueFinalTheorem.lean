import canonicalLaneMathlib.AdmissibleClass
import DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean.UltradistributionLayeredClosure

namespace HautevilleHouse
namespace DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AnalyticBoundaryBridgeClosed primitiveAnalyticBoundaryDatum

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  analytic_boundary_bridge_closed_checked

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def DistributionsUltradistributionsBoundaryValuesAnalyticFoundationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ UltradistributionLayerClosed ultradistributionLayerCertificate

theorem distributions_ultradistributions_boundary_values_analytic_foundation_endgame (A : AdmissibleClass) :
    DistributionsUltradistributionsBoundaryValuesAnalyticFoundationClosure A := by
  refine And.intro (bridge_from_admissible_class A) (And.intro (gate_from_admissible_class A) ?_)
  exact ultradistribution_layer_closed_checked

end DistributionsUltradistributionsBoundaryValuesAnalyticFoundationCanonicalLaneLean
end HautevilleHouse
