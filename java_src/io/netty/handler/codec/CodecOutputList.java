package io.netty.handler.codec;

import io.netty.util.concurrent.FastThreadLocal;
import io.netty.util.internal.MathUtil;
import io.netty.util.internal.ObjectUtil;
import java.util.AbstractList;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class CodecOutputList extends AbstractList<Object> implements RandomAccess {
    private Object[] array;
    private boolean insertSinceRecycled;
    private final CodecOutputListRecycler recycler;
    private int size;
    private static final CodecOutputListRecycler NOOP_RECYCLER = new CodecOutputListRecycler() { // from class: io.netty.handler.codec.CodecOutputList.1
        @Override // io.netty.handler.codec.CodecOutputList.CodecOutputListRecycler
        public void recycle(CodecOutputList codecOutputList) {
        }
    };
    private static final FastThreadLocal<CodecOutputLists> CODEC_OUTPUT_LISTS_POOL = new FastThreadLocal<CodecOutputLists>() { // from class: io.netty.handler.codec.CodecOutputList.2
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.netty.util.concurrent.FastThreadLocal
        public CodecOutputLists initialValue() throws Exception {
            return new CodecOutputLists(16);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public interface CodecOutputListRecycler {
        void recycle(CodecOutputList codecOutputList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class CodecOutputLists implements CodecOutputListRecycler {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private int count;
        private int currentIdx;
        private final CodecOutputList[] elements;
        private final int mask;

        CodecOutputLists(int i2) {
            this.elements = new CodecOutputList[MathUtil.safeFindNextPositivePowerOfTwo(i2)];
            int i4 = 0;
            while (true) {
                CodecOutputList[] codecOutputListArr = this.elements;
                if (i4 < codecOutputListArr.length) {
                    codecOutputListArr[i4] = new CodecOutputList(this, 16);
                    i4++;
                } else {
                    this.count = codecOutputListArr.length;
                    this.currentIdx = codecOutputListArr.length;
                    this.mask = codecOutputListArr.length - 1;
                    return;
                }
            }
        }

        public CodecOutputList getOrCreate() {
            int i2 = this.count;
            if (i2 == 0) {
                return new CodecOutputList(CodecOutputList.NOOP_RECYCLER, 4);
            }
            this.count = i2 - 1;
            int i4 = (this.currentIdx - 1) & this.mask;
            CodecOutputList codecOutputList = this.elements[i4];
            this.currentIdx = i4;
            return codecOutputList;
        }

        @Override // io.netty.handler.codec.CodecOutputList.CodecOutputListRecycler
        public void recycle(CodecOutputList codecOutputList) {
            int i2 = this.currentIdx;
            this.elements[i2] = codecOutputList;
            this.currentIdx = this.mask & (i2 + 1);
            this.count++;
        }
    }

    private void checkIndex(int i2) {
        if (i2 >= this.size) {
            throw new IndexOutOfBoundsException();
        }
    }

    private void expandArray() {
        Object[] objArr = this.array;
        int length = objArr.length << 1;
        if (length >= 0) {
            Object[] objArr2 = new Object[length];
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
            this.array = objArr2;
            return;
        }
        throw new OutOfMemoryError();
    }

    private void insert(int i2, Object obj) {
        this.array[i2] = obj;
        this.insertSinceRecycled = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CodecOutputList newInstance() {
        return CODEC_OUTPUT_LISTS_POOL.get().getOrCreate();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        ObjectUtil.checkNotNull(obj, "element");
        try {
            insert(this.size, obj);
        } catch (IndexOutOfBoundsException unused) {
            expandArray();
            insert(this.size, obj);
        }
        this.size++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.size = 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i2) {
        checkIndex(i2);
        return this.array[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getUnsafe(int i2) {
        return this.array[i2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean insertSinceRecycled() {
        return this.insertSinceRecycled;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void recycle() {
        for (int i2 = 0; i2 < this.size; i2++) {
            this.array[i2] = null;
        }
        this.size = 0;
        this.insertSinceRecycled = false;
        this.recycler.recycle(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int i2) {
        checkIndex(i2);
        Object[] objArr = this.array;
        Object obj = objArr[i2];
        int i4 = (this.size - i2) - 1;
        if (i4 > 0) {
            System.arraycopy(objArr, i2 + 1, objArr, i2, i4);
        }
        Object[] objArr2 = this.array;
        int i5 = this.size - 1;
        this.size = i5;
        objArr2[i5] = null;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i2, Object obj) {
        ObjectUtil.checkNotNull(obj, "element");
        checkIndex(i2);
        Object obj2 = this.array[i2];
        insert(i2, obj);
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    private CodecOutputList(CodecOutputListRecycler codecOutputListRecycler, int i2) {
        this.recycler = codecOutputListRecycler;
        this.array = new Object[i2];
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i2, Object obj) {
        ObjectUtil.checkNotNull(obj, "element");
        checkIndex(i2);
        if (this.size == this.array.length) {
            expandArray();
        }
        int i4 = this.size;
        if (i2 != i4) {
            Object[] objArr = this.array;
            System.arraycopy(objArr, i2, objArr, i2 + 1, i4 - i2);
        }
        insert(i2, obj);
        this.size++;
    }
}
