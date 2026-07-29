import ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ProcessOptimizationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ProcessOptimizationAdmittedObject where
  space : ProcessOptimizationSpace
  closedConvexSet : Prop
  feasibleRegion : Prop
  optimizerModel : Type
  optimizerTopology : TopologicalSpace optimizerModel
  optimalSolutionExists : Prop
  conclusion : optimalSolutionExists

structure ProcessOptimizationEndgameState where
  object : ProcessOptimizationAdmittedObject

def ProcessOptimizationWitnessClosed (O : ProcessOptimizationAdmittedObject) : Prop :=
  O.optimalSolutionExists

end ChemicalEngineeringProcessOptimizationFoundationCanonicalLaneLean
end HautevilleHouse
