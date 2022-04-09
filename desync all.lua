coroutine.resume(
    coroutine.create(
        function()
            while task.wait(0.5) do
                pcall(
                    function()
                        for i, v in next, game.Players:GetPlayers() do
                            if v.Character and v.Character:FindFirstChildOfClass("Tool") then
                                for i, v in next, v.Character:GetDescendants() do
                                    if v:IsA "Sound" then
                                        v.TimePosition = math.random(1, 100)
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    )
)
