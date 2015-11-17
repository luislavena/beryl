require "../../src/beryl"

EMPTY_RESPONSE = ""
MIME_HTML      = "text/html"

class DummyAction < Beryl::Action
  def call(params)
    HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
  end
end

class GitHubRouter < Beryl::Router
  routing do
    # OAuth Authorizations
    get "/authorizations", DummyAction
    get "/authorizations/:id", DummyAction
    post "/authorizations", DummyAction
    put "/authorizations/clients/:client_id", DummyAction
    patch "/authorizations/:id", DummyAction
    delete "/authorizations/:id", DummyAction
    get "/applications/:client_id/tokens/:access_token", DummyAction
    delete "/applications/:client_id/tokens", DummyAction
    delete "/applications/:client_id/tokens/:access_token", DummyAction

    # Activity
    get "/events", DummyAction
    get "/repos/:owner/:repo/events", DummyAction
    get "/networks/:owner/:repo/events", DummyAction
    get "/orgs/:org/events", DummyAction
    get "/users/:user/received_events", DummyAction
    get "/users/:user/received_events/public", DummyAction
    get "/users/:user/events", DummyAction
    get "/users/:user/events/public", DummyAction
    get "/users/:user/events/orgs/:org", DummyAction
    get "/feeds", DummyAction
    get "/notifications", DummyAction
    get "/repos/:owner/:repo/notifications", DummyAction
    put "/notifications", DummyAction
    put "/repos/:owner/:repo/notifications", DummyAction
    get "/notifications/threads/:id", DummyAction
    patch "/notifications/threads/:id", DummyAction
    get "/notifications/threads/:id/subscription", DummyAction
    put "/notifications/threads/:id/subscription", DummyAction
    delete "/notifications/threads/:id/subscription", DummyAction
    get "/repos/:owner/:repo/stargazers", DummyAction
    get "/users/:user/starred", DummyAction
    get "/user/starred", DummyAction
    get "/user/starred/:owner/:repo", DummyAction
    put "/user/starred/:owner/:repo", DummyAction
    delete "/user/starred/:owner/:repo", DummyAction
    get "/repos/:owner/:repo/subscribers", DummyAction
    get "/users/:user/subscriptions", DummyAction
    get "/user/subscriptions", DummyAction
    get "/repos/:owner/:repo/subscription", DummyAction
    put "/repos/:owner/:repo/subscription", DummyAction
    delete "/repos/:owner/:repo/subscription", DummyAction
    get "/user/subscriptions/:owner/:repo", DummyAction
    put "/user/subscriptions/:owner/:repo", DummyAction
    delete "/user/subscriptions/:owner/:repo", DummyAction

    # Gists
    get "/users/:user/gists", DummyAction
    get "/gists", DummyAction
    get "/gists/public", DummyAction
    get "/gists/starred", DummyAction
    get "/gists/:id", DummyAction
    post "/gists", DummyAction
    patch "/gists/:id", DummyAction
    put "/gists/:id/star", DummyAction
    delete "/gists/:id/star", DummyAction
    get "/gists/:id/star", DummyAction
    post "/gists/:id/forks", DummyAction
    delete "/gists/:id", DummyAction

    # Git Data
    get "/repos/:owner/:repo/git/blobs/:sha", DummyAction
    post "/repos/:owner/:repo/git/blobs", DummyAction
    get "/repos/:owner/:repo/git/commits/:sha", DummyAction
    post "/repos/:owner/:repo/git/commits", DummyAction
    get "/repos/:owner/:repo/git/refs/*ref", DummyAction
    get "/repos/:owner/:repo/git/refs", DummyAction
    post "/repos/:owner/:repo/git/refs", DummyAction
    patch "/repos/:owner/:repo/git/refs/*ref", DummyAction
    delete "/repos/:owner/:repo/git/refs/*ref", DummyAction
    get "/repos/:owner/:repo/git/tags/:sha", DummyAction
    post "/repos/:owner/:repo/git/tags", DummyAction
    get "/repos/:owner/:repo/git/trees/:sha", DummyAction
    post "/repos/:owner/:repo/git/trees", DummyAction

    # Issues
    get "/issues", DummyAction
    get "/user/issues", DummyAction
    get "/orgs/:org/issues", DummyAction
    get "/repos/:owner/:repo/issues", DummyAction
    get "/repos/:owner/:repo/issues/:number", DummyAction
    post "/repos/:owner/:repo/issues", DummyAction
    patch "/repos/:owner/:repo/issues/:number", DummyAction
    get "/repos/:owner/:repo/assignees", DummyAction
    get "/repos/:owner/:repo/assignees/:assignee", DummyAction
    get "/repos/:owner/:repo/issues/:number/comments", DummyAction
    get "/repos/:owner/:repo/issues/comments", DummyAction
    get "/repos/:owner/:repo/issues/comments/:id", DummyAction
    post "/repos/:owner/:repo/issues/:number/comments", DummyAction
    patch "/repos/:owner/:repo/issues/comments/:id", DummyAction
    delete "/repos/:owner/:repo/issues/comments/:id", DummyAction
    get "/repos/:owner/:repo/issues/:number/events", DummyAction
    get "/repos/:owner/:repo/issues/events", DummyAction
    get "/repos/:owner/:repo/issues/events/:id", DummyAction
    get "/repos/:owner/:repo/labels", DummyAction
    get "/repos/:owner/:repo/labels/:name", DummyAction
    post "/repos/:owner/:repo/labels", DummyAction
    patch "/repos/:owner/:repo/labels/:name", DummyAction
    delete "/repos/:owner/:repo/labels/:name", DummyAction
    get "/repos/:owner/:repo/issues/:number/labels", DummyAction
    post "/repos/:owner/:repo/issues/:number/labels", DummyAction
    delete "/repos/:owner/:repo/issues/:number/labels/:name", DummyAction
    put "/repos/:owner/:repo/issues/:number/labels", DummyAction
    delete "/repos/:owner/:repo/issues/:number/labels", DummyAction
    get "/repos/:owner/:repo/milestones/:number/labels", DummyAction
    get "/repos/:owner/:repo/milestones", DummyAction
    get "/repos/:owner/:repo/milestones/:number", DummyAction
    post "/repos/:owner/:repo/milestones", DummyAction
    patch "/repos/:owner/:repo/milestones/:number", DummyAction
    delete "/repos/:owner/:repo/milestones/:number", DummyAction

    # Miscellaneous
    get "/emojis", DummyAction
    get "/gitignore/templates", DummyAction
    get "/gitignore/templates/:name", DummyAction
    post "/markdown", DummyAction
    post "/markdown/raw", DummyAction
    get "/meta", DummyAction
    get "/rate_limit", DummyAction

    # Organizations
    get "/users/:user/orgs", DummyAction
    get "/user/orgs", DummyAction
    get "/orgs/:org", DummyAction
    patch "/orgs/:org", DummyAction
    get "/orgs/:org/members", DummyAction
    get "/orgs/:org/members/:user", DummyAction
    delete "/orgs/:org/members/:user", DummyAction
    get "/orgs/:org/public_members", DummyAction
    get "/orgs/:org/public_members/:user", DummyAction
    put "/orgs/:org/public_members/:user", DummyAction
    delete "/orgs/:org/public_members/:user", DummyAction
    get "/orgs/:org/teams", DummyAction
    get "/teams/:id", DummyAction
    post "/orgs/:org/teams", DummyAction
    patch "/teams/:id", DummyAction
    delete "/teams/:id", DummyAction
    get "/teams/:id/members", DummyAction
    get "/teams/:id/members/:user", DummyAction
    put "/teams/:id/members/:user", DummyAction
    delete "/teams/:id/members/:user", DummyAction
    get "/teams/:id/repos", DummyAction
    get "/teams/:id/repos/:owner/:repo", DummyAction
    put "/teams/:id/repos/:owner/:repo", DummyAction
    delete "/teams/:id/repos/:owner/:repo", DummyAction
    get "/user/teams", DummyAction

    # Pull Requests
    get "/repos/:owner/:repo/pulls", DummyAction
    get "/repos/:owner/:repo/pulls/:number", DummyAction
    post "/repos/:owner/:repo/pulls", DummyAction
    patch "/repos/:owner/:repo/pulls/:number", DummyAction
    get "/repos/:owner/:repo/pulls/:number/commits", DummyAction
    get "/repos/:owner/:repo/pulls/:number/files", DummyAction
    get "/repos/:owner/:repo/pulls/:number/merge", DummyAction
    put "/repos/:owner/:repo/pulls/:number/merge", DummyAction
    get "/repos/:owner/:repo/pulls/:number/comments", DummyAction
    get "/repos/:owner/:repo/pulls/comments", DummyAction
    get "/repos/:owner/:repo/pulls/comments/:number", DummyAction
    put "/repos/:owner/:repo/pulls/:number/comments", DummyAction
    patch "/repos/:owner/:repo/pulls/comments/:number", DummyAction
    delete "/repos/:owner/:repo/pulls/comments/:number", DummyAction

    # Repositories
    get "/user/repos", DummyAction
    get "/users/:user/repos", DummyAction
    get "/orgs/:org/repos", DummyAction
    get "/repositories", DummyAction
    post "/user/repos", DummyAction
    post "/orgs/:org/repos", DummyAction
    get "/repos/:owner/:repo", DummyAction
    patch "/repos/:owner/:repo", DummyAction
    get "/repos/:owner/:repo/contributors", DummyAction
    get "/repos/:owner/:repo/languages", DummyAction
    get "/repos/:owner/:repo/teams", DummyAction
    get "/repos/:owner/:repo/tags", DummyAction
    get "/repos/:owner/:repo/branches", DummyAction
    get "/repos/:owner/:repo/branches/:branch", DummyAction
    delete "/repos/:owner/:repo", DummyAction
    get "/repos/:owner/:repo/collaborators", DummyAction
    get "/repos/:owner/:repo/collaborators/:user", DummyAction
    put "/repos/:owner/:repo/collaborators/:user", DummyAction
    delete "/repos/:owner/:repo/collaborators/:user", DummyAction
    get "/repos/:owner/:repo/comments", DummyAction
    get "/repos/:owner/:repo/commits/:sha/comments", DummyAction
    post "/repos/:owner/:repo/commits/:sha/comments", DummyAction
    get "/repos/:owner/:repo/comments/:id", DummyAction
    patch "/repos/:owner/:repo/comments/:id", DummyAction
    delete "/repos/:owner/:repo/comments/:id", DummyAction
    get "/repos/:owner/:repo/commits", DummyAction
    get "/repos/:owner/:repo/commits/:sha", DummyAction
    get "/repos/:owner/:repo/readme", DummyAction
    get "/repos/:owner/:repo/contents/*path", DummyAction
    put "/repos/:owner/:repo/contents/*path", DummyAction
    delete "/repos/:owner/:repo/contents/*path", DummyAction
    get "/repos/:owner/:repo/:archive_format/:ref", DummyAction
    get "/repos/:owner/:repo/keys", DummyAction
    get "/repos/:owner/:repo/keys/:id", DummyAction
    post "/repos/:owner/:repo/keys", DummyAction
    patch "/repos/:owner/:repo/keys/:id", DummyAction
    delete "/repos/:owner/:repo/keys/:id", DummyAction
    get "/repos/:owner/:repo/downloads", DummyAction
    get "/repos/:owner/:repo/downloads/:id", DummyAction
    delete "/repos/:owner/:repo/downloads/:id", DummyAction
    get "/repos/:owner/:repo/forks", DummyAction
    post "/repos/:owner/:repo/forks", DummyAction
    get "/repos/:owner/:repo/hooks", DummyAction
    get "/repos/:owner/:repo/hooks/:id", DummyAction
    post "/repos/:owner/:repo/hooks", DummyAction
    patch "/repos/:owner/:repo/hooks/:id", DummyAction
    post "/repos/:owner/:repo/hooks/:id/tests", DummyAction
    delete "/repos/:owner/:repo/hooks/:id", DummyAction
    post "/repos/:owner/:repo/merges", DummyAction
    get "/repos/:owner/:repo/releases", DummyAction
    get "/repos/:owner/:repo/releases/:id", DummyAction
    post "/repos/:owner/:repo/releases", DummyAction
    patch "/repos/:owner/:repo/releases/:id", DummyAction
    delete "/repos/:owner/:repo/releases/:id", DummyAction
    get "/repos/:owner/:repo/releases/:id/assets", DummyAction
    get "/repos/:owner/:repo/stats/contributors", DummyAction
    get "/repos/:owner/:repo/stats/commit_activity", DummyAction
    get "/repos/:owner/:repo/stats/code_frequency", DummyAction
    get "/repos/:owner/:repo/stats/participation", DummyAction
    get "/repos/:owner/:repo/stats/punch_card", DummyAction
    get "/repos/:owner/:repo/statuses/:ref", DummyAction
    post "/repos/:owner/:repo/statuses/:ref", DummyAction

    # Search
    get "/search/repositories", DummyAction
    get "/search/code", DummyAction
    get "/search/issues", DummyAction
    get "/search/users", DummyAction
    get "/legacy/issues/search/:owner/:repository/:state/:keyword", DummyAction
    get "/legacy/repos/search/:keyword", DummyAction
    get "/legacy/user/search/:keyword", DummyAction
    get "/legacy/user/email/:email", DummyAction

    # Users
    get "/users/:user", DummyAction
    get "/user", DummyAction
    patch "/user", DummyAction
    get "/users", DummyAction
    get "/user/emails", DummyAction
    post "/user/emails", DummyAction
    delete "/user/emails", DummyAction
    get "/users/:user/followers", DummyAction
    get "/user/followers", DummyAction
    get "/users/:user/following", DummyAction
    get "/user/following", DummyAction
    get "/user/following/:user", DummyAction
    get "/users/:user/following/:target_user", DummyAction
    put "/user/following/:user", DummyAction
    delete "/user/following/:user", DummyAction
    get "/users/:user/keys", DummyAction
    get "/user/keys", DummyAction
    get "/user/keys/:id", DummyAction
    post "/user/keys", DummyAction
    patch "/user/keys/:id", DummyAction
    delete "/user/keys/:id", DummyAction
  end
end

server = HTTP::Server.new(9292, GitHubRouter.new)

Signal::INT.trap {
  server.close
  exit
}

server.listen
