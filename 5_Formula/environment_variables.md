GitHub Codespaces sets several default environment variables that you can use. Here are some of the key ones:

- **CODESPACE_NAME**: The name of the codespace.
- **CODESPACES**: Always true while in a codespace.
- **GIT_COMMITTER_EMAIL**: The email for the "author" field of future git commits.
- **GIT_COMMITTER_NAME**: The name for the "committer" field of future git commits.
- **GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN**: The domain of the GitHub Codespaces forwarded port.
- **GITHUB_API_URL**: The API URL (e.g., `https://api.github.com`).
- **GITHUB_GRAPHQL_URL**: The GraphQL API URL (e.g., `https://api.github.com/graphql`).
- **GITHUB_REPOSITORY**: The owner and repository name (e.g., `octocat/Hello-World`).
- **GITHUB_SERVER_URL**: The URL of the GitHub server (e.g., `https://github.com`).
- **GITHUB_TOKEN**: A signed auth token representing the user in the codespace.
- **GITHUB_USER**: The name of the user that initiated the codespace.

You can also set custom environment variables in your Codespaces. For more details, you can refer to the [GitHub documentation on environment variables in Codespaces](https://docs.github.com/en/codespaces/developing-in-a-codespace/default-environment-variables-for-your-codespace)[1](https://docs.github.com/en/codespaces/developing-in-a-codespace/default-environment-variables-for-your-codespace).

If you need to persist custom environment variables, you can do so by editing the `devcontainer.json` configuration file, using a custom Dockerfile, or setting development environment secrets[2](https://docs.github.com/en/codespaces/developing-in-a-codespace/persisting-environment-variables-and-temporary-files).

[1](https://docs.github.com/en/codespaces/developing-in-a-codespace/default-environment-variables-for-your-codespace): [Default environment variables for your codespace](https://docs.github.com/en/codespaces/developing-in-a-codespace/default-environment-variables-for-your-codespace)
[2](https://docs.github.com/en/codespaces/developing-in-a-codespace/persisting-environment-variables-and-temporary-files): [Persisting environment variables and temporary files](https://docs.github.com/en/codespaces/developing-in-a-codespace/persisting-environment-variables-and-temporary-files)

Let me know if you need more information or help with anything else!

sed -i $GITHUB_REPOSITORY 's|/rifaterdemsahin|/workspaces|g' filename

@rifaterdemsahin ➜ /workspaces/scc (main) $ updated_repo=$(echo $GITHUB_REPOSITORY | sed 's|rifaterdemsahin|workspaces|g')
@rifaterdemsahin ➜ /workspaces/scc (main) $ echo update_repo
update_repo
@rifaterdemsahin ➜ /workspaces/scc (main) $ echo $update_repo

@rifaterdemsahin ➜ /workspaces/scc (main) $ updated_repo=$(echo $GITHUB_REPOSITORY | sed 's|rifaterdemsahin|workspaces|g')
@rifaterdemsahin ➜ /workspaces/scc (main) $ echo $updated_repo
workspaces/scc
@rifaterdemsahin ➜ /workspaces/scc (main) $ 