'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
exports.activate = activate;
exports.deactivate = deactivate;
const vscode = require("vscode");
const command_1 = require("./command");
function activate(context) {
    // Update hooks.
    const extension = vscode.extensions.getExtension('ahebrank.yaml2json');
    if (extension) {
        if (!context.globalState.get('spaceSettingUpdated', false) && extension.packageJSON.version == "0.0.9") {
            // Make sure we only do this once.
            context.globalState.update('spaceSettingUpdated', true);
            // Set the yamlIndentationSpaces setting based on the workspace tabSize
            // to keep behavior consistent with previous versions.
            const wsSpaces = vscode.workspace.getConfiguration('editor').get('tabSize');
            // If there's a tabSize setting override the extension setting.
            if (wsSpaces) {
                vscode.workspace.getConfiguration('yaml2json').update('yamlIndentationSpaces', wsSpaces, vscode.ConfigurationTarget.Global)
                    .then(() => {
                    vscode.window.showInformationMessage('Setting YAML indentation to match workspace tabSize setting ' + wsSpaces);
                }, (error) => {
                    console.error('Unable to update yamlIndentationSpaces setting: ' + error);
                });
            }
        }
    }
    // Register extension commands.
    const commands = [
        vscode.commands.registerCommand(`yaml2json.document`, () => command_1.Command.convertDocument()),
        vscode.commands.registerCommand(`yaml2json.clipboard`, () => command_1.Command.convertClipboard()),
    ];
    context.subscriptions.push(...commands);
}
function deactivate() {
}
//# sourceMappingURL=extension.js.map