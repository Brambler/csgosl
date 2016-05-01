#!/bin/sh
# -*- tcl -*-
# The next line is executed by /bin/sh, but not tcl \
exec wish "$0" ${1+"$@"}

## Application config
variable applicationConfig [CreateConfig \
    [list \
        name     "applicationConfig" \
        prefix   "Application" \
        fileName "$configFolder/application.cfg" \
        saveProc "SaveConfigFileApplication" \
    ] \
    [list \
        "bool"      [list fullconfig "0" "Enable this option to be able to fine tune all csgo server parameters.\nA number of new configuration pages, one per game mode, will be displayed.\nYou need to restart csgosl after this change."]\
        "bool"      [list tclconsole "0" "Open tcl console when starting csgosl.\nWindows only"]\
        "bool"      [list trace "0" "Control tracing. Traces are printed to the terminal (linux) and in the console tab (Windows)."]\
        "string"    [list mainwingeometry "800x600+100+100" "last saved windows size and location."]\
    ] \
]

variable applicationLayout [CreateLayout \
    [list \
        configName  "applicationConfig" \
        tabName     "Application" \
        help        "Application" \
    ] \
    [list \
        h1      [list "csgosl application settings"] \
        space   [list] \
        h2      [list "GUI"] \
        line    [list] \
        space   [list] \
        parm    [list fullconfig] \
        space   [list] \
        h2      [list "Troubleshooting"] \
        line    [list] \
        space   [list] \
        parm    [list tclconsole] \
        parm    [list trace] \
        space   [list] \
        func    [list LayoutFuncSetDefaultsAll] \
        space   [list] \
    ] \
]
