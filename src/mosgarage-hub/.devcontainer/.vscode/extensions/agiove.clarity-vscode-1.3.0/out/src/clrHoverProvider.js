"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const vscode_1 = require("vscode");
const clrDocs_1 = require("./clrDocs");
class ClrHoverProvider {
    getDefinition(document, position) {
        let wordRange = document.getWordRangeAtPosition(position);
        let lineText = document.lineAt(position.line).text;
        let word = wordRange ? document.getText(wordRange) : '';
        /*
        console.log(wordRange);
        console.log(lineText);
        console.log(word);
        */
        let docsUtil = new clrDocs_1.ClrDocsUtil();
        if (!wordRange || !docsUtil.hasDoc(word)) {
            return Promise.resolve(null);
        }
        return new Promise((resolve, reject) => {
            let definition = docsUtil.getDoc(word);
            let hoverTexts = [];
            hoverTexts.push({ language: 'html', value: definition.tag });
            hoverTexts.push(definition.info);
            if (definition.inputs.length > 0)
                hoverTexts.push("Input: _" + definition.getInputsStr() + "_");
            if (definition.outputs.length > 0)
                hoverTexts.push("Output: _" + definition.getOutputsStr() + "_");
            hoverTexts.push(definition.link);
            return resolve(hoverTexts);
        });
    }
    provideHover(document, position, token) {
        return this.getDefinition(document, position).then(definitionInfo => {
            let hover = new vscode_1.Hover(definitionInfo);
            return hover;
        }, () => {
            return null;
        });
    }
}
exports.ClrHoverProvider = ClrHoverProvider;
//# sourceMappingURL=clrHoverProvider.js.map