"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Document = void 0;
const vscode = require("vscode");
class Document {
    static replaceSelection(editor, selection, data) {
        editor.replace(selection, data);
    }
    static replaceDocument(editor, document, data, newFormat) {
        const lastLineIndex = (document.lineCount - 1);
        let range = new vscode.Range(new vscode.Position(0, 0), new vscode.Position(lastLineIndex, Number.MAX_VALUE));
        range = document.validateRange(range);
        editor.replace(range, data);
        vscode.languages.setTextDocumentLanguage(document, newFormat);
    }
    static insert(editor, selection, data) {
        editor.insert(selection.active, data);
    }
}
exports.Document = Document;
//# sourceMappingURL=document.js.map