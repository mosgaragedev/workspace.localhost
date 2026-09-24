/**
 * A cell position in the grid.
 */
export interface GridCell {
    /**
     * The row index of the cell.
     */
    rowIndex: number;
    /**
     * The column index of the cell.
     */
    colIndex: number;
}
/**
 * A cell merged over multiple rows and/or columns in the grid.
 *
 * {@link GridCell.rowIndex} and {@link GridCell.colIndex} point to the origin cell (top row, start column) of the merged area.
 */
export interface GridSpan extends GridCell {
    /**
     * The number of rows the cell spans.
     * @defaultValue 1
     */
    rowSpan?: number;
    /**
     * The number of columns the cell spans.
     * @defaultValue 1
     */
    colSpan?: number;
}
