local addonName = ...

-- Queue if the base addon has not loaded yet; it drains the queue itself.
if SpeakStone_RegisterSoundPack then
    SpeakStone_RegisterSoundPack(addonName, SpeakStoneSoundLengths_Pack_SpeakStone_Forever_Audio_Pack2)
else
    SpeakStonePendingSoundPacks = SpeakStonePendingSoundPacks or {}
    table.insert(SpeakStonePendingSoundPacks,
        { name = addonName, index = SpeakStoneSoundLengths_Pack_SpeakStone_Forever_Audio_Pack2 })
end
