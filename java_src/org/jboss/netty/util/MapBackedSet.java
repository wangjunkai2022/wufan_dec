package org.jboss.netty.util;

import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5.dex */
final class MapBackedSet<E> extends AbstractSet<E> implements Serializable {
    private static final long serialVersionUID = -6761513279741915432L;

    /* renamed from: a  reason: collision with root package name */
    private final Map<E, Boolean> f73612a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapBackedSet(Map<E, Boolean> map) {
        this.f73612a = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e4) {
        return this.f73612a.put(e4, Boolean.TRUE) == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.f73612a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f73612a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return this.f73612a.keySet().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        return this.f73612a.remove(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.f73612a.size();
    }
}
