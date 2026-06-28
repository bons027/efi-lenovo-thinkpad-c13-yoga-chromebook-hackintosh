// SSDT-PS2K.dsl
// Custom keyboard mapping for Lenovo ThinkPad C13 Yoga Chromebook (Morphius)
// Target device: \_SB.PCI0.PS2K

DefinitionBlock ("", "SSDT", 2, "HACK", "PS2K", 0x00001000)
{
    External (_SB.PCI0.PS2K, DeviceObj)

    Scope (_SB.PCI0.PS2K)
    {
        Name (RMCF, Package ()
        {
            "Keyboard", Package ()
            {
                "Swap command and option", 
                One, 
                "Swap capslock and left control", 
                Zero, 
                "Use ISO layout keyboard", 
                Zero
            }
        })
    }
}
