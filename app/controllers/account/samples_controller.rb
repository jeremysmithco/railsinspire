class Account::SamplesController < ApplicationController
  def show
    @samples = current_user.samples
  end
end
