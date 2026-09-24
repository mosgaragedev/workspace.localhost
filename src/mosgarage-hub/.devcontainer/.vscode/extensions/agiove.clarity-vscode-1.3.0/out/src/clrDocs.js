"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const alert_metadata_1 = require("./metadata/alert.metadata");
const button_group_metadata_1 = require("./metadata/button-group.metadata");
const checkbox_metadata_1 = require("./metadata/checkbox.metadata");
const datagrid_metadata_1 = require("./metadata/datagrid.metadata");
const dropdown_metadata_1 = require("./metadata/dropdown.metadata");
const modal_metadata_1 = require("./metadata/modal.metadata");
const stack_view_metadata_1 = require("./metadata/stack-view.metadata");
const tabs_metadata_1 = require("./metadata/tabs.metadata");
const tooltip_metadata_1 = require("./metadata/tooltip.metadata");
const tree_node_metadata_1 = require("./metadata/tree-node.metadata");
const wizard_metadata_1 = require("./metadata/wizard.metadata");
const DefinitionInfo_1 = require("./shared/DefinitionInfo");
const baseUrl = "https://vmware.github.io/clarity/documentation/";
const clrAlertInfo = "An alert is a banner that uses text, color, and an icon to denote the severity of a message.";
const clrButtonGroupInfo = "Button groups are for creating collections of similar type action buttons.";
const clrCheckboxInfo = "With checkboxes, users can select multiple options in a list of options.";
const clrDatagridInfo = "Datagrids are for organizing large volumes of data that users can scan, compare, and perform actions on.";
const clrDropdownInfo = "A dropdown menu lists actions that users can perform within an application or on a selected object.";
const clrModalInfo = "Modals provide information or help a user complete a task. They require the user to take an action to dismiss them.";
const clrStackViewInfo = "A stack view displays key/value pairs, which users can expand to show more detail.";
const clrTabsInfo = "Tabs divide content into separate views which users navigate between.";
const clrTreeNodeInfo = "A tree is a hierarchical component that shows the visual representation of the parent-child relationship between nodes.";
const clrTooltipInfo = "A tooltip provides a short description of a UI element.";
const clrWizardInfo = "A wizard presents a multi-step workflow that users perform in a recommended sequence.";
let docMap = new Map();
docMap.set("clr-alert", new DefinitionInfo_1.DefinitionInfo("<clr-alert>", clrAlertInfo, baseUrl + "alerts", alert_metadata_1.clrAlertMeta));
docMap.set("clr-button-group", new DefinitionInfo_1.DefinitionInfo("<clr-button-group>", clrButtonGroupInfo, baseUrl + "button-group", button_group_metadata_1.clrButtonGroupMeta));
docMap.set("clr-checkbox", new DefinitionInfo_1.DefinitionInfo("<clr-checkbox>", clrCheckboxInfo, baseUrl + "checkboxes", checkbox_metadata_1.clrCheckboxMeta));
docMap.set("clr-datagrid", new DefinitionInfo_1.DefinitionInfo("<clr-datagrid>", clrDatagridInfo, baseUrl + "datagrid", datagrid_metadata_1.clrDatagridMeta));
docMap.set("clr-dropdown", new DefinitionInfo_1.DefinitionInfo("<clr-dropdown>", clrDropdownInfo, baseUrl + "dropdowns", dropdown_metadata_1.clrDropdownMeta));
docMap.set("clr-modal", new DefinitionInfo_1.DefinitionInfo("<clr-modal>", clrModalInfo, baseUrl + "modals", modal_metadata_1.clrModalMeta));
docMap.set("clr-stack-view", new DefinitionInfo_1.DefinitionInfo("<clr-stack-view>", clrStackViewInfo, baseUrl + "stack-view", stack_view_metadata_1.clrStackViewMeta));
docMap.set("clr-tabs", new DefinitionInfo_1.DefinitionInfo("<clr-tabs>", clrTabsInfo, baseUrl + "tabs", tabs_metadata_1.clrTabsMeta));
docMap.set("clr-tree-node", new DefinitionInfo_1.DefinitionInfo("<clr-tree-node>", clrTreeNodeInfo, baseUrl + "tree-view", tree_node_metadata_1.clrTreeNodeMeta));
docMap.set("clr-tooltip", new DefinitionInfo_1.DefinitionInfo("<clr-tooltip>", clrTooltipInfo, baseUrl + "tooltips", tooltip_metadata_1.clrTooltipMeta));
docMap.set("clr-wizard", new DefinitionInfo_1.DefinitionInfo("<clr-wizard>", clrWizardInfo, baseUrl + "wizards", wizard_metadata_1.clrWizardMeta));
class ClrDocsUtil {
    hasDoc(tag) {
        return docMap.has(tag);
    }
    getDoc(tag) {
        let definition = docMap.get(tag);
        if (!definition.lazy)
            return definition;
        definition.lazy = false;
        let meta = definition.meta.members;
        Object.keys(meta).map((propertyName) => {
            let member = meta[propertyName];
            if (member instanceof Array
                && member[0].hasOwnProperty("decorators")
                && member[0].decorators instanceof Array
                && member[0].decorators[0].hasOwnProperty("arguments")
                && member[0].decorators[0].arguments instanceof Array
                && member[0].decorators[0].hasOwnProperty("expression")) {
                let attributeName = member[0].decorators[0].arguments[0];
                let exprName = member[0].decorators[0].expression.name;
                if (exprName == "Input")
                    definition.inputs.push(attributeName);
                else if (exprName == "Output")
                    definition.outputs.push(attributeName);
            }
        });
        return definition;
    }
}
exports.ClrDocsUtil = ClrDocsUtil;
//# sourceMappingURL=clrDocs.js.map