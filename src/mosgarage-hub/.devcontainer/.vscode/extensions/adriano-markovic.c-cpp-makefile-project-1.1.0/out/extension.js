"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
const project = require("./project");
function activate(context) {
    context.subscriptions.push(vscode.commands.registerCommand('c-cpp-project.initProject', () => {
        const projectPicks = [
            'C Project',
            'C++ Project',
            'Only C Makefile',
            'Only C++ Makefile'
        ];
        const showMsg = (text) => {
            vscode.window.showInformationMessage(text);
        };
        vscode.window.showQuickPick(projectPicks, { canPickMany: false })
            .then((value) => {
            if (value === undefined) {
                showMsg('Could not create Project. Select an option.');
                return;
            }
            let isCreated = false;
            switch (value) {
                case projectPicks[0]:
                    isCreated = project.createProject(project.Language.C, false);
                    break;
                case projectPicks[1]:
                    isCreated = project.createProject(project.Language.CPP, false);
                    break;
                case projectPicks[2]:
                    isCreated = project.createProject(project.Language.C, true);
                    break;
                case projectPicks[3]:
                    isCreated = project.createProject(project.Language.CPP, true);
                    break;
            }
            if (isCreated) {
                showMsg(value + ' created!');
            }
            else {
                showMsg('Could not created project. Please open a folder!');
            }
        }, (reason) => {
            showMsg(`Could not create Project due to following reason: ${reason}`);
        });
    }));
}
exports.activate = activate;
// this method is called when your extension is deactivated
function deactivate() { }
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map