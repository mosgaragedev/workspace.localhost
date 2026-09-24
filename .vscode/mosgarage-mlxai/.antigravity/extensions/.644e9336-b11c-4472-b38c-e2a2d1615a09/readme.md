# GitLab for VS Code extension

The GitLab for VS Code extension brings GitLab Duo and other GitLab features directly into Visual Studio Code:

- [Work with projects](https://docs.gitlab.com/editor_extensions/visual_studio_code/projects/):
  Plan and track work with issues, review and discuss changes with merge requests,
  and share code snippets. Use GitLab Duo for AI-native planning and coding.
- [Monitor and test CI/CD pipelines](https://docs.gitlab.com/editor_extensions/visual_studio_code/cicd/):
  Test your pipeline configuration. View pipeline status and job outputs.
- [Secure your application](https://docs.gitlab.com/editor_extensions/visual_studio_code/security_scanning/):
  Review security findings and perform SAST scanning for your project.

For detailed feature documentation, see [GitLab for VS Code](https://docs.gitlab.com/editor_extensions/visual_studio_code/).

## Minimum supported version

This extension is tested against and officially supports only currently maintained GitLab versions. For details, see the [GitLab release and maintenance policy](https://docs.gitlab.com/policy/maintenance/).

Earlier GitLab versions may continue to work with parts of the extension, but are considered unsupported. Bugs or regressions specific to unsupported GitLab versions are not in scope for fixes.

For GitLab.com and GitLab Dedicated, you automatically use a supported version. For GitLab Self-Managed, make sure your instance is on a maintained GitLab version before reporting issues.

### Feature-specific requirements

Some features require specific GitLab versions, plans, or add-ons. For details, see the [GitLab extension documentation](https://docs.gitlab.com/editor_extensions/visual_studio_code/).

## Setup

For instructions, see [install and set up the GitLab for VS Code extension](https://docs.gitlab.com/editor_extensions/visual_studio_code/setup/).

## Browse a repository without cloning

With this extension, you can browse a GitLab repository in read-only mode without cloning it.

For instructions, see [browse a repository in read-only mode](https://docs.gitlab.com/editor_extensions/visual_studio_code/remote_urls/#browse-a-repository-in-read-only-mode).

## Troubleshooting

For support, review [troubleshooting the GitLab for VS Code extension](https://docs.gitlab.com/editor_extensions/visual_studio_code/troubleshooting/).

If the documentation does not cover your issue, please [report the issue](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/blob/main/CONTRIBUTING.md#reporting-issues).

### Export diagnostics

If you encounter issues with the extension, you can export diagnostic information to help with troubleshooting:

1. Open the VS Code Command Palette (<kbd>Command</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>).
1. Search for **GitLab: Export Diagnostics** and press <kbd>Enter</kbd>.
1. Choose a location to save the ZIP file.

The exported ZIP file contains:

- Extension configuration and system information
- Extension logs
- Language server logs (if available)

All sensitive data (tokens, credentials, file paths) is automatically redacted before export.

## Roadmap

To learn more about this project's team, processes, and plans, see the [Editor Extensions: VS Code Group](https://handbook.gitlab.com/handbook/engineering/ai/editor-extensions-vscode/) page in the GitLab handbook.

For a list of all open issues in this project, see the
[issues page](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/issues/)
for this project.

## Data and Privacy

The GitLab for VS Code extension uses the telemetry settings in Visual Studio Code to send usage and error information to GitLab.

Learn [how to enable or customize telemetry](https://docs.gitlab.com/editor_extensions/visual_studio_code/setup/#enable-telemetry) in Visual Studio Code.

The processing of any personal data is in accordance with our [Privacy Statement](https://about.gitlab.com/privacy/).

## Contributing

This extension is open source and [hosted on GitLab](https://gitlab.com/gitlab-org/gitlab-vscode-extension). Contributions are more than welcome. Feel free to fork and add new features or submit bug reports. See [CONTRIBUTING](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/blob/HEAD/CONTRIBUTING.md) for more information.

[A list of the great people](https://gitlab.com/gitlab-org/gitlab-vscode-extension/-/blob/main/CONTRIBUTORS.md) who contributed this project, and made it even more awesome, is available. Thank you all! 🎉
