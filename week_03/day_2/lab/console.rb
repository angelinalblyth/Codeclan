require('pry-byebug')
require_relative('models/bounty')

Bounty.delete_all

space_cowboy1 = Bounty.new({
  'name' => 'Spike Spiegel',
  'bounty_value' => '500',
  'danger_level' => 'ermagerdyerderd',
  'home_world' => 'Mars'
})

space_cowboy2 = Bounty.new({
  'name' => 'Jet Black',
  'bounty_value' => '250',
  'danger_level' => 'high',
  'home_world' => 'Ganymede'
})


space_cowboy1.save()
space_cowboy2.save()

# cowboys = Bounty.all()

space_cowboy1.name = "Vicious"
space_cowboy1.update()

updated_cowboys = Bounty.all()

binding.pry

nil
