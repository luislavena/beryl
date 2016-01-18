require "kemal"
logging false

EMPTY_RESPONSE = ""

# OAuth Authorizations
get "/authorizations" do
  EMPTY_RESPONSE
end

get "/authorizations/:id" do
  EMPTY_RESPONSE
end

post "/authorizations" do
  EMPTY_RESPONSE
end

put "/authorizations/clients/:client_id" do
  EMPTY_RESPONSE
end

patch "/authorizations/:id" do
  EMPTY_RESPONSE
end

delete "/authorizations/:id" do
  EMPTY_RESPONSE
end

get "/applications/:client_id/tokens/:access_token" do
  EMPTY_RESPONSE
end

delete "/applications/:client_id/tokens" do
  EMPTY_RESPONSE
end

delete "/applications/:client_id/tokens/:access_token" do
  EMPTY_RESPONSE
end

# Activity
get "/events" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/events" do
  EMPTY_RESPONSE
end

get "/networks/:owner/:repo/events" do
  EMPTY_RESPONSE
end

get "/orgs/:org/events" do
  EMPTY_RESPONSE
end

get "/users/:user/received_events" do
  EMPTY_RESPONSE
end

get "/users/:user/received_events/public" do
  EMPTY_RESPONSE
end

get "/users/:user/events" do
  EMPTY_RESPONSE
end

get "/users/:user/events/public" do
  EMPTY_RESPONSE
end

get "/users/:user/events/orgs/:org" do
  EMPTY_RESPONSE
end

get "/feeds" do
  EMPTY_RESPONSE
end

get "/notifications" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/notifications" do
  EMPTY_RESPONSE
end

put "/notifications" do
  EMPTY_RESPONSE
end

put "/repos/:owner/:repo/notifications" do
  EMPTY_RESPONSE
end

get "/notifications/threads/:id" do
  EMPTY_RESPONSE
end

patch "/notifications/threads/:id" do
  EMPTY_RESPONSE
end

get "/notifications/threads/:id/subscription" do
  EMPTY_RESPONSE
end

put "/notifications/threads/:id/subscription" do
  EMPTY_RESPONSE
end

delete "/notifications/threads/:id/subscription" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stargazers" do
  EMPTY_RESPONSE
end

get "/users/:user/starred" do
  EMPTY_RESPONSE
end

get "/user/starred" do
  EMPTY_RESPONSE
end

get "/user/starred/:owner/:repo" do
  EMPTY_RESPONSE
end

put "/user/starred/:owner/:repo" do
  EMPTY_RESPONSE
end

delete "/user/starred/:owner/:repo" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/subscribers" do
  EMPTY_RESPONSE
end

get "/users/:user/subscriptions" do
  EMPTY_RESPONSE
end

get "/user/subscriptions" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/subscription" do
  EMPTY_RESPONSE
end

put "/repos/:owner/:repo/subscription" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/subscription" do
  EMPTY_RESPONSE
end

get "/user/subscriptions/:owner/:repo" do
  EMPTY_RESPONSE
end

put "/user/subscriptions/:owner/:repo" do
  EMPTY_RESPONSE
end

delete "/user/subscriptions/:owner/:repo" do
  EMPTY_RESPONSE
end

# Gists
get "/users/:user/gists" do
  EMPTY_RESPONSE
end

get "/gists" do
  EMPTY_RESPONSE
end

get "/gists/public" do
  EMPTY_RESPONSE
end

get "/gists/starred" do
  EMPTY_RESPONSE
end

get "/gists/:id" do
  EMPTY_RESPONSE
end

post "/gists" do
  EMPTY_RESPONSE
end

patch "/gists/:id" do
  EMPTY_RESPONSE
end

put "/gists/:id/star" do
  EMPTY_RESPONSE
end

delete "/gists/:id/star" do
  EMPTY_RESPONSE
end

get "/gists/:id/star" do
  EMPTY_RESPONSE
end

post "/gists/:id/forks" do
  EMPTY_RESPONSE
end

delete "/gists/:id" do
  EMPTY_RESPONSE
end

