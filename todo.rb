$tasks = Array.new

def add(task)
  $tasks << task
end

def remove(task)
  $tasks.delete(task)
end

def list
  $tasks.each_with_index do |task, index|
    puts "#{index + 1}. #{task}"
  end
  puts "\n"
end

def clear
  system('clear')
end

while true
  puts "Add task (a) \nRemove task (r)\nList tasks (l)\nExit the program (e)\n---\n"
  action = gets.chomp

  if action == "a"
    clear
    puts "What task do you want to add?\n"
    add(gets.chomp)
    clear
  elsif action == "r"
    clear
    puts "What task do you want to remove\n"
    list()
    remove(gets.chomp)
    clear
  elsif action == "l"
    clear
    list
  elsif action == "e"
    clear
    break
  end
end
