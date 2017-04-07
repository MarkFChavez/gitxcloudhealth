class DashboardController < ApplicationController
  def show
    # resp = Net::HTTP.get_response(uri)
    # @body = JSON.parse(resp.body)
    # @body = @body.select do |payload|
    #   payload["committer"]["login"] == "mrkjlchvz"
    # end
    # @body = @body.group_by do |payload|
    #   Date.parse(payload["commit"]["committer"]["date"])
    # end
    @body = mock_body
    @body = @body.select do |payload|
      payload["committer"]["login"] == "mrkjlchvz"
    end
    @body = @body.group_by do |hash|
      Date.parse(hash[:commit][:committer][:date])
    end
  end

  private

  def mock_body
    ary = [
      {
        sha: "240a9f361186f245478ad585e86d02796f9ff73b",
        commit: {
          author: {
            name: "Mark Chavez",
            email: "markchav3z@gmail.com",
            date: "2017-04-07T07:08:48Z"
          },
          committer: {
            name: "Mark Chavez",
            email: "markchav3z@gmail.com",
            date: "2017-04-07T07:08:48Z"
          },
          message: "Fix CSV export for missing signatures This commit applies the new scope namespace for CSV export.",
          tree: {
            sha: "b2e09f2ae52416384f9a7bcb05d71202fe365b90",
            url: "https://api.github.com/repos/cloudhealthkinnect/cloudhealth/git/trees/b2e09f2ae52416384f9a7bcb05d71202fe365b90"
          },
          url: "https://api.github.com/repos/cloudhealthkinnect/cloudhealth/git/commits/240a9f361186f245478ad585e86d02796f9ff73b",
          comment_count: 0
        },
        url: "https://api.github.com/repos/cloudhealthkinnect/cloudhealth/commits/240a9f361186f245478ad585e86d02796f9ff73b",
        html_url: "https://github.com/cloudhealthkinnect/cloudhealth/commit/240a9f361186f245478ad585e86d02796f9ff73b",
        comments_url: "https://api.github.com/repos/cloudhealthkinnect/cloudhealth/commits/240a9f361186f245478ad585e86d02796f9ff73b/comments",
        author: {
          login: "mrkjlchvz",
          id: 2158281,
          avatar_url: "https://avatars1.githubusercontent.com/u/2158281?v=3",
          gravatar_id: "",
          url: "https://api.github.com/users/mrkjlchvz",
          html_url: "https://github.com/mrkjlchvz",
          followers_url: "https://api.github.com/users/mrkjlchvz/followers",
          following_url: "https://api.github.com/users/mrkjlchvz/following{/other_user}",
          gists_url: "https://api.github.com/users/mrkjlchvz/gists{/gist_id}",
          starred_url: "https://api.github.com/users/mrkjlchvz/starred{/owner}{/repo}",
        },
        committer: {
          login: "mrkjlchvz",
          id: 2158281,
          avatar_url: "https://avatars1.githubusercontent.com/u/2158281?v=3",
          gravatar_id: "",
          url: "https://api.github.com/users/mrkjlchvz",
          html_url: "https://github.com/mrkjlchvz",
          followers_url: "https://api.github.com/users/mrkjlchvz/followers",
          following_url: "https://api.github.com/users/mrkjlchvz/following{/other_user}",
          gists_url: "https://api.github.com/users/mrkjlchvz/gists{/gist_id}",
          starred_url: "https://api.github.com/users/mrkjlchvz/starred{/owner}{/repo}",
          subscriptions_url: "https://api.github.com/users/mrkjlchvz/subscriptions",
          organizations_url: "https://api.github.com/users/mrkjlchvz/orgs",
          repos_url: "https://api.github.com/users/mrkjlchvz/repos",
          events_url: "https://api.github.com/users/mrkjlchvz/events{/privacy}",
          received_events_url: "https://api.github.com/users/mrkjlchvz/received_events",
          type: "User",
          site_admin: false
        },
        parents: [
          {
            sha: "7f5c7a5458aa4665e1dfce2bf94d254a0e6ff72e",
            url: "https://api.github.com/repos/cloudhealthkinnect/cloudhealth/commits/7f5c7a5458aa4665e1dfce2bf94d254a0e6ff72e",
            html_url: "https://github.com/cloudhealthkinnect/cloudhealth/commit/7f5c7a5458aa4665e1dfce2bf94d254a0e6ff72e"
          }
        ]
      },
      {
        sha: "7f5c7a5458aa4665e1dfce2bf94d254a0e6ff72e",
        commit: {
          author: {
            name: "Mark Chavez",
            email: "markchav3z@gmail.com",
            date: "2017-04-07T06:14:01Z"
          },
          committer: {
            name: "Mark Chavez",
            email: "markchav3z@gmail.com",
            date: "2017-04-07T06:58:22Z"
          },
          message: "Add infinite scrolling to Missing signatures This commit applies paging to signature reports so that the performance won't be affected when the records get bigger.",
          tree: {
            sha: "42941a38bfb557365e525aa3e3556e879d4ac176",
            url: "https://api.github.com/repos/cloudhealthkinnect/cloudhealth/git/trees/42941a38bfb557365e525aa3e3556e879d4ac176"
          },
          url: "https://api.github.com/repos/cloudhealthkinnect/cloudhealth/git/commits/7f5c7a5458aa4665e1dfce2bf94d254a0e6ff72e",
          comment_count: 0
        },
        url: "https://api.github.com/repos/cloudhealthkinnect/cloudhealth/commits/7f5c7a5458aa4665e1dfce2bf94d254a0e6ff72e",
        html_url: "https://github.com/cloudhealthkinnect/cloudhealth/commit/7f5c7a5458aa4665e1dfce2bf94d254a0e6ff72e",
        comments_url: "https://api.github.com/repos/cloudhealthkinnect/cloudhealth/commits/7f5c7a5458aa4665e1dfce2bf94d254a0e6ff72e/comments",
        author: {
          login: "mrkjlchvz",
          id: 2158281,
          avatar_url: "https://avatars1.githubusercontent.com/u/2158281?v=3",
          gravatar_id: "",
          url: "https://api.github.com/users/mrkjlchvz",
          html_url: "https://github.com/mrkjlchvz",
          followers_url: "https://api.github.com/users/mrkjlchvz/followers",
          following_url: "https://api.github.com/users/mrkjlchvz/following{/other_user}",
          gists_url: "https://api.github.com/users/mrkjlchvz/gists{/gist_id}",
          starred_url: "https://api.github.com/users/mrkjlchvz/starred{/owner}{/repo}",
          subscriptions_url: "https://api.github.com/users/mrkjlchvz/subscriptions",
          organizations_url: "https://api.github.com/users/mrkjlchvz/orgs",
          repos_url: "https://api.github.com/users/mrkjlchvz/repos",
          events_url: "https://api.github.com/users/mrkjlchvz/events{/privacy}",
          received_events_url: "https://api.github.com/users/mrkjlchvz/received_events",
          type: "User",
          site_admin: false
        },
        committer: {
          login: "mrkjlchvz",
          id: 2158281,
          avatar_url: "https://avatars1.githubusercontent.com/u/2158281?v=3",
          gravatar_id: "",
          url: "https://api.github.com/users/mrkjlchvz",
          html_url: "https://github.com/mrkjlchvz",
          followers_url: "https://api.github.com/users/mrkjlchvz/followers",
          following_url: "https://api.github.com/users/mrkjlchvz/following{/other_user}",
          gists_url: "https://api.github.com/users/mrkjlchvz/gists{/gist_id}",
          starred_url: "https://api.github.com/users/mrkjlchvz/starred{/owner}{/repo}",
          subscriptions_url: "https://api.github.com/users/mrkjlchvz/subscriptions",
          organizations_url: "https://api.github.com/users/mrkjlchvz/orgs",
          repos_url: "https://api.github.com/users/mrkjlchvz/repos",
          events_url: "https://api.github.com/users/mrkjlchvz/events{/privacy}",
          received_events_url: "https://api.github.com/users/mrkjlchvz/received_events",
          type: "User",
          site_admin: false
        },
        parents: [
          {
            sha: "a28a476a4cb269cee1a0fb597eae7d82afb51d33",
            url: "https://api.github.com/repos/cloudhealthkinnect/cloudhealth/commits/a28a476a4cb269cee1a0fb597eae7d82afb51d33",
            html_url: "https://github.com/cloudhealthkinnect/cloudhealth/commit/a28a476a4cb269cee1a0fb597eae7d82afb51d33"
          }
        ]
      }
    ]

    ary.map do |hash|
      HashWithIndifferentAccess.new(hash)
    end
  end

  def uri
    URI.parse("https://api.github.com/repos/cloudhealthkinnect/cloudhealth/commits?access_token=#{Rails.application.secrets.access_token}")
  end

end
