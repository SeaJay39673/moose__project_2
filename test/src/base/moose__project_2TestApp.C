//* This file is part of the MOOSE framework
//* https://www.mooseframework.org
//*
//* All rights reserved, see COPYRIGHT for full restrictions
//* https://github.com/idaholab/moose/blob/master/COPYRIGHT
//*
//* Licensed under LGPL 2.1, please see LICENSE for details
//* https://www.gnu.org/licenses/lgpl-2.1.html
#include "moose__project_2TestApp.h"
#include "moose__project_2App.h"
#include "Moose.h"
#include "AppFactory.h"
#include "MooseSyntax.h"

InputParameters
moose__project_2TestApp::validParams()
{
  InputParameters params = moose__project_2App::validParams();
  params.set<bool>("use_legacy_material_output") = false;
  params.set<bool>("use_legacy_initial_residual_evaluation_behavior") = false;
  return params;
}

moose__project_2TestApp::moose__project_2TestApp(InputParameters parameters) : MooseApp(parameters)
{
  moose__project_2TestApp::registerAll(
      _factory, _action_factory, _syntax, getParam<bool>("allow_test_objects"));
}

moose__project_2TestApp::~moose__project_2TestApp() {}

void
moose__project_2TestApp::registerAll(Factory & f, ActionFactory & af, Syntax & s, bool use_test_objs)
{
  moose__project_2App::registerAll(f, af, s);
  if (use_test_objs)
  {
    Registry::registerObjectsTo(f, {"moose__project_2TestApp"});
    Registry::registerActionsTo(af, {"moose__project_2TestApp"});
  }
}

void
moose__project_2TestApp::registerApps()
{
  registerApp(moose__project_2App);
  registerApp(moose__project_2TestApp);
}

/***************************************************************************************************
 *********************** Dynamic Library Entry Points - DO NOT MODIFY ******************************
 **************************************************************************************************/
// External entry point for dynamic application loading
extern "C" void
moose__project_2TestApp__registerAll(Factory & f, ActionFactory & af, Syntax & s)
{
  moose__project_2TestApp::registerAll(f, af, s);
}
extern "C" void
moose__project_2TestApp__registerApps()
{
  moose__project_2TestApp::registerApps();
}
