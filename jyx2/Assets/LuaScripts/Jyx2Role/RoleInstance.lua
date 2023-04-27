local roleInstance = {}

--初始化角色调用
--返回false 表示不覆盖C#方法
--返回true  表示覆盖C#方法
function roleInstance.InitData(role)
    print("lua call InitData role:"..role.key)
    return false
end 

--角色升级时调用
--返回false 表示不覆盖C#方法
--返回true  表示覆盖C#方法
function roleInstance.LevelUp(role)
    print("lua call LevelUp role:"..role.key)
    return false
end 

--判断物品是否可以用
--返回空表示不使用这个lua方法
function roleInstance.CanUseItem(role,item)
    print("lua call CanUseItem role:"..role.key.." item:"..item.Id)
    return nil
end 

--使用物品后回调
--返回false 表示不覆盖C#方法
--返回true  表示覆盖C#方法
function roleInstance.UseItem(role,item)
    print("lua call UseItem role:"..role.key.." item:"..item.Id)
    return false
end


--移动力计算方式
function roleInstance.GetMoveAbility(role)
    local speed = 0 
    if role.Tili <= 5 then return 0 end 
    speed = role.Qinggong//15 - role.Hurt//40
    if speed < 0 then speed = 0 end 
    print("lua call GetMoveAbility role:"..role.key.." speed:"..speed)
    return speed
end

return roleInstance