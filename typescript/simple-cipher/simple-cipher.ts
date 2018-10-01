class SimpleCipher {

    key: string;

    constructor(k: string = "aaaa") {
      this.key = k;
    }

    encode(s: string) {
        return s;
    }

    decode(s: string) {
        return s;
    }
}

export default SimpleCipher