# Git Data
get "/repos/:owner/:repo/git/blobs/:sha" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/git/blobs" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/git/commits/:sha" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/git/commits" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/git/refs/*ref" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/git/refs" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/git/refs" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/git/refs/*ref" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/git/refs/*ref" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/git/tags/:sha" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/git/tags" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/git/trees/:sha" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/git/trees" do
  EMPTY_RESPONSE
end

# Issues
get "/issues" do
  EMPTY_RESPONSE
end

get "/user/issues" do
  EMPTY_RESPONSE
end

get "/orgs/:org/issues" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/:number" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/issues" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/issues/:number" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/assignees" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/assignees/:assignee" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/:number/comments" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/comments" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/comments/:id" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/issues/:number/comments" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/issues/comments/:id" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/issues/comments/:id" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/:number/events" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/events" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/events/:id" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/labels" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/labels/:name" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/labels" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/labels/:name" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/labels/:name" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/issues/:number/labels" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/issues/:number/labels" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/issues/:number/labels/:name" do
  EMPTY_RESPONSE
end

put "/repos/:owner/:repo/issues/:number/labels" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/issues/:number/labels" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/milestones/:number/labels" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/milestones" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/milestones/:number" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/milestones" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/milestones/:number" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/milestones/:number" do
  EMPTY_RESPONSE
end

# Miscellaneous
get "/emojis" do
  EMPTY_RESPONSE
end

get "/gitignore/templates" do
  EMPTY_RESPONSE
end

get "/gitignore/templates/:name" do
  EMPTY_RESPONSE
end

post "/markdown" do
  EMPTY_RESPONSE
end

post "/markdown/raw" do
  EMPTY_RESPONSE
end

get "/meta" do
  EMPTY_RESPONSE
end

get "/rate_limit" do
  EMPTY_RESPONSE
end

# Organizations
get "/users/:user/orgs" do
  EMPTY_RESPONSE
end

get "/user/orgs" do
  EMPTY_RESPONSE
end

get "/orgs/:org" do
  EMPTY_RESPONSE
end

patch "/orgs/:org" do
  EMPTY_RESPONSE
end

get "/orgs/:org/members" do
  EMPTY_RESPONSE
end

get "/orgs/:org/members/:user" do
  EMPTY_RESPONSE
end

delete "/orgs/:org/members/:user" do
  EMPTY_RESPONSE
end

get "/orgs/:org/public_members" do
  EMPTY_RESPONSE
end

get "/orgs/:org/public_members/:user" do
  EMPTY_RESPONSE
end

put "/orgs/:org/public_members/:user" do
  EMPTY_RESPONSE
end

delete "/orgs/:org/public_members/:user" do
  EMPTY_RESPONSE
end

get "/orgs/:org/teams" do
  EMPTY_RESPONSE
end

get "/teams/:id" do
  EMPTY_RESPONSE
end

post "/orgs/:org/teams" do
  EMPTY_RESPONSE
end

patch "/teams/:id" do
  EMPTY_RESPONSE
end

delete "/teams/:id" do
  EMPTY_RESPONSE
end

get "/teams/:id/members" do
  EMPTY_RESPONSE
end

get "/teams/:id/members/:user" do
  EMPTY_RESPONSE
end

put "/teams/:id/members/:user" do
  EMPTY_RESPONSE
end

delete "/teams/:id/members/:user" do
  EMPTY_RESPONSE
end

get "/teams/:id/repos" do
  EMPTY_RESPONSE
end

get "/teams/:id/repos/:owner/:repo" do
  EMPTY_RESPONSE
end

put "/teams/:id/repos/:owner/:repo" do
  EMPTY_RESPONSE
end

delete "/teams/:id/repos/:owner/:repo" do
  EMPTY_RESPONSE
end

get "/user/teams" do
  EMPTY_RESPONSE
end

# Pull Requests
get "/repos/:owner/:repo/pulls" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/:number" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/pulls" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/pulls/:number" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/:number/commits" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/:number/files" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/:number/merge" do
  EMPTY_RESPONSE
end

put "/repos/:owner/:repo/pulls/:number/merge" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/:number/comments" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/comments" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/pulls/comments/:number" do
  EMPTY_RESPONSE
end

put "/repos/:owner/:repo/pulls/:number/comments" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/pulls/comments/:number" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/pulls/comments/:number" do
  EMPTY_RESPONSE
end

# Repositories
get "/user/repos" do
  EMPTY_RESPONSE
end

get "/users/:user/repos" do
  EMPTY_RESPONSE
end

get "/orgs/:org/repos" do
  EMPTY_RESPONSE
end

get "/repositories" do
  EMPTY_RESPONSE
end

post "/user/repos" do
  EMPTY_RESPONSE
end

post "/orgs/:org/repos" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/contributors" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/languages" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/teams" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/tags" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/branches" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/branches/:branch" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/collaborators" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/collaborators/:user" do
  EMPTY_RESPONSE
end

put "/repos/:owner/:repo/collaborators/:user" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/collaborators/:user" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/comments" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/commits/:sha/comments" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/commits/:sha/comments" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/comments/:id" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/comments/:id" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/comments/:id" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/commits" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/commits/:sha" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/readme" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/contents/*path" do
  EMPTY_RESPONSE
end

put "/repos/:owner/:repo/contents/*path" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/contents/*path" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/:archive_format/:ref" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/keys" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/keys/:id" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/keys" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/keys/:id" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/keys/:id" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/downloads" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/downloads/:id" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/downloads/:id" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/forks" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/forks" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/hooks" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/hooks/:id" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/hooks" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/hooks/:id" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/hooks/:id/tests" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/hooks/:id" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/merges" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/releases" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/releases/:id" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/releases" do
  EMPTY_RESPONSE
end

patch "/repos/:owner/:repo/releases/:id" do
  EMPTY_RESPONSE
end

delete "/repos/:owner/:repo/releases/:id" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/releases/:id/assets" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stats/contributors" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stats/commit_activity" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stats/code_frequency" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stats/participation" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/stats/punch_card" do
  EMPTY_RESPONSE
end

get "/repos/:owner/:repo/statuses/:ref" do
  EMPTY_RESPONSE
end

post "/repos/:owner/:repo/statuses/:ref" do
  EMPTY_RESPONSE
end

# Search
get "/search/repositories" do
  EMPTY_RESPONSE
end

get "/search/code" do
  EMPTY_RESPONSE
end

get "/search/issues" do
  EMPTY_RESPONSE
end

get "/search/users" do
  EMPTY_RESPONSE
end

get "/legacy/issues/search/:owner/:repository/:state/:keyword" do
  EMPTY_RESPONSE
end

get "/legacy/repos/search/:keyword" do
  EMPTY_RESPONSE
end

get "/legacy/user/search/:keyword" do
  EMPTY_RESPONSE
end

get "/legacy/user/email/:email" do
  EMPTY_RESPONSE
end

# Users
get "/users/:user" do
  EMPTY_RESPONSE
end

get "/user" do
  EMPTY_RESPONSE
end

patch "/user" do
  EMPTY_RESPONSE
end

get "/users" do
  EMPTY_RESPONSE
end

get "/user/emails" do
  EMPTY_RESPONSE
end

post "/user/emails" do
  EMPTY_RESPONSE
end

delete "/user/emails" do
  EMPTY_RESPONSE
end

get "/users/:user/followers" do
  EMPTY_RESPONSE
end

get "/user/followers" do
  EMPTY_RESPONSE
end

get "/users/:user/following" do
  EMPTY_RESPONSE
end

get "/user/following" do
  EMPTY_RESPONSE
end

get "/user/following/:user" do
  EMPTY_RESPONSE
end

get "/users/:user/following/:target_user" do
  EMPTY_RESPONSE
end

put "/user/following/:user" do
  EMPTY_RESPONSE
end

delete "/user/following/:user" do
  EMPTY_RESPONSE
end

get "/users/:user/keys" do
  EMPTY_RESPONSE
end

get "/user/keys" do
  EMPTY_RESPONSE
end

get "/user/keys/:id" do
  EMPTY_RESPONSE
end

post "/user/keys" do
  EMPTY_RESPONSE
end

patch "/user/keys/:id" do
  EMPTY_RESPONSE
end

delete "/user/keys/:id" do
  EMPTY_RESPONSE
end
