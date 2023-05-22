# Terraspace example stack

# Usage

To deploy the "mortgages" stack to a Dev environment:

> `TS_ENV=dev terraspace up mortgages`

To deploy the "savings" stack to the Personal 01 environment, with 1 initial node instead of the 2 that Dev is defined with:

> `TS_ENV=personal01 terraspace up savings`

# Creating a new environment

To add a new environment, simply create a new `.tfvars` file in the respective `app/stacks/mortgages|savings/tfvars` directory

# Extending

- Clusters can be defined with any number of properties. In the `gke-cluster` module, make it flexible - variables wherever possible, other than stuff that would *never* change (e.g. you might *always* want Autopilot enabled)

- New "intermediate" or "middle-man" modules can be created. In our Stacks, we're calling the `networking` module and the `gke-cluster` module. If we did this for 5 Stacks... and added additional module calls to each Stack... we'd end up repeating a ton of code. Instead, we could create a module called `base` which contains the module calls to `gke-cluster` and `networking`, then our Stacks could just call `base` with different variables