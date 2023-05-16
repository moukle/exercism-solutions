export class Matrix {
  _rows: Number[][];
  _cols: Number[][];

  constructor(input: string) {
    this._rows = [];
    this._cols = [];

    var rows = input.split('\n');
    var max = 0;
    var cur;
    for(var r of rows) {
      cur = r.split(' ').map(Number);
      max = Math.max(max, cur.length);
      this._rows.push(cur);
    }

    // extract cols from rows
    for (let i = 0; i < max; i++)
      this._cols.push([])

    for (let i = 0; i < max; i++) {
      for(var rr of this._rows) {
        this._cols[i].push(rr[i]);
      }
    }
  }

  get rows(): Number[][] {
    return this._rows;
  }

  get columns(): Number[][] {
    return this._cols;
  }
}
