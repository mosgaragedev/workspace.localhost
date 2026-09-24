"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.WebViewPanels = void 0;
const vscode = __importStar(require("vscode"));
const samples = __importStar(require("../../data/samples.json"));
const axios_1 = __importDefault(require("axios"));
class WebViewPanels {
    constructor(context, data, _view = null) {
        this.context = context;
        this.data = data;
        this._view = _view;
        this.docsView = null;
        this.sampleView = null;
        this._onDidChangeTreeData = new vscode.EventEmitter();
    }
    refresh() {
        var _a;
        this._onDidChangeTreeData.fire(null);
        this._view.webview.html = this._getHtmlWebviewForCommandsList((_a = this._view) === null || _a === void 0 ? void 0 : _a.webview);
    }
    resolveWebviewView(webviewView) {
        webviewView.webview.options = {
            enableScripts: true,
            localResourceRoots: [this.context.extensionUri]
        };
        webviewView.webview.html = this._getHtmlWebviewForCommandsList(webviewView.webview);
        this._view = webviewView;
        this._activateListener(this._view.webview);
    }
    getHtmlWebviewForSamplesView(searchQuery = '') {
        if (this.sampleView === null) {
            this.sampleView = vscode.window.createWebviewPanel('PnPPSSamples', 'PnP PowerShell - samples', vscode.ViewColumn.One, {
                enableScripts: true,
                localResourceRoots: [this.context.extensionUri],
                retainContextWhenHidden: true
            });
            this.sampleView.iconPath = {
                dark: vscode.Uri.file(vscode.Uri.joinPath(this.context.extensionUri, 'assets', 'logo.svg').path),
                light: vscode.Uri.file(vscode.Uri.joinPath(this.context.extensionUri, 'assets', 'logo.svg').path)
            };
            this.sampleView.onDidDispose(() => {
                this.sampleView = null;
            });
        }
        const scriptUri = this.sampleView.webview.asWebviewUri(vscode.Uri.joinPath(this.context.extensionUri, 'webview-ui', 'samplesView', 'build', 'assets', 'index.js'));
        const stylesUri = this.sampleView.webview.asWebviewUri(vscode.Uri.joinPath(this.context.extensionUri, 'webview-ui', 'samplesView', 'build', 'assets', 'index.css'));
        this.sampleView.webview.html = this._getHtmlWebview(this.sampleView.webview, scriptUri, stylesUri, searchQuery);
        this._activateListener(this.sampleView.webview);
        this.sampleView.reveal();
    }
    getHtmlWebviewForDocsView(commandName) {
        if (this.docsView === null) {
            this.docsView = vscode.window.createWebviewPanel('PnPPSManual', 'PnP PowerShell - docs', vscode.ViewColumn.One, {
                enableScripts: true,
                localResourceRoots: [this.context.extensionUri],
                enableFindWidget: true
            });
            this.docsView.iconPath = {
                dark: vscode.Uri.file(vscode.Uri.joinPath(this.context.extensionUri, 'assets', 'logo.svg').path),
                light: vscode.Uri.file(vscode.Uri.joinPath(this.context.extensionUri, 'assets', 'logo.svg').path)
            };
            this.docsView.onDidDispose(() => {
                this.docsView = null;
            });
            this._activateListener(this.docsView.webview);
        }
        const scriptUri = this.docsView.webview.asWebviewUri(vscode.Uri.joinPath(this.context.extensionUri, 'webview-ui', 'docsView', 'build', 'assets', 'index.js'));
        const stylesUri = this.docsView.webview.asWebviewUri(vscode.Uri.joinPath(this.context.extensionUri, 'webview-ui', 'docsView', 'build', 'assets', 'index.css'));
        this.docsView.webview.html = this._getHtmlWebview(this.docsView.webview, scriptUri, stylesUri, commandName);
        this.docsView.reveal();
    }
    _getHtmlWebviewForCommandsList(webview) {
        const scriptUri = webview.asWebviewUri(vscode.Uri.joinPath(this.context.extensionUri, 'webview-ui', 'commandsList', 'build', 'assets', 'index.js'));
        const stylesUri = webview.asWebviewUri(vscode.Uri.joinPath(this.context.extensionUri, 'webview-ui', 'commandsList', 'build', 'assets', 'index.css'));
        return this._getHtmlWebview(webview, scriptUri, stylesUri);
    }
    _activateListener(webview) {
        webview.onDidReceiveMessage((message) => {
            switch (message.command) {
                case 'showCommandManual':
                    this.getHtmlWebviewForDocsView(message.value);
                    break;
                case 'openLink':
                    vscode.env.openExternal(vscode.Uri.parse(message.value));
                    break;
                case 'createScriptFile':
                    this._createScriptFile(message.value);
                    break;
                case 'showSamples':
                    this.getHtmlWebviewForSamplesView(message.value);
                    break;
                default:
                    break;
            }
        });
    }
    _createScriptFile(sampleTitle) {
        const sample = samples.samples.find(sample => sample.title === sampleTitle);
        const sampleUrl = sample.rawUrl;
        axios_1.default
            .get(sampleUrl)
            .then(res => {
            const content = res.data.split(sample.tabTag)[1].split('```' + sample.type + '\n')[1].split('```')[0];
            const language = sample.type;
            vscode.workspace.openTextDocument({ content, language }).then(document => vscode.window.showTextDocument(document));
        })
            .catch(() => {
            vscode.window.showErrorMessage('Error while creating script file based on sample');
        });
    }
    _getHtmlWebview(webview, scriptUri, stylesUri, initialData = '') {
        const codiconsUri = webview.asWebviewUri(vscode.Uri.joinPath(this.context.extensionUri, 'media', 'codicon', 'codicon.css'));
        return /*html*/ `
      <!DOCTYPE html>
      <html lang="en">
        <head>
          <meta charset="UTF-8" />
          <meta name="viewport" content="width=device-width, initial-scale=1.0" />
          <link rel="stylesheet" type="text/css" href="${stylesUri}">
          <link rel="stylesheet" type="text/css" href="${codiconsUri}">
        </head>
        ${initialData !== '' ?
            `<script>window.initialData = "${initialData}";</script>`
            : ''}
        <body>
          <div id="root"></div>
          <script type="module" src="${scriptUri}"></script>
        </body>
      </html>
    `;
    }
}
exports.WebViewPanels = WebViewPanels;
//# sourceMappingURL=WebViewPanels.js.map