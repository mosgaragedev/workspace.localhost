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
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.deactivate = exports.activate = void 0;
const vscode = __importStar(require("vscode"));
const WebViewPanels_1 = require("./panels/WebViewPanels");
const Constants_1 = require("../constants/Constants");
const m365Commands = __importStar(require("../data/m365Model.json"));
function activate(context) {
    // TODO: temporary removing the CLI for M365 chat participant
    // const chatParticipant = vscode.chat.createChatParticipant(CHAT_PARTICIPANT_ID, PromptHandler.handle);
    // chatParticipant.iconPath = vscode.Uri.joinPath(context.extensionUri, 'assets', 'chat_logo.png');
    const cliM365Provider = new WebViewPanels_1.WebViewPanels(context, {});
    const view = vscode.window.registerWebviewViewProvider('cliM365', cliM365Provider);
    context.subscriptions.push(view);
    const openSamplesWebviewCommand = vscode.commands.registerCommand(Constants_1.SAMPLES_COMMAND, () => cliM365Provider.getHtmlWebviewForSamplesView());
    context.subscriptions.push(openSamplesWebviewCommand);
    const openManualWebviewCommand = vscode.commands.registerCommand('cliM365.showManual', () => __awaiter(this, void 0, void 0, function* () {
        const editor = vscode.window.activeTextEditor;
        let selectedCommand = '';
        if (editor)
            selectedCommand = editor.document.getText(editor.selection);
        selectedCommand = selectedCommand.replace('m365 ', '').trim();
        const commandName = yield vscode.window.showInputBox({
            placeHolder: 'e.g. spo list get',
            prompt: 'Enter command name',
            value: selectedCommand
        });
        if (!commandName)
            return;
        if (!m365Commands.commands.some(command => command.name === commandName)) {
            vscode.window.showErrorMessage(`the command ${commandName} does not exist`);
            return;
        }
        cliM365Provider.getHtmlWebviewForDocsView(commandName);
    }));
    context.subscriptions.push(openManualWebviewCommand);
}
exports.activate = activate;
function deactivate() { }
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map