local tourBucket = 1067 -- tried to spell tour with numbers
local originalBuckets = {}

RegisterNetEvent('tropic-cityguide:startTour', function()
    local src = source
    originalBuckets[src] = GetPlayerRoutingBucket(src)

    SetPlayerRoutingBucket(src, tourBucket)
    TriggerClientEvent('tropic-cityguide:beginTourClient', src, tourBucket)
end)

RegisterNetEvent('tropic-cityguide:endTour', function()
    local src = source
    local original = originalBuckets[src] or 0

    SetPlayerRoutingBucket(src, original)
    originalBuckets[src] = nil
end)
