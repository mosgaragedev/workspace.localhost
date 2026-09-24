'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
const insertText = (text) => {
    const editor = vscode.window.activeTextEditor;
    if (!editor) {
        vscode.window.showErrorMessage('Can\'t insert console.log because no document is open');
        return;
    }
    const selection = editor.selection;
    const range = new vscode.Range(selection.start, selection.end);
    editor.edit((editBuilder) => {
        editBuilder.replace(range, text);
    });
};
function activate(context) {
    console.log('Javascript Quick Console is now active!');
    let disposable = vscode.commands.registerCommand('extension.log', () => {
        const editor = vscode.window.activeTextEditor;
        if (!editor) {
            return;
        }
        const selection = editor.selection;
        const text = editor.document.getText(selection);
        text
            ? vscode.commands.executeCommand('editor.action.insertLineAfter')
                .then(() => {
                const logToInsert = `console.log('${text}: ', ${text});`;
                insertText(logToInsert);
            })
            : insertText('console.log();');
    });
    context.subscriptions.push(disposable);
}
exports.activate = activate;
function deactivate() { }
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map