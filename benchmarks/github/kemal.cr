require "kemal"

EMPTY_RESPONSE = ""
MIME_HTML      = "text/html"

# OAuth Authorizations
get "/authorizations" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/authorizations/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/authorizations" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/authorizations/clients/:client_id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/authorizations/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/authorizations/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/applications/:client_id/tokens/:access_token" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/applications/:client_id/tokens" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/applications/:client_id/tokens/:access_token" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

# Activity
get "/events" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/events" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/networks/:owner/:repo/events" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/orgs/:org/events" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/received_events" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/received_events/public" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/events" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/events/public" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/events/orgs/:org" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/feeds" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/notifications" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/notifications" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/notifications" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/repos/:owner/:repo/notifications" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/notifications/threads/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/notifications/threads/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/notifications/threads/:id/subscription" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/notifications/threads/:id/subscription" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/notifications/threads/:id/subscription" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stargazers" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/starred" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/starred" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/starred/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/user/starred/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/user/starred/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/subscribers" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/subscriptions" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/subscriptions" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/subscription" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/repos/:owner/:repo/subscription" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/subscription" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/subscriptions/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/user/subscriptions/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/user/subscriptions/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

# Gists
get "/users/:user/gists" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/gists" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/gists/public" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/gists/starred" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/gists/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/gists" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/gists/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/gists/:id/star" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/gists/:id/star" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/gists/:id/star" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/gists/:id/forks" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/gists/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

# Git Data
get "/repos/:owner/:repo/git/blobs/:sha" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/git/blobs" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/git/commits/:sha" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/git/commits" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/git/refs/*ref" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/git/refs" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/git/refs" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/git/refs/*ref" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/git/refs/*ref" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/git/tags/:sha" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/git/tags" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/git/trees/:sha" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/git/trees" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

# Issues
get "/issues" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/issues" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/orgs/:org/issues" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/:number" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/issues" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/issues/:number" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/assignees" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/assignees/:assignee" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/:number/comments" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/comments" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/comments/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/issues/:number/comments" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/issues/comments/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/issues/comments/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/:number/events" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/events" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/events/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/labels" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/labels/:name" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/labels" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/labels/:name" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/labels/:name" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/:number/labels" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/issues/:number/labels" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/issues/:number/labels/:name" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/repos/:owner/:repo/issues/:number/labels" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/issues/:number/labels" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/milestones/:number/labels" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/milestones" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/milestones/:number" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/milestones" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/milestones/:number" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/milestones/:number" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

# Miscellaneous
get "/emojis" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/gitignore/templates" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/gitignore/templates/:name" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/markdown" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/markdown/raw" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/meta" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/rate_limit" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

# Organizations
get "/users/:user/orgs" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/orgs" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/orgs/:org" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/orgs/:org" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/orgs/:org/members" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/orgs/:org/members/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/orgs/:org/members/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/orgs/:org/public_members" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/orgs/:org/public_members/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/orgs/:org/public_members/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/orgs/:org/public_members/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/orgs/:org/teams" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/teams/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/orgs/:org/teams" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/teams/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/teams/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/teams/:id/members" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/teams/:id/members/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/teams/:id/members/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/teams/:id/members/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/teams/:id/repos" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/teams/:id/repos/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/teams/:id/repos/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/teams/:id/repos/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/teams" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

# Pull Requests
get "/repos/:owner/:repo/pulls" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/:number" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/pulls" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/pulls/:number" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/:number/commits" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/:number/files" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/:number/merge" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/repos/:owner/:repo/pulls/:number/merge" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/:number/comments" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/comments" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/comments/:number" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/repos/:owner/:repo/pulls/:number/comments" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/pulls/comments/:number" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/pulls/comments/:number" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

# Repositories
get "/user/repos" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/repos" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/orgs/:org/repos" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repositories" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/user/repos" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/orgs/:org/repos" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/contributors" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/languages" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/teams" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/tags" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/branches" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/branches/:branch" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/collaborators" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/collaborators/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/repos/:owner/:repo/collaborators/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/collaborators/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/comments" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/commits/:sha/comments" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/commits/:sha/comments" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/comments/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/comments/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/comments/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/commits" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/commits/:sha" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/readme" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/contents/*path" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/repos/:owner/:repo/contents/*path" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/contents/*path" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/:archive_format/:ref" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/keys" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/keys/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/keys" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/keys/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/keys/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/downloads" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/downloads/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/downloads/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/forks" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/forks" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/hooks" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/hooks/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/hooks" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/hooks/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/hooks/:id/tests" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/hooks/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/merges" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/releases" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/releases/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/releases" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/releases/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/releases/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/releases/:id/assets" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stats/contributors" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stats/commit_activity" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stats/code_frequency" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stats/participation" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stats/punch_card" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/repos/:owner/:repo/statuses/:ref" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/repos/:owner/:repo/statuses/:ref" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

# Search
get "/search/repositories" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/search/code" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/search/issues" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/search/users" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/legacy/issues/search/:owner/:repository/:state/:keyword" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/legacy/repos/search/:keyword" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/legacy/user/search/:keyword" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/legacy/user/email/:email" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

# Users
get "/users/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/emails" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/user/emails" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/user/emails" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/followers" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/followers" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/following" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/following" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/following/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/following/:target_user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

put "/user/following/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/user/following/:user" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/users/:user/keys" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/keys" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

get "/user/keys/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

post "/user/keys" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

patch "/user/keys/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end

delete "/user/keys/:id" do
  HTTP::Response.ok MIME_HTML, EMPTY_RESPONSE
end
