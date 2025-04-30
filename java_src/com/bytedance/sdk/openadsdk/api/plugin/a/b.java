package com.bytedance.sdk.openadsdk.api.plugin.a;

import javax.security.auth.x500.X500Principal;
/* compiled from: DistinguishedNameParser.java */
/* loaded from: classes2.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f10532a;

    /* renamed from: b  reason: collision with root package name */
    private final int f10533b;

    /* renamed from: c  reason: collision with root package name */
    private int f10534c;

    /* renamed from: d  reason: collision with root package name */
    private int f10535d;

    /* renamed from: e  reason: collision with root package name */
    private int f10536e;

    /* renamed from: f  reason: collision with root package name */
    private int f10537f;

    /* renamed from: g  reason: collision with root package name */
    private char[] f10538g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f10532a = name;
        this.f10533b = name.length();
    }

    private String a() {
        int i2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        while (true) {
            i2 = this.f10534c;
            i4 = this.f10533b;
            if (i2 >= i4 || this.f10538g[i2] != ' ') {
                break;
            }
            this.f10534c = i2 + 1;
        }
        if (i2 == i4) {
            return null;
        }
        this.f10535d = i2;
        this.f10534c = i2 + 1;
        while (true) {
            i5 = this.f10534c;
            i6 = this.f10533b;
            if (i5 >= i6) {
                break;
            }
            char[] cArr = this.f10538g;
            if (cArr[i5] == '=' || cArr[i5] == ' ') {
                break;
            }
            this.f10534c = i5 + 1;
        }
        if (i5 < i6) {
            this.f10536e = i5;
            if (this.f10538g[i5] == ' ') {
                while (true) {
                    i7 = this.f10534c;
                    i8 = this.f10533b;
                    if (i7 >= i8) {
                        break;
                    }
                    char[] cArr2 = this.f10538g;
                    if (cArr2[i7] == '=' || cArr2[i7] != ' ') {
                        break;
                    }
                    this.f10534c = i7 + 1;
                }
                if (this.f10538g[i7] != '=' || i7 == i8) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.f10532a);
                }
            }
            this.f10534c++;
            while (true) {
                int i9 = this.f10534c;
                if (i9 >= this.f10533b || this.f10538g[i9] != ' ') {
                    break;
                }
                this.f10534c = i9 + 1;
            }
            int i10 = this.f10536e;
            int i11 = this.f10535d;
            if (i10 - i11 > 4) {
                char[] cArr3 = this.f10538g;
                if (cArr3[i11 + 3] == '.' && ((cArr3[i11] == 'O' || cArr3[i11] == 'o') && ((cArr3[i11 + 1] == 'I' || cArr3[i11 + 1] == 'i') && (cArr3[i11 + 2] == 'D' || cArr3[i11 + 2] == 'd')))) {
                    this.f10535d = i11 + 4;
                }
            }
            char[] cArr4 = this.f10538g;
            int i12 = this.f10535d;
            return new String(cArr4, i12, i10 - i12);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f10532a);
    }

    private String b() {
        int i2 = this.f10534c + 1;
        this.f10534c = i2;
        this.f10535d = i2;
        this.f10536e = i2;
        while (true) {
            int i4 = this.f10534c;
            if (i4 != this.f10533b) {
                char[] cArr = this.f10538g;
                if (cArr[i4] == '\"') {
                    this.f10534c = i4 + 1;
                    while (true) {
                        int i5 = this.f10534c;
                        if (i5 >= this.f10533b || this.f10538g[i5] != ' ') {
                            break;
                        }
                        this.f10534c = i5 + 1;
                    }
                    char[] cArr2 = this.f10538g;
                    int i6 = this.f10535d;
                    return new String(cArr2, i6, this.f10536e - i6);
                }
                if (cArr[i4] == '\\') {
                    cArr[this.f10536e] = e();
                } else {
                    cArr[this.f10536e] = cArr[i4];
                }
                this.f10534c++;
                this.f10536e++;
            } else {
                throw new IllegalStateException("Unexpected end of DN: " + this.f10532a);
            }
        }
    }

    private String c() {
        int i2;
        int i4 = this.f10534c;
        if (i4 + 4 < this.f10533b) {
            this.f10535d = i4;
            this.f10534c = i4 + 1;
            while (true) {
                i2 = this.f10534c;
                if (i2 == this.f10533b) {
                    break;
                }
                char[] cArr = this.f10538g;
                if (cArr[i2] == '+' || cArr[i2] == ',' || cArr[i2] == ';') {
                    break;
                } else if (cArr[i2] == ' ') {
                    this.f10536e = i2;
                    this.f10534c = i2 + 1;
                    while (true) {
                        int i5 = this.f10534c;
                        if (i5 >= this.f10533b || this.f10538g[i5] != ' ') {
                            break;
                        }
                        this.f10534c = i5 + 1;
                    }
                } else {
                    if (cArr[i2] >= 'A' && cArr[i2] <= 'F') {
                        cArr[i2] = (char) (cArr[i2] + ' ');
                    }
                    this.f10534c = i2 + 1;
                }
            }
            this.f10536e = i2;
            int i6 = this.f10536e;
            int i7 = this.f10535d;
            int i8 = i6 - i7;
            if (i8 >= 5 && (i8 & 1) != 0) {
                int i9 = i8 / 2;
                byte[] bArr = new byte[i9];
                int i10 = i7 + 1;
                for (int i11 = 0; i11 < i9; i11++) {
                    bArr[i11] = (byte) a(i10);
                    i10 += 2;
                }
                return new String(this.f10538g, this.f10535d, i8);
            }
            throw new IllegalStateException("Unexpected end of DN: " + this.f10532a);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f10532a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
        return new java.lang.String(r1, r2, r8.f10537f - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String d() {
        /*
            r8 = this;
            int r0 = r8.f10534c
            r8.f10535d = r0
            r8.f10536e = r0
        L6:
            int r0 = r8.f10534c
            int r1 = r8.f10533b
            if (r0 < r1) goto L19
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.f10538g
            int r2 = r8.f10535d
            int r3 = r8.f10536e
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L19:
            char[] r1 = r8.f10538g
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
            int r2 = r8.f10536e
            int r3 = r2 + 1
            r8.f10536e = r3
            char r3 = r1[r0]
            r1[r2] = r3
            int r0 = r0 + 1
            r8.f10534c = r0
            goto L6
        L40:
            int r0 = r8.f10536e
            int r2 = r0 + 1
            r8.f10536e = r2
            char r2 = r8.e()
            r1[r0] = r2
            int r0 = r8.f10534c
            int r0 = r0 + 1
            r8.f10534c = r0
            goto L6
        L53:
            java.lang.String r0 = new java.lang.String
            int r2 = r8.f10535d
            int r3 = r8.f10536e
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L5e:
            int r2 = r8.f10536e
            r8.f10537f = r2
            int r0 = r0 + 1
            r8.f10534c = r0
            int r0 = r2 + 1
            r8.f10536e = r0
            r1[r2] = r6
        L6c:
            int r0 = r8.f10534c
            int r1 = r8.f10533b
            if (r0 >= r1) goto L85
            char[] r2 = r8.f10538g
            char r7 = r2[r0]
            if (r7 != r6) goto L85
            int r1 = r8.f10536e
            int r7 = r1 + 1
            r8.f10536e = r7
            r2[r1] = r6
            int r0 = r0 + 1
            r8.f10534c = r0
            goto L6c
        L85:
            if (r0 == r1) goto L95
            char[] r1 = r8.f10538g
            char r2 = r1[r0]
            if (r2 == r3) goto L95
            char r2 = r1[r0]
            if (r2 == r4) goto L95
            char r0 = r1[r0]
            if (r0 != r5) goto L6
        L95:
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.f10538g
            int r2 = r8.f10535d
            int r3 = r8.f10537f
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.api.plugin.a.b.d():java.lang.String");
    }

    private char e() {
        int i2 = this.f10534c + 1;
        this.f10534c = i2;
        if (i2 != this.f10533b) {
            char[] cArr = this.f10538g;
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
                                return f();
                        }
                }
            }
            return cArr[i2];
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f10532a);
    }

    private char f() {
        int i2;
        int i4;
        int a4 = a(this.f10534c);
        this.f10534c++;
        if (a4 < 128) {
            return (char) a4;
        }
        if (a4 < 192 || a4 > 247) {
            return '?';
        }
        if (a4 <= 223) {
            i4 = a4 & 31;
            i2 = 1;
        } else if (a4 <= 239) {
            i2 = 2;
            i4 = a4 & 15;
        } else {
            i2 = 3;
            i4 = a4 & 7;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = this.f10534c + 1;
            this.f10534c = i6;
            if (i6 == this.f10533b || this.f10538g[i6] != '\\') {
                return '?';
            }
            int i7 = i6 + 1;
            this.f10534c = i7;
            int a5 = a(i7);
            this.f10534c++;
            if ((a5 & 192) != 128) {
                return '?';
            }
            i4 = (i4 << 6) + (a5 & 63);
        }
        return (char) i4;
    }

    private int a(int i2) {
        int i4;
        int i5;
        int i6 = i2 + 1;
        if (i6 < this.f10533b) {
            char[] cArr = this.f10538g;
            char c4 = cArr[i2];
            if (c4 >= '0' && c4 <= '9') {
                i4 = c4 - '0';
            } else if (c4 >= 'a' && c4 <= 'f') {
                i4 = c4 - 'W';
            } else if (c4 < 'A' || c4 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f10532a);
            } else {
                i4 = c4 - '7';
            }
            char c5 = cArr[i6];
            if (c5 >= '0' && c5 <= '9') {
                i5 = c5 - '0';
            } else if (c5 >= 'a' && c5 <= 'f') {
                i5 = c5 - 'W';
            } else if (c5 < 'A' || c5 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f10532a);
            } else {
                i5 = c5 - '7';
            }
            return (i4 << 4) + i5;
        }
        throw new IllegalStateException("Malformed DN: " + this.f10532a);
    }

    public String a(String str) {
        String b4;
        this.f10534c = 0;
        this.f10535d = 0;
        this.f10536e = 0;
        this.f10537f = 0;
        this.f10538g = this.f10532a.toCharArray();
        String a4 = a();
        if (a4 == null) {
            return null;
        }
        do {
            int i2 = this.f10534c;
            if (i2 == this.f10533b) {
                return null;
            }
            char c4 = this.f10538g[i2];
            if (c4 == '\"') {
                b4 = b();
            } else if (c4 != '#') {
                b4 = (c4 == '+' || c4 == ',' || c4 == ';') ? "" : d();
            } else {
                b4 = c();
            }
            if (str.equalsIgnoreCase(a4)) {
                return b4;
            }
            int i4 = this.f10534c;
            if (i4 >= this.f10533b) {
                return null;
            }
            char[] cArr = this.f10538g;
            if (cArr[i4] != ',' && cArr[i4] != ';' && cArr[i4] != '+') {
                throw new IllegalStateException("Malformed DN: " + this.f10532a);
            }
            this.f10534c = i4 + 1;
            a4 = a();
        } while (a4 != null);
        throw new IllegalStateException("Malformed DN: " + this.f10532a);
    }
}
