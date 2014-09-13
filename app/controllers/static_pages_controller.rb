class StaticPagesController < ApplicationController
  def home
    @from_controller = "zmienna zadeklarowana"
    @linki = { 'facebook' => 'http://www.facebook.com', 'google' => 'http://google.pl' }
  end
end
