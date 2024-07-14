local tasks = {}

function add(task)
    table.insert(tasks, task)
end

function list()
    print("These are your pending tasks.\n") 
    for i=0, #tasks do
        if tasks[i] ~= nil then
            print(" - " .. tasks[i])
        end
    end
    if #tasks < 1 then
        print("No tasks to display.")        
    end
end

function remove(task)
    for i=0, #tasks do
        if tasks[i] == task then
            table.remove(tasks, i)
        end
    end
end

function clear()
    print(("\n"):rep(100))
end

while true do
    print("\nAdd task (a)\nList tasks (l)\nRemove task (r)\nExit (e)\n")
    local input = io.read()
    clear()    

    if input == "a" then
        print("What task shall be added?")
        add(io.read())
        clear()
    elseif input == "l" then
        list()
    elseif input == "r" then
        print("Which task?\n")
        list()
        print("\n")
        remove(io.read())
        clear()
    elseif input == "e" then
        print("Exiting")
        break
    end

end