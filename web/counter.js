const modulePromise = await WebAssembly.instantiateStreaming(fetch('lib.wasm'));

/**
 * @type {{
 * getCount: () => number,
 * add: (a: number) => void,
 * sub: (a: number) => void,
 * }}
 */
export default modulePromise.instance.exports;
