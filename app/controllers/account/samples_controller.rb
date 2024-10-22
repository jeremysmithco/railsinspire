class Account::SamplesController < ApplicationController
  def show
    @samples = current_user.samples.kept
  end
end
