function onKill(player, target)
        if target:isPlayer() or target:getMaster() then
                return true
        end

        if(isMonster(target)) then
        local killAmount = player:getStorageValue(Storage.ForgottenKnowledge.DiamondServantCounter)
                if(string.lower(getCreatureName(target)) == "diamond servant replica") and killAmount < 5 then
                         player:setStorageValue(Storage.ForgottenKnowledge.DiamondServantCounter, killAmount + 1)
                elseif(string.lower(getCreatureName(target)) == "diamond servant replica") and killAmount == 5 then
                        player:setStorageValue(Storage.ForgottenKnowledge.DiamondServantCounter, killAmount + 1)
                        player:getPosition():sendMagicEffect(CONST_ME_THUNDER)
                else
                        return true
                end
        end

        return true
end
