package androidx.collection;
/* loaded from: classes.dex */
public final class CircularIntArray {

    /* renamed from: a  reason: collision with root package name */
    private int[] f1671a;

    /* renamed from: b  reason: collision with root package name */
    private int f1672b;

    /* renamed from: c  reason: collision with root package name */
    private int f1673c;

    /* renamed from: d  reason: collision with root package name */
    private int f1674d;

    public CircularIntArray() {
        this(8);
    }

    private void a() {
        int[] iArr = this.f1671a;
        int length = iArr.length;
        int i2 = this.f1672b;
        int i4 = length - i2;
        int i5 = length << 1;
        if (i5 >= 0) {
            int[] iArr2 = new int[i5];
            System.arraycopy(iArr, i2, iArr2, 0, i4);
            System.arraycopy(this.f1671a, 0, iArr2, i4, this.f1672b);
            this.f1671a = iArr2;
            this.f1672b = 0;
            this.f1673c = length;
            this.f1674d = i5 - 1;
            return;
        }
        throw new RuntimeException("Max array capacity exceeded");
    }

    public void addFirst(int i2) {
        int i4 = (this.f1672b - 1) & this.f1674d;
        this.f1672b = i4;
        this.f1671a[i4] = i2;
        if (i4 == this.f1673c) {
            a();
        }
    }

    public void addLast(int i2) {
        int[] iArr = this.f1671a;
        int i4 = this.f1673c;
        iArr[i4] = i2;
        int i5 = this.f1674d & (i4 + 1);
        this.f1673c = i5;
        if (i5 == this.f1672b) {
            a();
        }
    }

    public void clear() {
        this.f1673c = this.f1672b;
    }

    public int get(int i2) {
        if (i2 >= 0 && i2 < size()) {
            return this.f1671a[this.f1674d & (this.f1672b + i2)];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getFirst() {
        int i2 = this.f1672b;
        if (i2 != this.f1673c) {
            return this.f1671a[i2];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int getLast() {
        int i2 = this.f1672b;
        int i4 = this.f1673c;
        if (i2 != i4) {
            return this.f1671a[(i4 - 1) & this.f1674d];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public boolean isEmpty() {
        return this.f1672b == this.f1673c;
    }

    public int popFirst() {
        int i2 = this.f1672b;
        if (i2 != this.f1673c) {
            int i4 = this.f1671a[i2];
            this.f1672b = (i2 + 1) & this.f1674d;
            return i4;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int popLast() {
        int i2 = this.f1672b;
        int i4 = this.f1673c;
        if (i2 != i4) {
            int i5 = this.f1674d & (i4 - 1);
            int i6 = this.f1671a[i5];
            this.f1673c = i5;
            return i6;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void removeFromEnd(int i2) {
        if (i2 <= 0) {
            return;
        }
        if (i2 <= size()) {
            this.f1673c = this.f1674d & (this.f1673c - i2);
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void removeFromStart(int i2) {
        if (i2 <= 0) {
            return;
        }
        if (i2 <= size()) {
            this.f1672b = this.f1674d & (this.f1672b + i2);
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int size() {
        return (this.f1673c - this.f1672b) & this.f1674d;
    }

    public CircularIntArray(int i2) {
        if (i2 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i2 <= 1073741824) {
            i2 = Integer.bitCount(i2) != 1 ? Integer.highestOneBit(i2 - 1) << 1 : i2;
            this.f1674d = i2 - 1;
            this.f1671a = new int[i2];
            return;
        }
        throw new IllegalArgumentException("capacity must be <= 2^30");
    }
}
