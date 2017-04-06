class DashboardController < ApplicationController

  before_action :authenticate_user!

  def show
    resp = Net::HTTP.get_response(uri)
    @body = JSON.parse(resp.body)
    @body = @body.group_by do |payload|
      payload["commit"]["author"]["date"]
    end
  end

  private

  def uri
    URI.parse("https://api.github.com/repos/cloudhealthkinnect/cloudhealth/commits?access_token=#{current_user.access_token}")
  end

end
