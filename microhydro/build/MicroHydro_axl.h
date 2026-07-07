/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/
// #WARNING#: This file has been generated automatically. Do not edit.
// Axlstar version 1.0
/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

#ifndef ARCANE_CASEOPTION_AXLSTAR_MICROHYDRO_MICROHYDRO_H
#define ARCANE_CASEOPTION_AXLSTAR_MICROHYDRO_MICROHYDRO_H

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

#include "arcane/utils/String.h"

#include "arcane/CaseOptions.h"
#include "arcane/CaseOptionsMulti.h"
#include "arcane/CaseOptionBuildInfo.h"
#include "arcane/XmlNodeList.h"
#include "arcane/ItemGroup.h"
#include "arcane/CaseOptionService.h"

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

ARCANE_BEGIN_NAMESPACE
extern "C++" bool 
_caseOptionConvert(const Arcane::CaseOptionBase&,
                   const Arcane::String&,
                   Arcane::ItemGroup &);
extern "C++" bool 
_caseOptionConvert(const Arcane::CaseOptionBase&,
                   const Arcane::String&,
                   Arcane::FaceGroup &);
ARCANE_END_NAMESPACE

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

namespace MicroHydro {

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

//! Options
class CaseOptionsMicroHydro
{
public:

  /*-------------------------------------------------------------------------*/
  /*--------------------------- Complex Options -----------------------------*/
  /*-------------------------------------------------------------------------*/
  // Generation for option 'boundary-condition'
      // Generating multiple arity CaseOption for complex option value 'boundary-condition'
  class CaseOptionBoundaryConditionValue
  : public Arcane::CaseOptionComplexValue
    , private MicroHydro::IBoundaryCondition
  {
  public:

    typedef CaseOptionBoundaryConditionValue ThatClass;

    CaseOptionBoundaryConditionValue(Arcane::ICaseOptionsMulti* opt,Arcane::ICaseOptionList* icl, const Arcane::XmlNode& element)
    : Arcane::CaseOptionComplexValue(opt,icl,element)
      , value(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "value", _element(),
        /* default    */ Arcane::String(),
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
     , type(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "type", _element(),
        /* default    */ Arcane::String(),
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false),
        /* type       */ "MicroHydroTypes::eBoundaryCondition")
      , surface(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "surface", _element(),
        /* default    */ Arcane::String(),
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false),
        /* type       */ "Arcane::FaceGroup")

    {

      {
        auto x = new Arcane::CaseOptionEnumValue(
          /* enum value name */ Arcane::String("Vx"),
          /* enum object     */ (int)(MicroHydroTypes::VelocityX));
        type.addEnumValue(x,false);
      }
      {
        auto x = new Arcane::CaseOptionEnumValue(
          /* enum value name */ Arcane::String("Vy"),
          /* enum object     */ (int)(MicroHydroTypes::VelocityY));
        type.addEnumValue(x,false);
      }
      {
        auto x = new Arcane::CaseOptionEnumValue(
          /* enum value name */ Arcane::String("Vz"),
          /* enum object     */ (int)(MicroHydroTypes::VelocityZ));
        type.addEnumValue(x,false);
      }

    }
 public:
  // Interfaces for multi-arity class CaseOptionsBoundaryCondition
  
    Arcane::Real getValue() { return value(); }
   Arcane::ICaseFunction* getValueFunction() { return value.function(); }
   Arcane::IStandardFunction* getValueStandardFunction() { return value.standardFunction(); }
 
 
    Arcane::FaceGroup getSurface() { return surface(); }
     MicroHydroTypes::eBoundaryCondition getType() { return type(); }
 
   // Interfaces for complex options
  
  
    MicroHydro::IBoundaryCondition* _interface() { return this; }
  public:

    const ThatClass* operator->() const { return this; }

  public:
   
  Arcane::CaseOptionReal    value;
  Arcane::CaseOptionEnumT< MicroHydroTypes::eBoundaryCondition >   type;
  Arcane::CaseOptionExtendedT< Arcane::FaceGroup >   surface;
  };

