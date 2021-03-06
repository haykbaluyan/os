/*++

Copyright (c) 2012 Minoca Corp.

    This file is licensed under the terms of the GNU General Public License
    version 3. Alternative licensing terms are available. Contact
    info@minocacorp.com for details. See the LICENSE file at the root of this
    project for complete licensing information.

Module Name:

    Drivers

Abstract:

    This directory contains kernel-mode drivers that provide hardware
    support for the kernel and applications.

Author:

    Evan Green 26-Jul-2012

Environment:

    Debug

--*/

function build() {
    drivers = [
        "//drivers/acpi:acpi",
        "//drivers/ata:ata",
        "//drivers/devrem:devrem",
        "//drivers/fat:fat",
        "//drivers/i8042:i8042",
        "//drivers/net:net_drivers",
        "//drivers/null:null",
        "//drivers/part:part",
        "//drivers/pci:pci",
        "//drivers/plat:platform_drivers",
        "//drivers/ramdisk:ramdisk",
        "//drivers/sd:sd_drivers",
        "//drivers/special:special",
        "//drivers/term/ser16550:ser16550",
        "//drivers/usb:usb_drivers",
        "//drivers/videocon:videocon"
    ];

    if ((arch == "armv7") || (arch == "armv6")) {
        drivers += [
            "//drivers/dma:dma_drivers",
            "//drivers/gpio:gpio_drivers",
            "//drivers/i8042/pl050:pl050",
            "//drivers/spb:spb_drivers"
        ];
    }

    entries = group("drivers", drivers);
    return entries;
}

return build();
