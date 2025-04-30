package io.netty.util.internal;

import java.util.Arrays;
/* loaded from: classes5.dex */
public final class AppendableCharSequence implements CharSequence, Appendable {
    private char[] chars;
    private int pos;

    public AppendableCharSequence(int i2) {
        if (i2 >= 1) {
            this.chars = new char[i2];
            return;
        }
        throw new IllegalArgumentException("length: " + i2 + " (length: >= 1)");
    }

    private static char[] expand(char[] cArr, int i2, int i4) {
        int length = cArr.length;
        do {
            length <<= 1;
            if (length < 0) {
                throw new IllegalStateException();
            }
        } while (i2 > length);
        char[] cArr2 = new char[length];
        System.arraycopy(cArr, 0, cArr2, 0, i4);
        return cArr2;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i2) {
        if (i2 <= this.pos) {
            return this.chars[i2];
        }
        throw new IndexOutOfBoundsException();
    }

    public char charAtUnsafe(int i2) {
        return this.chars[i2];
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.pos;
    }

    public void reset() {
        this.pos = 0;
    }

    public void setLength(int i2) {
        if (i2 >= 0 && i2 <= this.pos) {
            this.pos = i2;
            return;
        }
        throw new IllegalArgumentException("length: " + i2 + " (length: >= 0, <= " + this.pos + ')');
    }

    public String subStringUnsafe(int i2, int i4) {
        return new String(this.chars, i2, i4 - i2);
    }

    public String substring(int i2, int i4) {
        int i5 = i4 - i2;
        int i6 = this.pos;
        if (i2 <= i6 && i5 <= i6) {
            return new String(this.chars, i2, i5);
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return new String(this.chars, 0, this.pos);
    }

    @Override // java.lang.CharSequence
    public AppendableCharSequence subSequence(int i2, int i4) {
        if (i2 == i4) {
            return new AppendableCharSequence(Math.min(16, this.chars.length));
        }
        return new AppendableCharSequence(Arrays.copyOfRange(this.chars, i2, i4));
    }

    private AppendableCharSequence(char[] cArr) {
        if (cArr.length >= 1) {
            this.chars = cArr;
            this.pos = cArr.length;
            return;
        }
        throw new IllegalArgumentException("length: " + cArr.length + " (length: >= 1)");
    }

    @Override // java.lang.Appendable
    public AppendableCharSequence append(char c4) {
        int i2 = this.pos;
        char[] cArr = this.chars;
        if (i2 == cArr.length) {
            char[] cArr2 = new char[cArr.length << 1];
            this.chars = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
        }
        char[] cArr3 = this.chars;
        int i4 = this.pos;
        this.pos = i4 + 1;
        cArr3[i4] = c4;
        return this;
    }

    @Override // java.lang.Appendable
    public AppendableCharSequence append(CharSequence charSequence) {
        return append(charSequence, 0, charSequence.length());
    }

    @Override // java.lang.Appendable
    public AppendableCharSequence append(CharSequence charSequence, int i2, int i4) {
        if (charSequence.length() >= i4) {
            int i5 = i4 - i2;
            char[] cArr = this.chars;
            int length = cArr.length;
            int i6 = this.pos;
            if (i5 > length - i6) {
                this.chars = expand(cArr, i6 + i5, i6);
            }
            if (charSequence instanceof AppendableCharSequence) {
                System.arraycopy(((AppendableCharSequence) charSequence).chars, i2, this.chars, this.pos, i5);
                this.pos += i5;
                return this;
            }
            while (i2 < i4) {
                char[] cArr2 = this.chars;
                int i7 = this.pos;
                this.pos = i7 + 1;
                cArr2[i7] = charSequence.charAt(i2);
                i2++;
            }
            return this;
        }
        throw new IndexOutOfBoundsException();
    }
}
