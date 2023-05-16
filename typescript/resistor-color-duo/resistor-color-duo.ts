export function decodedValue(colors: string[]) {
  const color_map = new Map<string, string>([
    ['black', '0'],
    ['brown', '1'],
    ['red', '2'],
    ['orange', '3'],
    ['yellow', '4'],
    ['green', '5'],
    ['blue', '6'],
    ['violet', '7'],
    ['grey', '8'],
    ['white', '9']
  ]);

  const c1 = color_map.get(colors[0]);
  const c2 = color_map.get(colors[1]);
  return Number("" + c1 + c2);
}
