/**
 * Alignment of item in the viewport.
 *
 * - `start`: Align the item to the start.
 * - `center`: Align the item to the center.
 * - `end`: Align the item to the end.
 * - `nearest`: If the item is already completely visible, don't scroll. Otherwise scroll until it becomes visible. That is similar behavior to [`nearest` option of scrollIntoView](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollIntoView).
 */
export type ScrollToIndexAlign = "start" | "center" | "end" | "nearest";
export interface ScrollToIndexOpts {
    /**
     * Alignment of item in the viewport. See {@link ScrollToIndexAlign} for the values.
     * @defaultValue "start"
     */
    align?: ScrollToIndexAlign;
    /**
     * If true, scrolling animates smoothly with [`behavior: smooth` of scrollTo](https://developer.mozilla.org/en-US/docs/Web/API/Element/scrollTo#behavior).
     *
     * **Using smooth scrolling over many items can kill performance benefit of virtual scroll. Do not overuse it.**
     */
    smooth?: boolean;
    /**
     * Additional offset from the scrolled position.
     * @defaultValue 0
     */
    offset?: number;
}
/**
 * The cell to scroll to and the options of the scroll. The axis whose index is omitted is not scrolled.
 */
export interface GridScrollToIndexOpts {
    /**
     * The row index of the cell.
     */
    rowIndex?: number;
    /**
     * The column index of the cell.
     */
    colIndex?: number;
    /**
     * Alignment of the cell in the viewport, excluding the rows sticking over it. See {@link ScrollToIndexAlign} for the values.
     * @defaultValue "start"
     */
    rowAlign?: ScrollToIndexAlign;
    /**
     * Alignment of the cell in the viewport, excluding the columns sticking over it. See {@link ScrollToIndexAlign} for the values.
     * @defaultValue "start"
     */
    colAlign?: ScrollToIndexAlign;
}
