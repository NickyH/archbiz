module ApplicationHelper

  def login_nav
    if @auth.present?
      link_to(@auth.email, login_path, :method => :delete, :class => 'button alert')
    else
      link_to('Login', login_path, :class => 'button success')
    end
  end

    def show_recipe_instructions(instructions, tutorials)
    words = instructions.split.map do |word|
      if word.downcase.in?(tutorials.map(&:name).map(&:downcase))
        link_to(word, Tutorial.where("name ilike ?", word).first)
      else
        word
      end
    end
    words.join(' ')
  end

end