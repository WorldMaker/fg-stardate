function onInit()
    CalendarManager.registerDayDisplayHandler("stardate", StardateDisplayDay);
    CalendarManager.registerDateDisplayHandler("stardate", StardateDisplayStardate)
end

function StardateDisplayDay(nDay)
    return string.format("%01.1f", (nDay - 1) / 10)
end

function StardateDisplayStardate(sEpoch, nYear, nMonth, nDay, bAddWeekDay, bShortOutput)
    local sDay = StardateDisplayDay(nDay);
    return string.format("%d", nYear) .. string.format("%d", nMonth - 1) .. sDay
end
