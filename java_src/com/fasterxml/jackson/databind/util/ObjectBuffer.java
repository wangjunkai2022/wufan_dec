package com.fasterxml.jackson.databind.util;

import java.lang.reflect.Array;
import java.util.List;
/* loaded from: classes2.dex */
public final class ObjectBuffer {
    private static final int MAX_CHUNK = 262144;
    private static final int SMALL_CHUNK = 16384;
    private Object[] _freeBuffer;
    private LinkedNode<Object[]> _head;
    private int _size;
    private LinkedNode<Object[]> _tail;

    protected final void _copyTo(Object obj, int i2, Object[] objArr, int i4) {
        int i5 = 0;
        for (LinkedNode<Object[]> linkedNode = this._head; linkedNode != null; linkedNode = linkedNode.next()) {
            Object[] value = linkedNode.value();
            int length = value.length;
            System.arraycopy(value, 0, obj, i5, length);
            i5 += length;
        }
        System.arraycopy(objArr, 0, obj, i5, i4);
        int i6 = i5 + i4;
        if (i6 == i2) {
            return;
        }
        throw new IllegalStateException("Should have gotten " + i2 + " entries, got " + i6);
    }

    protected void _reset() {
        LinkedNode<Object[]> linkedNode = this._tail;
        if (linkedNode != null) {
            this._freeBuffer = linkedNode.value();
        }
        this._tail = null;
        this._head = null;
        this._size = 0;
    }

    public Object[] appendCompletedChunk(Object[] objArr) {
        LinkedNode<Object[]> linkedNode = new LinkedNode<>(objArr, null);
        if (this._head == null) {
            this._tail = linkedNode;
            this._head = linkedNode;
        } else {
            this._tail.linkNext(linkedNode);
            this._tail = linkedNode;
        }
        int length = objArr.length;
        this._size += length;
        if (length < 16384) {
            length += length;
        } else if (length < 262144) {
            length += length >> 2;
        }
        return new Object[length];
    }

    public int bufferedSize() {
        return this._size;
    }

    public Object[] completeAndClearBuffer(Object[] objArr, int i2) {
        int i4 = this._size + i2;
        Object[] objArr2 = new Object[i4];
        _copyTo(objArr2, i4, objArr, i2);
        _reset();
        return objArr2;
    }

    public int initialCapacity() {
        Object[] objArr = this._freeBuffer;
        if (objArr == null) {
            return 0;
        }
        return objArr.length;
    }

    public Object[] resetAndStart() {
        _reset();
        Object[] objArr = this._freeBuffer;
        if (objArr == null) {
            Object[] objArr2 = new Object[12];
            this._freeBuffer = objArr2;
            return objArr2;
        }
        return objArr;
    }

    public Object[] resetAndStart(Object[] objArr, int i2) {
        _reset();
        Object[] objArr2 = this._freeBuffer;
        if (objArr2 == null || objArr2.length < i2) {
            this._freeBuffer = new Object[Math.max(12, i2)];
        }
        System.arraycopy(objArr, 0, this._freeBuffer, 0, i2);
        return this._freeBuffer;
    }

    public <T> T[] completeAndClearBuffer(Object[] objArr, int i2, Class<T> cls) {
        int i4 = this._size + i2;
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i4));
        _copyTo(tArr, i4, objArr, i2);
        _reset();
        return tArr;
    }

    public void completeAndClearBuffer(Object[] objArr, int i2, List<Object> list) {
        int i4;
        LinkedNode<Object[]> linkedNode = this._head;
        while (true) {
            i4 = 0;
            if (linkedNode == null) {
                break;
            }
            Object[] value = linkedNode.value();
            int length = value.length;
            while (i4 < length) {
                list.add(value[i4]);
                i4++;
            }
            linkedNode = linkedNode.next();
        }
        while (i4 < i2) {
            list.add(objArr[i4]);
            i4++;
        }
        _reset();
    }
}
