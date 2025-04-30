package com.fasterxml.jackson.databind.util;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public class LRUMap<K, V> implements LookupCache<K, V>, Serializable {
    private static final long serialVersionUID = 1;
    protected transient int _jdkSerializeMaxEntries;
    protected final transient ConcurrentHashMap<K, V> _map;
    protected final transient int _maxEntries;

    public LRUMap(int i2, int i4) {
        this._map = new ConcurrentHashMap<>(i2, 0.8f, 4);
        this._maxEntries = i4;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        this._jdkSerializeMaxEntries = objectInputStream.readInt();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this._jdkSerializeMaxEntries);
    }

    @Override // com.fasterxml.jackson.databind.util.LookupCache
    public void clear() {
        this._map.clear();
    }

    @Override // com.fasterxml.jackson.databind.util.LookupCache
    public V get(Object obj) {
        return this._map.get(obj);
    }

    @Override // com.fasterxml.jackson.databind.util.LookupCache
    public V put(K k4, V v3) {
        if (this._map.size() >= this._maxEntries) {
            synchronized (this) {
                if (this._map.size() >= this._maxEntries) {
                    clear();
                }
            }
        }
        return this._map.put(k4, v3);
    }

    @Override // com.fasterxml.jackson.databind.util.LookupCache
    public V putIfAbsent(K k4, V v3) {
        if (this._map.size() >= this._maxEntries) {
            synchronized (this) {
                if (this._map.size() >= this._maxEntries) {
                    clear();
                }
            }
        }
        return this._map.putIfAbsent(k4, v3);
    }

    protected Object readResolve() {
        int i2 = this._jdkSerializeMaxEntries;
        return new LRUMap(i2, i2);
    }

    @Override // com.fasterxml.jackson.databind.util.LookupCache
    public int size() {
        return this._map.size();
    }
}
