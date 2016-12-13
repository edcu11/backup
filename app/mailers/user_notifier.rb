class UserNotifier < ActionMailer::Base
  default from: "from@example.com"
  def signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for page' )
  end

  def pokemon_catch(user, pokemon)
    @user = user
    @poke = pokemon
    mail( :to => @user.email,
    :subject => 'You catched a new Pokemon!' )
  end

  def data_edit(user)
    @user = user
    mail( :to => @user.email,
    :subject => "You've edited your data")
  end
end