  // Generation for sub-option 'boundary-condition'
  class CaseOptionBoundaryCondition
    : public Arcane::CaseOptionsMulti
    , private Arcane::ArrayView< CaseOptionBoundaryConditionValue * >       
  {
  public:

    typedef Arcane::ArrayView< CaseOptionBoundaryConditionValue * > BaseClass;

    typedef CaseOptionBoundaryConditionValue value_type;

  public:

    CaseOptionBoundaryCondition(Arcane::ICaseOptionList* icl,
              const Arcane::String& s, const Arcane::XmlNode& element)
      : Arcane::CaseOptionsMulti(icl,s,element,0,-1) 
    {
    // Generating translations and default values.
        }

    BaseClass operator()() { return (*this); }

  protected:
    void multiAllocate(const Arcane::XmlNodeList& elist)
    {
      Arcane::Integer s = elist.size();
      value_type** v = 0;
      if (s!=0)
        v = new value_type*[s];
      _setArray(v,s);
      v = _ptr();
      m_interfaces.resize(s);
      for( Arcane::Integer i=0; i<s; ++i ){
        v[i] = new value_type(this,configList(),elist[i]);
        m_interfaces[i] = v[i]->_interface();
      }
    }

  public:

    ~CaseOptionBoundaryCondition()
    {
      Arcane::Integer s = count();
      if (s==0) return;
      value_type** v = _ptr();
      for( Arcane::Integer i=0; i<s; ++i ){
        delete v[i];
      }
      delete[] v;
    }

  public:

    const value_type& operator[](Arcane::Integer i) const
      { return *(BaseClass::operator[](i)); }
    value_type& operator[](Arcane::Integer i)
      { return *(BaseClass::operator[](i)); }
    Arcane::Integer count() const
      { return BaseClass::size(); }
    Arcane::Integer size() const
      { return BaseClass::size(); }

  public: 

    Arcane::ConstArrayView< MicroHydro::IBoundaryCondition* > _interface()
      { return m_interfaces; }

  private: 

    Arcane::UniqueArray< MicroHydro::IBoundaryCondition* > m_interfaces;
  };
  

  /*-------------------------------------------------------------------------*/
  /*--------------------------- Non Complex Options -------------------------*/
  /*-------------------------------------------------------------------------*/
  
