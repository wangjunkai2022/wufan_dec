package androidx.collection;
/* loaded from: classes.dex */
public final class CircularArray<E> {

    /* renamed from: a  reason: collision with root package name */
    private E[] f1667a;

    /* renamed from: b  reason: collision with root package name */
    private int f1668b;

    /* renamed from: c  reason: collision with root package name */
    private int f1669c;

    /* renamed from: d  reason: collision with root package name */
    private int f1670d;

    public CircularArray() {
        this(8);
    }

    private void a() {
        E[] eArr = this.f1667a;
        int length = eArr.length;
        int i2 = this.f1668b;
        int i4 = length - i2;
        int i5 = length << 1;
        if (i5 >= 0) {
            E[] eArr2 = (E[]) new Object[i5];
            System.arraycopy(eArr, i2, eArr2, 0, i4);
            System.arraycopy(this.f1667a, 0, eArr2, i4, this.f1668b);
            this.f1667a = eArr2;
            this.f1668b = 0;
            this.f1669c = length;
            this.f1670d = i5 - 1;
            return;
        }
        throw new RuntimeException("Max array capacity exceeded");
    }

    public void addFirst(E e4) {
        int i2 = (this.f1668b - 1) & this.f1670d;
        this.f1668b = i2;
        this.f1667a[i2] = e4;
        if (i2 == this.f1669c) {
            a();
        }
    }

    public void addLast(E e4) {
        E[] eArr = this.f1667a;
        int i2 = this.f1669c;
        eArr[i2] = e4;
        int i4 = this.f1670d & (i2 + 1);
        this.f1669c = i4;
        if (i4 == this.f1668b) {
            a();
        }
    }

    public void clear() {
        removeFromStart(size());
    }

    public E get(int i2) {
        if (i2 >= 0 && i2 < size()) {
            return this.f1667a[this.f1670d & (this.f1668b + i2)];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E getFirst() {
        int i2 = this.f1668b;
        if (i2 != this.f1669c) {
            return this.f1667a[i2];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E getLast() {
        int i2 = this.f1668b;
        int i4 = this.f1669c;
        if (i2 != i4) {
            return this.f1667a[(i4 - 1) & this.f1670d];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public boolean isEmpty() {
        return this.f1668b == this.f1669c;
    }

    public E popFirst() {
        int i2 = this.f1668b;
        if (i2 != this.f1669c) {
            E[] eArr = this.f1667a;
            E e4 = eArr[i2];
            eArr[i2] = null;
            this.f1668b = (i2 + 1) & this.f1670d;
            return e4;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E popLast() {
        int i2 = this.f1668b;
        int i4 = this.f1669c;
        if (i2 != i4) {
            int i5 = this.f1670d & (i4 - 1);
            E[] eArr = this.f1667a;
            E e4 = eArr[i5];
            eArr[i5] = null;
            this.f1669c = i5;
            return e4;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void removeFromEnd(int i2) {
        int i4;
        if (i2 <= 0) {
            return;
        }
        if (i2 <= size()) {
            int i5 = this.f1669c;
            int i6 = i2 < i5 ? i5 - i2 : 0;
            int i7 = i6;
            while (true) {
                i4 = this.f1669c;
                if (i7 >= i4) {
                    break;
                }
                this.f1667a[i7] = null;
                i7++;
            }
            int i8 = i4 - i6;
            int i9 = i2 - i8;
            this.f1669c = i4 - i8;
            if (i9 > 0) {
                int length = this.f1667a.length;
                this.f1669c = length;
                int i10 = length - i9;
                for (int i11 = i10; i11 < this.f1669c; i11++) {
                    this.f1667a[i11] = null;
                }
                this.f1669c = i10;
                return;
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void removeFromStart(int i2) {
        if (i2 <= 0) {
            return;
        }
        if (i2 <= size()) {
            int length = this.f1667a.length;
            int i4 = this.f1668b;
            if (i2 < length - i4) {
                length = i4 + i2;
            }
            while (i4 < length) {
                this.f1667a[i4] = null;
                i4++;
            }
            int i5 = this.f1668b;
            int i6 = length - i5;
            int i7 = i2 - i6;
            this.f1668b = this.f1670d & (i5 + i6);
            if (i7 > 0) {
                for (int i8 = 0; i8 < i7; i8++) {
                    this.f1667a[i8] = null;
                }
                this.f1668b = i7;
                return;
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int size() {
        return (this.f1669c - this.f1668b) & this.f1670d;
    }

    public CircularArray(int i2) {
        if (i2 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i2 <= 1073741824) {
            i2 = Integer.bitCount(i2) != 1 ? Integer.highestOneBit(i2 - 1) << 1 : i2;
            this.f1670d = i2 - 1;
            this.f1667a = (E[]) new Object[i2];
            return;
        }
        throw new IllegalArgumentException("capacity must be <= 2^30");
    }
}
