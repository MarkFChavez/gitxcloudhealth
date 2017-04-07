class DashboardController < ApplicationController
  def show
    @body = GithubCommits.new.call
  end
end
