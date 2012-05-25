#!/usr/bin/env ruby
require 'cadbury'
class KidoMath
  def self.level
   print <<'HEREDOC'
Welcome to kido math!.red
At which level are you in?
 1. Learner.
 2. Intermediate.
 3. Expert.

Please Enter your level : 
HEREDOC
  self.parseopt()
  end
  
  def self.parseopt
    choice = gets.chomp.to_i
    if (1..3) === choice
        choice
    else
            self.level()
    end
  end

  def self.ask(level=1)
    operations = ['+','-','*','/']
    case level
    when 1
      rand1 = 1 + rand(10)
      rand2 = 1 + rand(10)
      randop = operations[rand(operations.length)].chomp
      if rand1 > rand2
        res = rand1.send(randop,rand2)
        print "#{rand1} #{randop} #{rand2} = "
      else
            res = rand2.send(randop,rand1)
            print "#{rand2} #{randop} #{rand1} = "
      end
      kid_said = gets.to_i
      if res == kid_said
          print "Correct answer, here are the gems for you :) keep it up! "
          Cadbury.gems(res)
          print "\n"
      else
          puts "Sorry the anwser is #{res} :("
      end
    when 2
      rand1 = 1 + rand(100)
      rand2 = 1 + rand(100)
      randop = operations[rand(operations.length)].chomp
      res = rand1.send(randop,rand2)
      print "#{rand1} #{randop} #{rand2} = "
      kid_said = gets.to_i
      if res == kid_said
          print "Correct answer, here are the gems for you :) keep it up! "
          Cadbury.gems(10)
          print "\n"
      else
          puts "Sorry the anwser is #{res} :("
      end
     when 3
       rand1 = 1 + rand(200)
       rand2 = 1 + rand(200)
       randop = operations[rand(operations.length)].chomp
       res = rand1.send(randop,rand2)
       print "#{rand1} #{randop} #{rand2} = "
       kid_said = gets.to_i
       if res == kid_said
           print "Correct answer, here are the gems for you :) keep it up! "
           Cadbury.gems(10)
           print "\n"
       else
           puts "Sorry the anwser is #{res} :("
       end
    end
  end

  def self.start
   level = self.level()
   self.ask(level)
   print "Want to play more? Type 'Yes or No' : "
   more = gets
   if more.chomp.casecmp("Yes") == 0
       self.start()
   else
       puts "Bye!!! :o)"
       exit
   end

  end
end

Kidomath.start
