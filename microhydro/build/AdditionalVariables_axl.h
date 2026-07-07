/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/
// #WARNING#: This file has been generated automatically. Do not edit.
// Axlstar version 1.0
/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

#ifndef ARCANE_CASEOPTION_AXLSTAR_MICROHYDRO_ADDITIONALVARIABLES_H
#define ARCANE_CASEOPTION_AXLSTAR_MICROHYDRO_ADDITIONALVARIABLES_H

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

#include "arcane/utils/String.h"

#include "arcane/CaseOptions.h"
#include "arcane/CaseOptionsMulti.h"
#include "arcane/CaseOptionBuildInfo.h"
#include "arcane/XmlNodeList.h"

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

namespace MicroHydro {

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

//! Options
class CaseOptionsAdditionalVariables
{
public:

  /*-------------------------------------------------------------------------*/
  /*--------------------------- Complex Options -----------------------------*/
  /*-------------------------------------------------------------------------*/

  /*-------------------------------------------------------------------------*/
  /*--------------------------- Non Complex Options -------------------------*/
  /*-------------------------------------------------------------------------*/
  
  CaseOptionsAdditionalVariables(Arcane::ICaseMng* cm)
    : m_case_options(new Arcane::CaseOptions(cm,"additional-variables"))
      , nbAdditionalCellVariable(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "nb-additional-cell-variable", _element(),
        /* default    */ "0",
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
      , cellArrayVariableSize(Arcane::CaseOptionBuildInfo(_configList(),
        /* name       */ "cell-array-variable-size", _element(),
        /* default    */ "0",
        /* min-occurs */ 1,
        /* max-occurs */ 1,
        /* optional   */ false))
  {

  }

public:
  // Interfaces for main CaseOptions
  
    Arcane::Integer getNbAdditionalCellVariable() { return nbAdditionalCellVariable(); }
   Arcane::ICaseFunction* getNbAdditionalCellVariableFunction() { return nbAdditionalCellVariable.function(); }
   Arcane::IStandardFunction* getNbAdditionalCellVariableStandardFunction() { return nbAdditionalCellVariable.standardFunction(); }
    Arcane::Integer getCellArrayVariableSize() { return cellArrayVariableSize(); }
   Arcane::ICaseFunction* getCellArrayVariableSizeFunction() { return cellArrayVariableSize.function(); }
   Arcane::IStandardFunction* getCellArrayVariableSizeStandardFunction() { return cellArrayVariableSize.standardFunction(); }
 
 
 
   // Interfaces for complex options
  
  
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

  
  Arcane::CaseOptionInteger    nbAdditionalCellVariable;
  Arcane::CaseOptionInteger    cellArrayVariableSize;
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

#ifndef ARCANE_MODULE_AXLSTAR_MICROHYDRO_ADDITIONALVARIABLES_H
#define ARCANE_MODULE_AXLSTAR_MICROHYDRO_ADDITIONALVARIABLES_H

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

class CaseOptionsAdditionalVariables;

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

//! Generation de la classe de base du Module
class ArcaneAdditionalVariablesObject
  : public Arcane::BasicModule
{
public:

  static void fillServiceInfo(Arcane::ServiceInfo* si)
  {
    si->setCaseOptionsFileName("AdditionalVariables_.");
    si->setAxlVersion(1.0);
    si->setDefaultTagName(Arcane::String("additional-variables"));
    si->setAxlContent(getAxlContent());
  }

public:

  ArcaneAdditionalVariablesObject(const Arcane::ModuleBuildInfo& mb)
    : Arcane::BasicModule(mb)
    , m_options(nullptr)
  {
    m_options = new CaseOptionsAdditionalVariables(mb.subDomain()->caseMng());
    m_options->setCaseModule(this);
    addEntryPoint(this, "AV_Init", 
                  &ArcaneAdditionalVariablesObject::doInit,
                  Arcane::IEntryPoint::WInit,
                  Arcane::IEntryPoint::PNone);
    addEntryPoint(this, "AV_Exit", 
                  &ArcaneAdditionalVariablesObject::doExit,
                  Arcane::IEntryPoint::WExit,
                  Arcane::IEntryPoint::PNone);
    addEntryPoint(this, "AV_DoOneIteration", 
                  &ArcaneAdditionalVariablesObject::doOneIteration,
                  Arcane::IEntryPoint::WComputeLoop,
                  Arcane::IEntryPoint::PNone);
  }

  virtual ~ArcaneAdditionalVariablesObject()
  {
    delete m_options;
  }

public:

  //! points d'entrée
  virtual void doInit() = 0; // DoInit
  virtual void doExit() = 0; // DoExit
  virtual void doOneIteration() = 0; // DoOneIteration

  //! Options du jeu de données du module
  CaseOptionsAdditionalVariables* options() const { return m_options; }

private:

  //! Options du jeu de données du module
  CaseOptionsAdditionalVariables* m_options;

protected:

  //! Variables du module
    
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

#define ARCANE_REGISTER_MODULE_ADDITIONALVARIABLES(class_name) \
  ARCANE_REGISTER_AXL_MODULE(class_name,Arcane::ModuleProperty("AdditionalVariables",false))

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

}

/*---------------------------------------------------------------------------*/
/*---------------------------------------------------------------------------*/

#endif

