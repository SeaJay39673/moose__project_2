#include "moose__project_2App.h"
#include "Moose.h"
#include "AppFactory.h"
#include "ModulesApp.h"
#include "MooseSyntax.h"

InputParameters
moose__project_2App::validParams()
{
  InputParameters params = MooseApp::validParams();
  params.set<bool>("use_legacy_material_output") = false;
  params.set<bool>("use_legacy_initial_residual_evaluation_behavior") = false;
  return params;
}

moose__project_2App::moose__project_2App(InputParameters parameters) : MooseApp(parameters)
{
  moose__project_2App::registerAll(_factory, _action_factory, _syntax);
}

moose__project_2App::~moose__project_2App() {}

void
moose__project_2App::registerAll(Factory & f, ActionFactory & af, Syntax & s)
{
  ModulesApp::registerAllObjects<moose__project_2App>(f, af, s);
  Registry::registerObjectsTo(f, {"moose__project_2App"});
  Registry::registerActionsTo(af, {"moose__project_2App"});

  /* register custom execute flags, action syntax, etc. here */
}

void
moose__project_2App::registerApps()
{
  registerApp(moose__project_2App);
}

/***************************************************************************************************
 *********************** Dynamic Library Entry Points - DO NOT MODIFY ******************************
 **************************************************************************************************/
extern "C" void
moose__project_2App__registerAll(Factory & f, ActionFactory & af, Syntax & s)
{
  moose__project_2App::registerAll(f, af, s);
}
extern "C" void
moose__project_2App__registerApps()
{
  moose__project_2App::registerApps();
}
