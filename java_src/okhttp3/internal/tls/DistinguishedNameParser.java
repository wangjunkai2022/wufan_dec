package okhttp3.internal.tls;

import javax.security.auth.x500.X500Principal;
/* loaded from: classes5.dex */
final class DistinguishedNameParser {
    private int beg;
    private char[] chars;
    private int cur;
    private final String dn;
    private int end;
    private final int length;
    private int pos;

    DistinguishedNameParser(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.dn = name;
        this.length = name.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
        return new java.lang.String(r1, r2, r8.cur - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String escapedAV() {
        /*
            r8 = this;
            int r0 = r8.pos
            r8.beg = r0
            r8.end = r0
        L6:
            int r0 = r8.pos
            int r1 = r8.length
            if (r0 < r1) goto L19
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.chars
            int r2 = r8.beg
            int r3 = r8.end
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L19:
            char[] r1 = r8.chars
            char r2 = r1[r0]
            r3 = 44
            r4 = 43
            r5 = 59
            r6 = 32
            if (r2 == r6) goto L5e
            if (r2 == r5) goto L53
            r5 = 92
            if (r2 == r5) goto L40
            if (r2 == r4) goto L53
            if (r2 == r3) goto L53
            int r2 = r8.end
            int r3 = r2 + 1
            r8.end = r3
            char r3 = r1[r0]
            r1[r2] = r3
            int r0 = r0 + 1
            r8.pos = r0
            goto L6
        L40:
            int r0 = r8.end
            int r2 = r0 + 1
            r8.end = r2
            char r2 = r8.getEscaped()
            r1[r0] = r2
            int r0 = r8.pos
            int r0 = r0 + 1
            r8.pos = r0
            goto L6
        L53:
            java.lang.String r0 = new java.lang.String
            int r2 = r8.beg
            int r3 = r8.end
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L5e:
            int r2 = r8.end
            r8.cur = r2
            int r0 = r0 + 1
            r8.pos = r0
            int r0 = r2 + 1
            r8.end = r0
            r1[r2] = r6
        L6c:
            int r0 = r8.pos
            int r1 = r8.length
            if (r0 >= r1) goto L85
            char[] r2 = r8.chars
            char r7 = r2[r0]
            if (r7 != r6) goto L85
            int r1 = r8.end
            int r7 = r1 + 1
            r8.end = r7
            r2[r1] = r6
            int r0 = r0 + 1
            r8.pos = r0
            goto L6c
        L85:
            if (r0 == r1) goto L95
            char[] r1 = r8.chars
            char r2 = r1[r0]
            if (r2 == r3) goto L95
            char r2 = r1[r0]
            if (r2 == r4) goto L95
            char r0 = r1[r0]
            if (r0 != r5) goto L6
        L95:
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.chars
            int r2 = r8.beg
            int r3 = r8.cur
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.tls.DistinguishedNameParser.escapedAV():java.lang.String");
    }

    private int getByte(int i2) {
        int i4;
        int i5;
        int i6 = i2 + 1;
        if (i6 < this.length) {
            char[] cArr = this.chars;
            char c4 = cArr[i2];
            if (c4 >= '0' && c4 <= '9') {
                i4 = c4 - '0';
            } else if (c4 >= 'a' && c4 <= 'f') {
                i4 = c4 - 'W';
            } else if (c4 < 'A' || c4 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            } else {
                i4 = c4 - '7';
            }
            char c5 = cArr[i6];
            if (c5 >= '0' && c5 <= '9') {
                i5 = c5 - '0';
            } else if (c5 >= 'a' && c5 <= 'f') {
                i5 = c5 - 'W';
            } else if (c5 < 'A' || c5 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            } else {
                i5 = c5 - '7';
            }
            return (i4 << 4) + i5;
        }
        throw new IllegalStateException("Malformed DN: " + this.dn);
    }

    private char getEscaped() {
        int i2 = this.pos + 1;
        this.pos = i2;
        if (i2 != this.length) {
            char[] cArr = this.chars;
            char c4 = cArr[i2];
            if (c4 != ' ' && c4 != '%' && c4 != '\\' && c4 != '_' && c4 != '\"' && c4 != '#') {
                switch (c4) {
                    case '*':
                    case '+':
                    case ',':
                        break;
                    default:
                        switch (c4) {
                            case ';':
                            case '<':
                            case '=':
                            case '>':
                                break;
                            default:
                                return getUTF8();
                        }
                }
            }
            return cArr[i2];
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.dn);
    }

    private char getUTF8() {
        int i2;
        int i4;
        int i5 = getByte(this.pos);
        this.pos++;
        if (i5 < 128) {
            return (char) i5;
        }
        if (i5 < 192 || i5 > 247) {
            return '?';
        }
        if (i5 <= 223) {
            i4 = i5 & 31;
            i2 = 1;
        } else if (i5 <= 239) {
            i2 = 2;
            i4 = i5 & 15;
        } else {
            i2 = 3;
            i4 = i5 & 7;
        }
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = this.pos + 1;
            this.pos = i7;
            if (i7 == this.length || this.chars[i7] != '\\') {
                return '?';
            }
            int i8 = i7 + 1;
            this.pos = i8;
            int i9 = getByte(i8);
            this.pos++;
            if ((i9 & 192) != 128) {
                return '?';
            }
            i4 = (i4 << 6) + (i9 & 63);
        }
        return (char) i4;
    }

    private String hexAV() {
        int i2;
        int i4 = this.pos;
        if (i4 + 4 < this.length) {
            this.beg = i4;
            this.pos = i4 + 1;
            while (true) {
                i2 = this.pos;
                if (i2 == this.length) {
                    break;
                }
                char[] cArr = this.chars;
                if (cArr[i2] == '+' || cArr[i2] == ',' || cArr[i2] == ';') {
                    break;
                } else if (cArr[i2] == ' ') {
                    this.end = i2;
                    this.pos = i2 + 1;
                    while (true) {
                        int i5 = this.pos;
                        if (i5 >= this.length || this.chars[i5] != ' ') {
                            break;
                        }
                        this.pos = i5 + 1;
                    }
                } else {
                    if (cArr[i2] >= 'A' && cArr[i2] <= 'F') {
                        cArr[i2] = (char) (cArr[i2] + ' ');
                    }
                    this.pos = i2 + 1;
                }
            }
            this.end = i2;
            int i6 = this.end;
            int i7 = this.beg;
            int i8 = i6 - i7;
            if (i8 >= 5 && (i8 & 1) != 0) {
                int i9 = i8 / 2;
                byte[] bArr = new byte[i9];
                int i10 = i7 + 1;
                for (int i11 = 0; i11 < i9; i11++) {
                    bArr[i11] = (byte) getByte(i10);
                    i10 += 2;
                }
                return new String(this.chars, this.beg, i8);
            }
            throw new IllegalStateException("Unexpected end of DN: " + this.dn);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.dn);
    }

    private String nextAT() {
        int i2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        while (true) {
            i2 = this.pos;
            i4 = this.length;
            if (i2 >= i4 || this.chars[i2] != ' ') {
                break;
            }
            this.pos = i2 + 1;
        }
        if (i2 == i4) {
            return null;
        }
        this.beg = i2;
        this.pos = i2 + 1;
        while (true) {
            i5 = this.pos;
            i6 = this.length;
            if (i5 >= i6) {
                break;
            }
            char[] cArr = this.chars;
            if (cArr[i5] == '=' || cArr[i5] == ' ') {
                break;
            }
            this.pos = i5 + 1;
        }
        if (i5 < i6) {
            this.end = i5;
            if (this.chars[i5] == ' ') {
                while (true) {
                    i7 = this.pos;
                    i8 = this.length;
                    if (i7 >= i8) {
                        break;
                    }
                    char[] cArr2 = this.chars;
                    if (cArr2[i7] == '=' || cArr2[i7] != ' ') {
                        break;
                    }
                    this.pos = i7 + 1;
                }
                if (this.chars[i7] != '=' || i7 == i8) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.dn);
                }
            }
            this.pos++;
            while (true) {
                int i9 = this.pos;
                if (i9 >= this.length || this.chars[i9] != ' ') {
                    break;
                }
                this.pos = i9 + 1;
            }
            int i10 = this.end;
            int i11 = this.beg;
            if (i10 - i11 > 4) {
                char[] cArr3 = this.chars;
                if (cArr3[i11 + 3] == '.' && ((cArr3[i11] == 'O' || cArr3[i11] == 'o') && ((cArr3[i11 + 1] == 'I' || cArr3[i11 + 1] == 'i') && (cArr3[i11 + 2] == 'D' || cArr3[i11 + 2] == 'd')))) {
                    this.beg = i11 + 4;
                }
            }
            char[] cArr4 = this.chars;
            int i12 = this.beg;
            return new String(cArr4, i12, i10 - i12);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.dn);
    }

    private String quotedAV() {
        int i2 = this.pos + 1;
        this.pos = i2;
        this.beg = i2;
        this.end = i2;
        while (true) {
            int i4 = this.pos;
            if (i4 != this.length) {
                char[] cArr = this.chars;
                if (cArr[i4] == '\"') {
                    this.pos = i4 + 1;
                    while (true) {
                        int i5 = this.pos;
                        if (i5 >= this.length || this.chars[i5] != ' ') {
                            break;
                        }
                        this.pos = i5 + 1;
                    }
                    char[] cArr2 = this.chars;
                    int i6 = this.beg;
                    return new String(cArr2, i6, this.end - i6);
                }
                if (cArr[i4] == '\\') {
                    cArr[this.end] = getEscaped();
                } else {
                    cArr[this.end] = cArr[i4];
                }
                this.pos++;
                this.end++;
            } else {
                throw new IllegalStateException("Unexpected end of DN: " + this.dn);
            }
        }
    }

    public String findMostSpecific(String str) {
        String quotedAV;
        this.pos = 0;
        this.beg = 0;
        this.end = 0;
        this.cur = 0;
        this.chars = this.dn.toCharArray();
        String nextAT = nextAT();
        if (nextAT == null) {
            return null;
        }
        do {
            int i2 = this.pos;
            if (i2 == this.length) {
                return null;
            }
            char c4 = this.chars[i2];
            if (c4 == '\"') {
                quotedAV = quotedAV();
            } else if (c4 != '#') {
                quotedAV = (c4 == '+' || c4 == ',' || c4 == ';') ? "" : escapedAV();
            } else {
                quotedAV = hexAV();
            }
            if (str.equalsIgnoreCase(nextAT)) {
                return quotedAV;
            }
            int i4 = this.pos;
            if (i4 >= this.length) {
                return null;
            }
            char[] cArr = this.chars;
            if (cArr[i4] != ',' && cArr[i4] != ';' && cArr[i4] != '+') {
                throw new IllegalStateException("Malformed DN: " + this.dn);
            }
            this.pos = i4 + 1;
            nextAT = nextAT();
        } while (nextAT != null);
        throw new IllegalStateException("Malformed DN: " + this.dn);
    }
}
