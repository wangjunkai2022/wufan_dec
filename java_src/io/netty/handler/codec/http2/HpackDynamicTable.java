package io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
final class HpackDynamicTable {
    private long capacity = -1;
    int head;
    HpackHeaderField[] hpackHeaderFields;
    private long size;
    int tail;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HpackDynamicTable(long j4) {
        setCapacity(j4);
    }

    public void add(HpackHeaderField hpackHeaderField) {
        long j4;
        long size = hpackHeaderField.size();
        if (size > this.capacity) {
            clear();
            return;
        }
        while (true) {
            long j5 = this.capacity;
            j4 = this.size;
            if (j5 - j4 >= size) {
                break;
            }
            remove();
        }
        HpackHeaderField[] hpackHeaderFieldArr = this.hpackHeaderFields;
        int i2 = this.head;
        this.head = i2 + 1;
        hpackHeaderFieldArr[i2] = hpackHeaderField;
        this.size = j4 + hpackHeaderField.size();
        if (this.head == this.hpackHeaderFields.length) {
            this.head = 0;
        }
    }

    public long capacity() {
        return this.capacity;
    }

    public void clear() {
        while (true) {
            int i2 = this.tail;
            if (i2 != this.head) {
                HpackHeaderField[] hpackHeaderFieldArr = this.hpackHeaderFields;
                int i4 = i2 + 1;
                this.tail = i4;
                hpackHeaderFieldArr[i2] = null;
                if (i4 == hpackHeaderFieldArr.length) {
                    this.tail = 0;
                }
            } else {
                this.head = 0;
                this.tail = 0;
                this.size = 0L;
                return;
            }
        }
    }

    public HpackHeaderField getEntry(int i2) {
        if (i2 > 0 && i2 <= length()) {
            int i4 = this.head - i2;
            if (i4 < 0) {
                HpackHeaderField[] hpackHeaderFieldArr = this.hpackHeaderFields;
                return hpackHeaderFieldArr[i4 + hpackHeaderFieldArr.length];
            }
            return this.hpackHeaderFields[i4];
        }
        throw new IndexOutOfBoundsException();
    }

    public int length() {
        int i2 = this.head;
        int i4 = this.tail;
        return i2 < i4 ? (this.hpackHeaderFields.length - i4) + i2 : i2 - i4;
    }

    public HpackHeaderField remove() {
        HpackHeaderField hpackHeaderField = this.hpackHeaderFields[this.tail];
        if (hpackHeaderField == null) {
            return null;
        }
        this.size -= hpackHeaderField.size();
        HpackHeaderField[] hpackHeaderFieldArr = this.hpackHeaderFields;
        int i2 = this.tail;
        int i4 = i2 + 1;
        this.tail = i4;
        hpackHeaderFieldArr[i2] = null;
        if (i4 == hpackHeaderFieldArr.length) {
            this.tail = 0;
        }
        return hpackHeaderField;
    }

    public void setCapacity(long j4) {
        if (j4 >= 0 && j4 <= 4294967295L) {
            if (this.capacity == j4) {
                return;
            }
            this.capacity = j4;
            if (j4 == 0) {
                clear();
            } else {
                while (this.size > j4) {
                    remove();
                }
            }
            int i2 = (int) (j4 / 32);
            if (j4 % 32 != 0) {
                i2++;
            }
            HpackHeaderField[] hpackHeaderFieldArr = this.hpackHeaderFields;
            if (hpackHeaderFieldArr == null || hpackHeaderFieldArr.length != i2) {
                HpackHeaderField[] hpackHeaderFieldArr2 = new HpackHeaderField[i2];
                int length = length();
                int i4 = this.tail;
                for (int i5 = 0; i5 < length; i5++) {
                    HpackHeaderField[] hpackHeaderFieldArr3 = this.hpackHeaderFields;
                    int i6 = i4 + 1;
                    hpackHeaderFieldArr2[i5] = hpackHeaderFieldArr3[i4];
                    i4 = i6 == hpackHeaderFieldArr3.length ? 0 : i6;
                }
                this.tail = 0;
                this.head = 0 + length;
                this.hpackHeaderFields = hpackHeaderFieldArr2;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("capacity is invalid: " + j4);
    }

    public long size() {
        return this.size;
    }
}
