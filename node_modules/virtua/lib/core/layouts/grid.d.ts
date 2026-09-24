export type GridTrackSize = number | "auto";
/**
 * The rows or the columns of the grid.
 *
 * - If a number is set, the grid has that many rows/columns, and the cells receive their indexes.
 * - If an array is set, the grid has one row/column per item, and the cells receive the items.
 */
export type GridAxis<T = number> = number | readonly T[];
type GridSizeFields<T> = {
    [K in Extract<keyof T, string> as T[K] extends GridTrackSize | null | undefined ? K : never]: 0;
};
export type GridSizeKey<T> = [T] extends [object] ? keyof GridSizeFields<T> : never;
/**
 * The sizes of the rows or the columns in pixels.
 *
 * - A number is used as is, and never measured.
 * - `"auto"` fits the largest rendered cell. The auto columns also share the space left in the viewport, as the columns of a table.
 * - A key reads the size, a number or `"auto"`, from the item of each row/column, and a missing size is `"auto"`.
 *
 * The form of the size, a number, `"auto"` or a key, must not be changed after mount. To switch it, remount the grid.
 */
export type GridSize<T = number> = GridTrackSize | GridSizeKey<T>;
export {};
