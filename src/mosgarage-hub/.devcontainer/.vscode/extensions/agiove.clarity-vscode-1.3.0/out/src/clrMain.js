'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
const clrHoverProvider_1 = require("./clrHoverProvider");
function activate(context) {
    console.log('vscode-clarity is active!');
    const HTML_MODE = { language: 'html', scheme: 'file' };
    context.subscriptions.push(vscode.languages.registerHoverProvider(HTML_MODE, new clrHoverProvider_1.ClrHoverProvider()));
}
exports.activate = activate;
//# sourceMappingURL=clrMain.js.map