import canonicallaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsGranularMaterialsLemmaCanonicalLaneLean

structure ParticleSizeDistributionPackage where
  sieveCurve : Type u
  d10Defined : Prop
  d50Defined : Prop
  d90Defined : Prop
  uniformityCoeff : Prop
  curvatureCoeff : Prop

structure ParticleSizeDistributionEvidence (P : ParticleSizeDistributionPackage) where
  d10DefinedClosed : P.d10Defined
  d50DefinedClosed : P.d50Defined
  d90DefinedClosed : P.d90Defined
  uniformityCoeffClosed : P.uniformityCoeff
  curvatureCoeffClosed : P.curvatureCoeff

def ParticleSizeDistributionClosed (P : ParticleSizeDistributionPackage) : Prop :=
  P.d10Defined ∧ P.d50Defined ∧ P.d90Defined ∧ P.uniformityCoeff ∧ P.curvatureCoeff

theorem particle_size_distribution_closed_from_evidence (P : ParticleSizeDistributionPackage)
    (Ev : ParticleSizeDistributionEvidence P) : ParticleSizeDistributionClosed P := by
  exact And.intro Ev.d10DefinedClosed
    (And.intro Ev.d50DefinedClosed
      (And.intro Ev.d90DefinedClosed
        (And.intro Ev.uniformityCoeffClosed Ev.curvatureCoeffClosed)))

end MaterialsGranularMaterialsLemmaCanonicalLaneLean
end HautevilleHouse