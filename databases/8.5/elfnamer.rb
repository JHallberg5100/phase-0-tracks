#elfnamer
module Elfnamer
  $first_syl = ["Ai","Li","Qui","Vul","Ip","Thu","Vur","Xi","Mui","Pel", "Mev"]
  $sec_syl =["um","lul","num","eu","len","il","yu","dha","sef","fes","agr"]
  $third_syl = ["dum","vena","om","vant","das","ceb","led","jus","ved","fed","reg"]
  def name_creator
    r = Random.new
    rando1 =  r.rand(0...10)
    rando2 = r.rand(0...10)
    rando3 = r.rand(0...10)
    rando4 = r.rand(0...10)
    output = ""
    output = output + $first_syl[rando1]
    if rando2 > 4
      output = output + $sec_syl[rando3]
    end
    output = output + $third_syl[rando4]
    output
  end


  def tribe_assigner
    r = Random.new
    rando1 = r.rand(0...4)
    if rando1 == 1
      output = "Whisperleaf"
    elsif rando1 == 2
      output = "Snapfire"
    elsif rando1 == 3
      output = "Barkbender"
    else
      output = "Clanless"
    end
    output
  end
end
include Elfnamer
name = name_creator
puts name
tribe = tribe_assigner
puts tribe
