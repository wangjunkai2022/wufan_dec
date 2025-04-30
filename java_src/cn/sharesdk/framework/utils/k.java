package cn.sharesdk.framework.utils;

import java.io.IOException;
/* compiled from: UnicodeEscaper.java */
/* loaded from: classes2.dex */
public abstract class k implements Escaper {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UnicodeEscaper.java */
    /* loaded from: classes2.dex */
    public static final class a extends ThreadLocal<char[]> {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public char[] initialValue() {
            return new char[1024];
        }
    }

    protected static final int b(CharSequence charSequence, int i2, int i4) {
        if (i2 < i4) {
            char charAt = charSequence.charAt(i2);
            int i5 = i2 + 1;
            if (charAt < 55296 || charAt > 57343) {
                return charAt;
            }
            if (charAt > 56319) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unexpected low surrogate character '");
                sb.append(charAt);
                sb.append("' with value ");
                sb.append((int) charAt);
                sb.append(" at index ");
                sb.append(i5 - 1);
                throw new IllegalArgumentException(sb.toString());
            } else if (i5 == i4) {
                return -charAt;
            } else {
                char charAt2 = charSequence.charAt(i5);
                if (Character.isLowSurrogate(charAt2)) {
                    return Character.toCodePoint(charAt, charAt2);
                }
                throw new IllegalArgumentException("Expected low surrogate but got char '" + charAt2 + "' with value " + ((int) charAt2) + " at index " + i5);
            }
        }
        throw new IndexOutOfBoundsException("Index exceeds specified range");
    }

    protected int a(CharSequence charSequence, int i2, int i4) {
        while (i2 < i4) {
            int b4 = b(charSequence, i2, i4);
            if (b4 < 0 || a(b4) != null) {
                break;
            }
            i2 += Character.isSupplementaryCodePoint(b4) ? 2 : 1;
        }
        return i2;
    }

    protected abstract char[] a(int i2);

    @Override // cn.sharesdk.framework.utils.Escaper
    public String escape(String str) {
        int length = str.length();
        int a4 = a(str, 0, length);
        return a4 == length ? str : a(str, a4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String a(String str, int i2) {
        int length = str.length();
        char[] cArr = new a().get();
        int i4 = 0;
        int i5 = 0;
        while (i2 < length) {
            int b4 = b(str, i2, length);
            if (b4 >= 0) {
                char[] a4 = a(b4);
                if (a4 != null) {
                    int i6 = i2 - i4;
                    int i7 = i5 + i6;
                    int length2 = a4.length + i7;
                    if (cArr.length < length2) {
                        cArr = a(cArr, i5, length2 + (length - i2) + 32);
                    }
                    if (i6 > 0) {
                        str.getChars(i4, i2, cArr, i5);
                        i5 = i7;
                    }
                    if (a4.length > 0) {
                        System.arraycopy(a4, 0, cArr, i5, a4.length);
                        i5 += a4.length;
                    }
                }
                i4 = (Character.isSupplementaryCodePoint(b4) ? 2 : 1) + i2;
                i2 = a(str, i4, length);
            } else {
                throw new IllegalArgumentException("Trailing high surrogate at end of input");
            }
        }
        int i8 = length - i4;
        if (i8 > 0) {
            int i9 = i8 + i5;
            if (cArr.length < i9) {
                cArr = a(cArr, i5, i9);
            }
            str.getChars(i4, length, cArr, i5);
            i5 = i9;
        }
        return new String(cArr, 0, i5);
    }

    @Override // cn.sharesdk.framework.utils.Escaper
    public Appendable escape(final Appendable appendable) {
        f.a(appendable);
        return new Appendable() { // from class: cn.sharesdk.framework.utils.k.1

            /* renamed from: a  reason: collision with root package name */
            int f8935a = -1;

            /* renamed from: b  reason: collision with root package name */
            char[] f8936b = new char[2];

            private void a(char[] cArr, int i2) throws IOException {
                for (int i4 = 0; i4 < i2; i4++) {
                    appendable.append(cArr[i4]);
                }
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence) throws IOException {
                return append(charSequence, 0, charSequence.length());
            }

            @Override // java.lang.Appendable
            public Appendable append(CharSequence charSequence, int i2, int i4) throws IOException {
                int i5;
                if (i2 < i4) {
                    if (this.f8935a != -1) {
                        char charAt = charSequence.charAt(i2);
                        int i6 = i2 + 1;
                        if (Character.isLowSurrogate(charAt)) {
                            char[] a4 = k.this.a(Character.toCodePoint((char) this.f8935a, charAt));
                            if (a4 != null) {
                                a(a4, a4.length);
                                i2 = i6;
                            } else {
                                appendable.append((char) this.f8935a);
                            }
                            this.f8935a = -1;
                            i5 = i2;
                            i2 = i6;
                        } else {
                            throw new IllegalArgumentException("Expected low surrogate character but got " + charAt);
                        }
                    } else {
                        i5 = i2;
                    }
                    while (true) {
                        int a5 = k.this.a(charSequence, i2, i4);
                        if (a5 > i5) {
                            appendable.append(charSequence, i5, a5);
                        }
                        if (a5 == i4) {
                            break;
                        }
                        int b4 = k.b(charSequence, a5, i4);
                        if (b4 < 0) {
                            this.f8935a = -b4;
                            break;
                        }
                        char[] a6 = k.this.a(b4);
                        if (a6 != null) {
                            a(a6, a6.length);
                        } else {
                            a(this.f8936b, Character.toChars(b4, this.f8936b, 0));
                        }
                        i5 = (Character.isSupplementaryCodePoint(b4) ? 2 : 1) + a5;
                        i2 = i5;
                    }
                }
                return this;
            }

            @Override // java.lang.Appendable
            public Appendable append(char c4) throws IOException {
                if (this.f8935a != -1) {
                    if (Character.isLowSurrogate(c4)) {
                        char[] a4 = k.this.a(Character.toCodePoint((char) this.f8935a, c4));
                        if (a4 != null) {
                            a(a4, a4.length);
                        } else {
                            appendable.append((char) this.f8935a);
                            appendable.append(c4);
                        }
                        this.f8935a = -1;
                    } else {
                        throw new IllegalArgumentException("Expected low surrogate character but got '" + c4 + "' with value " + ((int) c4));
                    }
                } else if (Character.isHighSurrogate(c4)) {
                    this.f8935a = c4;
                } else if (!Character.isLowSurrogate(c4)) {
                    char[] a5 = k.this.a(c4);
                    if (a5 != null) {
                        a(a5, a5.length);
                    } else {
                        appendable.append(c4);
                    }
                } else {
                    throw new IllegalArgumentException("Unexpected low surrogate character '" + c4 + "' with value " + ((int) c4));
                }
                return this;
            }
        };
    }

    private static final char[] a(char[] cArr, int i2, int i4) {
        char[] cArr2 = new char[i4];
        if (i2 > 0) {
            System.arraycopy(cArr, 0, cArr2, 0, i2);
        }
        return cArr2;
    }
}
