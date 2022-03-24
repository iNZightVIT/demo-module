# demo module for iNZight

This module demonstrates the basics of creating an addon module for iNZight using tools in the 'iNZightModules' package.

## Structure

**module** contains a set of specific files allowing developers to control how their module appears in iNZight, including menus, toolbars. Most of these _can_ be overridden manually within the main module, but this should make it clearer what's going on.

**R** for generic R files needed by the module that don't fit the main structure (e.g., helper functions). This directory will be loaded into the module components.

If you define multiple class objects within the module, you should specify the main one either by assigning the variable `module_name` or by manually configuring the `module/menu.R` file.
