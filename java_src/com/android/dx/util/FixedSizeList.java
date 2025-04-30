package com.android.dx.util;

import java.util.Arrays;
/* loaded from: classes2.dex */
public class FixedSizeList extends MutabilityControl implements ToHuman {
    private Object[] arr;

    public FixedSizeList(int i2) {
        super(i2 != 0);
        try {
            this.arr = new Object[i2];
        } catch (NegativeArraySizeException unused) {
            throw new IllegalArgumentException("size < 0");
        }
    }

    private Object throwIndex(int i2) {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("n < 0");
        }
        throw new IndexOutOfBoundsException("n >= size()");
    }

    private String toString0(String str, String str2, String str3, boolean z3) {
        int length = this.arr.length;
        StringBuilder sb = new StringBuilder((length * 10) + 10);
        if (str != null) {
            sb.append(str);
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 != 0 && str2 != null) {
                sb.append(str2);
            }
            if (z3) {
                sb.append(((ToHuman) this.arr[i2]).toHuman());
            } else {
                sb.append(this.arr[i2]);
            }
        }
        if (str3 != null) {
            sb.append(str3);
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.arr, ((FixedSizeList) obj).arr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object get0(int i2) {
        try {
            Object obj = this.arr[i2];
            if (obj != null) {
                return obj;
            }
            throw new NullPointerException("unset: " + i2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            return throwIndex(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Object getOrNull0(int i2) {
        return this.arr[i2];
    }

    public int hashCode() {
        return Arrays.hashCode(this.arr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void set0(int i2, Object obj) {
        throwIfImmutable();
        try {
            this.arr[i2] = obj;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throwIndex(i2);
        }
    }

    public void shrinkToFit() {
        int length = this.arr.length;
        int i2 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            if (this.arr[i4] != null) {
                i2++;
            }
        }
        if (length == i2) {
            return;
        }
        throwIfImmutable();
        Object[] objArr = new Object[i2];
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            Object obj = this.arr[i6];
            if (obj != null) {
                objArr[i5] = obj;
                i5++;
            }
        }
        this.arr = objArr;
        if (i2 == 0) {
            setImmutable();
        }
    }

    public final int size() {
        return this.arr.length;
    }

    public String toHuman() {
        String name = getClass().getName();
        return toString0(name.substring(name.lastIndexOf(46) + 1) + '{', ", ", "}", true);
    }

    public String toString() {
        String name = getClass().getName();
        return toString0(name.substring(name.lastIndexOf(46) + 1) + '{', ", ", "}", false);
    }

    public String toHuman(String str, String str2, String str3) {
        return toString0(str, str2, str3, true);
    }

    public String toString(String str, String str2, String str3) {
        return toString0(str, str2, str3, false);
    }
}
