class Scene
    def enter()
      puts "This scene is not yet configured. Subclass it and implement enter()."
      exit(1)
    end
end


class Engine

    def initialize(scene_map)
      @scene_map = scene_map
    end

    def play()
      current_scene = @scene_map.opening_scene()
      last_scene = @scene_map.next_scene('finished')

      while current_scene != last_scene
        next_scene_name = current_scene.enter()
        current_scene = @scene_map.next_scene(next_scene_name)
      end
      
      current_scene.enter()
    end
end

class Death < Scene

  @@DeathMessage = [
    "Sorry you, better luck next time",
    "Game over, you sucks",
    "See you later, you are not good at this"
  ]

  def enter()
    puts @@DeathMessage[rand(0..(@@DeathMessage.length - 1))]
    exit(1)
  end
end

class CentralCorridor < Scene

  def enter()
    puts "You are on a ship now"
    puts "Some Pirates will gets the control of it in a few minutes"
    puts "You are in the center half and you have 2 options"
    puts " 1) Enter in The Bomb Door (in wich you can active the bomb and them try to scape)."
    puts " 2) Go and get one of the emergency Boats and scape, hopping the pirates dont catch you."
    puts " Which one you choose? please type: Bomb or Boats to select a door"

    action = $stdin.gets.chomp

    if action == "Boats"
      puts "Now you enter to this room and you ram as quick as you could"
      puts "You entered to the boats and started the engine"
      return 'EscapeBoatWithoutActivatingTheBomb'

    elsif action == "Bomb"
      puts "You wisely entered to this romm and waited til the pirates were close to the ship"
      puts "Now that they arriving, and you wants to activate the bomb. However"
      return 'Bomb'

    else
      puts "DOES NOT COMPUTE! CHOOSE AN OPTION"
      return 'central_corridor'
    end
  end
end

class Bomb < Scene

  def enter()
    puts "The bomb has 2 buttons one is blue and another is yellow"
    puts "one of them activates the bomb during 2 minutes and another explote inmediately"
    puts "Which one you choose: blue or yellow?"

    buttonColor = $stdin.gets.chomp

    if buttonColor == "blue"
      puts "Upss you chose the wrong color and the bomb explote"
      return 'death'
    
    elsif buttonColor == "yellow"
    puts "With the 2 minutes you have 'til the bomb explode you got out to the boat room"
    return 'EscapeBoatWithTheBombActivated'

    else
      puts "DOES NOT COMPUTE!"
      return 'Bomb'
    end
  end
end

class EscapeBoatWithTheBombActivated < Scene
  def enter()
    puts "The pirates are now in the ship and You scape with a boat and then the bomb explote"
    puts "The boat does not have enough gas, However, another ship was"
    puts "close and saw the explotion and they save you."
    puts "Congratulation thanks God you chose the right options you are alive."
    return 'finished'
  end
end

class EscapeBoatWithoutActivatingTheBomb < Scene
  def enter()
        puts "Unfotunately the boat does not have enough gas and the pirates cought you"
        puts "The Pirates burned you"
        return 'death'
  end
end

class Finished < Scene
  def enter()
    puts "You won! Good job."
  end
end

class Map

    @@scenes = {
    'central_corridor' => CentralCorridor.new(),
    'Bomb' => Bomb.new(),
    'EscapeBoatWithTheBombActivated' => EscapeBoatWithTheBombActivated.new(),
    'EscapeBoatWithoutActivatingTheBomb' => EscapeBoatWithoutActivatingTheBomb.new(),
    'death' => Death.new(),
    'finished' => Finished.new(),
  }

    def initialize( start_scene)
      @start_scene = start_scene
    end

    def next_scene( scene_name)
      val = @@scenes[scene_name]
      return val
    end

    def opening_scene()
      return next_scene(@start_scene)
    end
end


a_map = Map.new('central_corridor')
a_game = Engine.new(a_map)
a_game.play()