  CaseOptionsMicroHydro(Arcane::ICaseMng* cm)
    : m_case_options(new Arcane::CaseOptions(cm,"micro-hydro"))
      , deltatMin(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "deltat-min", _element(),
        /* default    */ Arcane::String(),
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , deltatMax(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "deltat-max", _element(),
        /* default    */ Arcane::String(),
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , deltatInit(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "deltat-init", _element(),
        /* default    */ Arcane::String(),
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , finalTime(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "final-time", _element(),
        /* default    */ Arcane::String(),
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , cfl(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "cfl", _element(),
        /* default    */ "0.3",
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , variationInf(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "variation-inf", _element(),
        /* default    */ "0.99",
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , variationSup(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "variation-sup", _element(),
        /* default    */ "0.10",
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , densityGlobalRatio(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "density-global-ratio", _element(),
        /* default    */ "0.1",
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , viscosityLinearCoef(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "viscosity-linear-coef", _element(),
        /* default    */ "1.0",
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , viscosityQuadraticCoef(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "viscosity-quadratic-coef", _element(),
        /* default    */ "1.0",
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , checkNumericalResult(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "check-numerical-result", _element(),
        /* default    */ "false",
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , stOutput(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "st-output", _element(),
        /* default    */ "SimpleCsvOutput",
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false),
        /* allow-null */ false,
        /* optional   */ false)
      , stComparator(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "st-comparator", _element(),
        /* default    */ "SimpleCsvComparator",
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false),
        /* allow-null */ false,
        /* optional   */ false)
      , volume(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "volume", _element(),
        /* default    */ Arcane::String(),
        /* min-occurs */ 0,
        /* max-occurs */ -1,
        /* optional   */ false),
        /* type       */ "Arcane::ItemGroup")
      , boundaryCondition(_configList(),
        /* name       */ "boundary-condition", _element())
  {

finalTime.addAlternativeNodeName(
          /* language         */ Arcane::String("fr"),
          /* alternative name */ Arcane::String("temps-final"));
  }

public:
  // Interfaces for main CaseOptions
  
    Arcane::Real getDeltatMin() { return deltatMin(); }
   Arcane::ICaseFunction* getDeltatMinFunction() { return deltatMin.function(); }
   Arcane::IStandardFunction* getDeltatMinStandardFunction() { return deltatMin.standardFunction(); }
    Arcane::Real getDeltatMax() { return deltatMax(); }
   Arcane::ICaseFunction* getDeltatMaxFunction() { return deltatMax.function(); }
   Arcane::IStandardFunction* getDeltatMaxStandardFunction() { return deltatMax.standardFunction(); }
    Arcane::Real getDeltatInit() { return deltatInit(); }
   Arcane::ICaseFunction* getDeltatInitFunction() { return deltatInit.function(); }
   Arcane::IStandardFunction* getDeltatInitStandardFunction() { return deltatInit.standardFunction(); }
    Arcane::Real getFinalTime() { return finalTime(); }
   Arcane::ICaseFunction* getFinalTimeFunction() { return finalTime.function(); }
   Arcane::IStandardFunction* getFinalTimeStandardFunction() { return finalTime.standardFunction(); }
    Arcane::Real getCfl() { return cfl(); }
   Arcane::ICaseFunction* getCflFunction() { return cfl.function(); }
   Arcane::IStandardFunction* getCflStandardFunction() { return cfl.standardFunction(); }
    Arcane::Real getVariationInf() { return variationInf(); }
   Arcane::ICaseFunction* getVariationInfFunction() { return variationInf.function(); }
   Arcane::IStandardFunction* getVariationInfStandardFunction() { return variationInf.standardFunction(); }
    Arcane::Real getVariationSup() { return variationSup(); }
   Arcane::ICaseFunction* getVariationSupFunction() { return variationSup.function(); }
   Arcane::IStandardFunction* getVariationSupStandardFunction() { return variationSup.standardFunction(); }
    Arcane::Real getDensityGlobalRatio() { return densityGlobalRatio(); }
   Arcane::ICaseFunction* getDensityGlobalRatioFunction() { return densityGlobalRatio.function(); }
   Arcane::IStandardFunction* getDensityGlobalRatioStandardFunction() { return densityGlobalRatio.standardFunction(); }
    Arcane::Real getViscosityLinearCoef() { return viscosityLinearCoef(); }
   Arcane::ICaseFunction* getViscosityLinearCoefFunction() { return viscosityLinearCoef.function(); }
   Arcane::IStandardFunction* getViscosityLinearCoefStandardFunction() { return viscosityLinearCoef.standardFunction(); }
    Arcane::Real getViscosityQuadraticCoef() { return viscosityQuadraticCoef(); }
   Arcane::ICaseFunction* getViscosityQuadraticCoefFunction() { return viscosityQuadraticCoef.function(); }
   Arcane::IStandardFunction* getViscosityQuadraticCoefStandardFunction() { return viscosityQuadraticCoef.standardFunction(); }
    bool getCheckNumericalResult() { return checkNumericalResult(); }
   Arcane::ICaseFunction* getCheckNumericalResultFunction() { return checkNumericalResult.function(); }
   Arcane::IStandardFunction* getCheckNumericalResultStandardFunction() { return checkNumericalResult.standardFunction(); }
 
    Arcane::ConstArrayView<  Arcane::ItemGroup > getVolume() { return volume; }
 
 
     Arcane::ISimpleTableOutput* getStOutput() { return stOutput(); }
    Arcane::ISimpleTableComparator* getStComparator() { return stComparator(); }
  // Interfaces for complex options
   Arcane::ConstArrayView<  MicroHydro::IBoundaryCondition* > getBoundaryCondition() { return boundaryCondition._interface(); }
  
  
public:

  Arcane::ICaseOptions* caseOptions() const 
  { 
    return m_case_options.get();
  }
  
  Arcane::ICaseOptionList* configList() const 
  {
    return m_case_options->configList(); 
  }
  
  void setCaseModule(Arcane::IModule* m) 
  { 
    m_case_options->setCaseModule(m); 
  }
  
  void setCaseServiceInfo(Arcane::IServiceInfo* si) 
  {
    m_case_options->setCaseServiceInfo(si); 
  }
  
  void addAlternativeNodeName(const Arcane::String& lang,
                              const Arcane::String& name)
  { 
    m_case_options->addAlternativeNodeName(lang,name); 
  }

private:

  Arcane::ICaseOptionList* _configList() const { return configList(); }
  Arcane::XmlNode _element() const { return Arcane::XmlNode(); }

private:

  static Arcane::ICaseOptions* _createCaseOption(Arcane::ICaseMng* cm,Arcane::ICaseOptions* co);

  Arcane::ReferenceCounter<Arcane::ICaseOptions> m_case_options;

public:

  
  Arcane::CaseOptionReal    deltatMin;
  Arcane::CaseOptionReal    deltatMax;
  Arcane::CaseOptionReal    deltatInit;
  Arcane::CaseOptionReal    finalTime;
  Arcane::CaseOptionReal    cfl;
  Arcane::CaseOptionReal    variationInf;
  Arcane::CaseOptionReal    variationSup;
  Arcane::CaseOptionReal    densityGlobalRatio;
  Arcane::CaseOptionReal    viscosityLinearCoef;
  Arcane::CaseOptionReal    viscosityQuadraticCoef;
  Arcane::CaseOptionBool    checkNumericalResult;
  Arcane::CaseOptionServiceT< Arcane::ISimpleTableOutput >   stOutput;
  Arcane::CaseOptionServiceT< Arcane::ISimpleTableComparator >   stComparator;
  Arcane::CaseOptionMultiExtendedT< Arcane::ItemGroup  >   volume;
  CaseOptionBoundaryCondition   boundaryCondition;
};

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

}

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

#endif



/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/
// #WARNING#: This file has been generated automatically. Do not edit.
// Axlstar version 1.0
/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

#ifndef ARCANE_MODULE_AXLSTAR_MICROHYDRO_MICROHYDRO_H
#define ARCANE_MODULE_AXLSTAR_MICROHYDRO_MICROHYDRO_H

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

#include "arcane/VariableTypes.h"
#include "arcane/EntryPoint.h"
#include "arcane/ISubDomain.h"
#include "arcane/ModuleBuildInfo.h"
#include "arcane/ModuleFactory.h"
#include "arcane/ServiceRegisterer.h"
#include "arcane/BasicModule.h"
#include "arcane/ServiceInfo.h"

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

namespace Arcane
{
class ISubDomain;
class IModule;
}

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

namespace MicroHydro {

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

class CaseOptionsMicroHydro;

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

//! Generation de la classe de base du Module
class ArcaneMicroHydroObject
  : public Arcane::BasicModule
{
public:

  static void fillServiceInfo(Arcane::ServiceInfo* si)
  {
    si->setCaseOptionsFileName("MicroHydro_.");
    si->setAxlVersion(1.0);
    si->setDefaultTagName(Arcane::String("micro-hydro"));
    si->setAxlContent(getAxlContent());
  }

public:

  ArcaneMicroHydroObject(const Arcane::ModuleBuildInfo& mb)
    : Arcane::BasicModule(mb)
    , m_options(nullptr)
    , m_density(Arcane::VariableBuildInfo(this, "Density" ))
    , m_pressure(Arcane::VariableBuildInfo(this, "Pressure" ))
    , m_cell_mass(Arcane::VariableBuildInfo(this, "CellMass" ))
    , m_internal_energy(Arcane::VariableBuildInfo(this, "InternalEnergy" ))
    , m_volume(Arcane::VariableBuildInfo(this, "CellVolume" ))
    , m_old_volume(Arcane::VariableBuildInfo(this, "OldCellVolume" ))
    , m_cell_viscosity_force(Arcane::VariableBuildInfo(this, "CellViscosityForce" ))
    , m_cell_viscosity_work(Arcane::VariableBuildInfo(this, "CellViscosityWork" ))
    , m_force(Arcane::VariableBuildInfo(this, "Force" , Arcane::IVariable::PNoDump| Arcane::IVariable::PNoNeedSync))
    , m_velocity(Arcane::VariableBuildInfo(this, "Velocity" ))
    , m_node_mass(Arcane::VariableBuildInfo(this, "NodeMass" ))
    , m_adiabatic_cst(Arcane::VariableBuildInfo(this, "AdiabaticCst" ))
    , m_caracteristic_length(Arcane::VariableBuildInfo(this, "CaracteristicLength" ))
    , m_sound_speed(Arcane::VariableBuildInfo(this, "SoundSpeed" ))
    , m_node_coord(Arcane::VariableBuildInfo(this, "NodeCoord" ))
    , m_cell_cqs(Arcane::VariableBuildInfo(this, "CellCQS" ))
    , m_viscosity_work(Arcane::VariableBuildInfo(this, "ViscosityWork" ))
    , m_delta_t_n(Arcane::VariableBuildInfo(this, "CenteredDeltaT" ))
    , m_delta_t_f(Arcane::VariableBuildInfo(this, "SplitDeltaT" ))
    , m_old_dt_f(Arcane::VariableBuildInfo(this, "OldDTf" ))
    , m_density_ratio_maximum(Arcane::VariableBuildInfo(this, "DensityRatioMaximum" ))
  {
    m_options = new CaseOptionsMicroHydro(mb.subDomain()->caseMng());
    m_options->setCaseModule(this);
    addEntryPoint(this, "SH_HydroBuild", 
                  &ArcaneMicroHydroObject::hydroBuild,
                  Arcane::IEntryPoint::WBuild,
                  Arcane::IEntryPoint::PNone);
    addEntryPoint(this, "SH_HydroExit", 
                  &ArcaneMicroHydroObject::hydroExit,
                  Arcane::IEntryPoint::WExit,
                  Arcane::IEntryPoint::PNone);
    addEntryPoint(this, "SH_HydroInit", 
                  &ArcaneMicroHydroObject::hydroInit,
                  Arcane::IEntryPoint::WInit,
                  Arcane::IEntryPoint::PNone);
    addEntryPoint(this, "SH_HydroStartInit", 
                  &ArcaneMicroHydroObject::hydroStartInit,
                  Arcane::IEntryPoint::WStartInit,
                  Arcane::IEntryPoint::PNone);
    addEntryPoint(this, "SH_HydroOnMeshChanged", 
                  &ArcaneMicroHydroObject::hydroOnMeshChanged,
                  Arcane::IEntryPoint::WOnMeshChanged,
                  Arcane::IEntryPoint::PNone);
    addEntryPoint(this, "SH_DoOneIteration", 
                  &ArcaneMicroHydroObject::doOneIteration,
                  Arcane::IEntryPoint::WComputeLoop,
                  Arcane::IEntryPoint::PNone);
  }

  virtual ~ArcaneMicroHydroObject()
  {
    delete m_options;
  }

public:

  //! points d'entrée
  virtual void hydroBuild() = 0; // HydroBuild
  virtual void hydroExit() = 0; // HydroExit
  virtual void hydroInit() = 0; // HydroInit
  virtual void hydroStartInit() = 0; // HydroStartInit
  virtual void hydroOnMeshChanged() = 0; // HydroOnMeshChanged
  virtual void doOneIteration() = 0; // DoOneIteration

  //! Options du jeu de données du module
  CaseOptionsMicroHydro* options() const { return m_options; }

private:

  //! Options du jeu de données du module
  CaseOptionsMicroHydro* m_options;

protected:

  //! Variables du module
  Arcane::VariableCellReal m_density;
  Arcane::VariableCellReal m_pressure;
  Arcane::VariableCellReal m_cell_mass;
  Arcane::VariableCellReal m_internal_energy;
  Arcane::VariableCellReal m_volume;
  Arcane::VariableCellReal m_old_volume;
  Arcane::VariableCellReal m_cell_viscosity_force;
  Arcane::VariableCellReal m_cell_viscosity_work;
  Arcane::VariableNodeReal3 m_force;
  Arcane::VariableNodeReal3 m_velocity;
  Arcane::VariableNodeReal m_node_mass;
  Arcane::VariableCellReal m_adiabatic_cst;
  Arcane::VariableCellReal m_caracteristic_length;
  Arcane::VariableCellReal m_sound_speed;
  Arcane::VariableNodeReal3 m_node_coord;
  Arcane::VariableCellArrayReal3 m_cell_cqs;
  Arcane::VariableCellReal m_viscosity_work;
  Arcane::VariableScalarReal m_delta_t_n;
  Arcane::VariableScalarReal m_delta_t_f;
  Arcane::VariableScalarReal m_old_dt_f;
  Arcane::VariableScalarReal m_density_ratio_maximum;
    
private:
 static Arcane::FileContent getAxlContent()
 {
   const char* str_content = "";
   const Arcane::Byte* content = (const Arcane::Byte*)(str_content);
   Arcane::Span<const Arcane::Byte> bytes(content,0);
   int file_version = 1;
   return Arcane::FileContent(bytes,file_version,"");
 }

};

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

#define ARCANE_REGISTER_MODULE_MICROHYDRO(class_name) \
  ARCANE_REGISTER_AXL_MODULE(class_name,Arcane::ModuleProperty("MicroHydro",false))

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

}

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

#endif

