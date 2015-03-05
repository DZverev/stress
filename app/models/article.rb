class Article < ActiveRecord::Base
  has_and_belongs_to_many :authors

  @@phrases = ["Do you think it'll rain today?", "Do you think it's going to rain tomorrow?", "Does it often snow in the winter in Massachusetts?", "How's business?", "Is it close?", "Is it possible?", "Is it ready?", "It costs 20 dollars per hour.", "It hurts here.", "It will arrive shortly.", "It's far from here.", "It's going to be hot today.", "It's north of here.", "It's over there.", "It's raining.", "It's too late.", "It's very important.", "The roads are slippery.", "What will the weather be like tomorrow?", "What's the room rate"]

  class << self
    def generate
      a_title = @@phrases.sample
      a_intro = @@phrases.sample(4).join(' ')
      a_content = @@phrases.sample(10).join(' ')
      self.create! title: a_title, intro: a_intro, content: a_content
    end
  end

end
