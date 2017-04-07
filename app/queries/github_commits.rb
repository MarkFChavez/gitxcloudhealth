class GithubCommits

  USERNAME = "mrkjlchvz"
  DEFAULT_TOKEN = Rails.application.secrets.access_token

  def initialize(username: USERNAME, token: DEFAULT_TOKEN)
    @username = username
    @token = token
  end

  def call
    resp = Net::HTTP.get_response(uri)
    body = JSON.parse(resp.body)

    if resp.code == "401"
      body = mock_body
    end

    body = body.select do |payload|
      payload["committer"]["login"] == "mrkjlchvz"
    end

    body = body.group_by do |payload|
      Date.parse(payload["commit"]["committer"]["date"])
    end
  end

  private

  def mock_body
    ary = YAML.load(File.read("config/initializers/mock_payload.yml"))
    ary["commits"].map do |hash|
      HashWithIndifferentAccess.new(hash)
    end

    ary["commits"]
  end

  def uri
    URI.parse(endpoint)
  end

  def endpoint
    "https://api.github.com/repos/cloudhealthkinnect/cloudhealth/commits?access_token=#{@token}"
  end

end
