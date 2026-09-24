"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
class DefinitionInfo {
    constructor(tag, info, link, meta = {}, inputs = [], outputs = [], lazy = true) {
        this.tag = tag;
        this.info = info;
        this.link = link;
        this.meta = meta;
        this.inputs = inputs;
        this.outputs = outputs;
        this.lazy = lazy;
    }
    getInputsStr() {
        return this.arr2str(this.inputs);
    }
    getOutputsStr() {
        return this.arr2str(this.outputs);
    }
    arr2str(arr) {
        return arr.reduce((acc, current) => {
            if (acc != "")
                acc += ", ";
            return acc + current;
        }, "");
    }
}
exports.DefinitionInfo = DefinitionInfo;
//# sourceMappingURL=DefinitionInfo.js.map