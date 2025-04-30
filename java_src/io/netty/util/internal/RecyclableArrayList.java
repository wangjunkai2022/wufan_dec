package io.netty.util.internal;

import io.netty.util.internal.ObjectPool;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes5.dex */
public final class RecyclableArrayList extends ArrayList<Object> {
    private static final int DEFAULT_INITIAL_CAPACITY = 8;
    private static final ObjectPool<RecyclableArrayList> RECYCLER = ObjectPool.newPool(new ObjectPool.ObjectCreator<RecyclableArrayList>() { // from class: io.netty.util.internal.RecyclableArrayList.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.netty.util.internal.ObjectPool.ObjectCreator
        public RecyclableArrayList newObject(ObjectPool.Handle<RecyclableArrayList> handle) {
            return new RecyclableArrayList(handle);
        }
    });
    private static final long serialVersionUID = -8605125654176467947L;
    private final ObjectPool.Handle<RecyclableArrayList> handle;
    private boolean insertSinceRecycled;

    private static void checkNullElements(Collection<?> collection) {
        if ((collection instanceof RandomAccess) && (collection instanceof List)) {
            List list = (List) collection;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (list.get(i2) == null) {
                    throw new IllegalArgumentException("c contains null values");
                }
            }
            return;
        }
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (it2.next() == null) {
                throw new IllegalArgumentException("c contains null values");
            }
        }
    }

    public static RecyclableArrayList newInstance() {
        return newInstance(8);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        if (super.add(ObjectUtil.checkNotNull(obj, "element"))) {
            this.insertSinceRecycled = true;
            return true;
        }
        return false;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<?> collection) {
        checkNullElements(collection);
        if (super.addAll(collection)) {
            this.insertSinceRecycled = true;
            return true;
        }
        return false;
    }

    public boolean insertSinceRecycled() {
        return this.insertSinceRecycled;
    }

    public boolean recycle() {
        clear();
        this.insertSinceRecycled = false;
        this.handle.recycle(this);
        return true;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public Object set(int i2, Object obj) {
        Object obj2 = super.set(i2, ObjectUtil.checkNotNull(obj, "element"));
        this.insertSinceRecycled = true;
        return obj2;
    }

    private RecyclableArrayList(ObjectPool.Handle<RecyclableArrayList> handle) {
        this(handle, 8);
    }

    public static RecyclableArrayList newInstance(int i2) {
        RecyclableArrayList recyclableArrayList = RECYCLER.get();
        recyclableArrayList.ensureCapacity(i2);
        return recyclableArrayList;
    }

    private RecyclableArrayList(ObjectPool.Handle<RecyclableArrayList> handle, int i2) {
        super(i2);
        this.handle = handle;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public void add(int i2, Object obj) {
        super.add(i2, ObjectUtil.checkNotNull(obj, "element"));
        this.insertSinceRecycled = true;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public boolean addAll(int i2, Collection<?> collection) {
        checkNullElements(collection);
        if (super.addAll(i2, collection)) {
            this.insertSinceRecycled = true;
            return true;
        }
        return false;
    }
}
