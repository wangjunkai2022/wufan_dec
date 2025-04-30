package com.mob.tools.gui;

import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes4.dex */
public class CachePoolInner<K, V> {
    private int capacity;
    private OnRemoveListener<K, V> listener;
    private LinkedList<CachePoolInner<K, V>.Node<K, V>> pool = new LinkedList<>();
    private int poolSize;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class Node<K, V> {
        private long cacheTime;
        public K key;
        private int size;
        public V value;

        private Node() {
        }
    }

    /* loaded from: classes4.dex */
    public interface OnRemoveListener<K, V> {
        void onRemove(K k4, V v3);
    }

    public CachePoolInner(int i2) {
        this.capacity = i2;
    }

    public synchronized void clear() {
        LinkedList<CachePoolInner<K, V>.Node<K, V>> linkedList = this.pool;
        if (linkedList != null && this.capacity > 0) {
            if (this.listener == null) {
                linkedList.clear();
            } else {
                while (this.pool.size() > 0) {
                    CachePoolInner<K, V>.Node<K, V> removeLast = this.pool.removeLast();
                    if (removeLast != null) {
                        this.poolSize -= ((Node) removeLast).size;
                        OnRemoveListener<K, V> onRemoveListener = this.listener;
                        if (onRemoveListener != null) {
                            onRemoveListener.onRemove(removeLast.key, removeLast.value);
                        }
                    }
                }
            }
            this.poolSize = 0;
        }
    }

    public synchronized V get(K k4) {
        CachePoolInner<K, V>.Node<K, V> node;
        if (this.pool != null && this.capacity > 0) {
            while (this.poolSize > this.capacity) {
                CachePoolInner<K, V>.Node<K, V> removeLast = this.pool.removeLast();
                if (removeLast != null) {
                    this.poolSize -= ((Node) removeLast).size;
                    OnRemoveListener<K, V> onRemoveListener = this.listener;
                    if (onRemoveListener != null) {
                        onRemoveListener.onRemove(removeLast.key, removeLast.value);
                    }
                }
            }
            Iterator<CachePoolInner<K, V>.Node<K, V>> it2 = this.pool.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    node = null;
                    break;
                }
                node = it2.next();
                if (node != null && ((k4 == null && node.key == null) || (k4 != null && k4.equals(node.key)))) {
                    break;
                }
            }
            if (node != null) {
                this.pool.set(0, node);
                ((Node) node).cacheTime = System.currentTimeMillis();
                return node.value;
            }
        }
        return null;
    }

    public synchronized boolean put(K k4, V v3, int i2) {
        if (this.pool == null || this.capacity <= 0) {
            return false;
        }
        CachePoolInner<K, V>.Node<K, V> node = new Node<>();
        node.key = k4;
        node.value = v3;
        ((Node) node).cacheTime = System.currentTimeMillis();
        ((Node) node).size = i2;
        this.pool.add(0, node);
        this.poolSize += i2;
        while (this.poolSize > this.capacity) {
            CachePoolInner<K, V>.Node<K, V> removeLast = this.pool.removeLast();
            if (removeLast != null) {
                this.poolSize -= ((Node) removeLast).size;
                OnRemoveListener<K, V> onRemoveListener = this.listener;
                if (onRemoveListener != null) {
                    onRemoveListener.onRemove(removeLast.key, removeLast.value);
                }
            }
        }
        return true;
    }

    public void setOnRemoveListener(OnRemoveListener<K, V> onRemoveListener) {
        this.listener = onRemoveListener;
    }

    public synchronized int size() {
        return this.poolSize;
    }

    public synchronized void trimBeforeTime(long j4) {
        LinkedList<CachePoolInner<K, V>.Node<K, V>> linkedList = this.pool;
        if (linkedList != null && this.capacity > 0) {
            int size = linkedList.size() - 1;
            while (size >= 0) {
                if (((Node) this.pool.get(size)).cacheTime < j4) {
                    CachePoolInner<K, V>.Node<K, V> remove = this.pool.remove(size);
                    if (remove != null) {
                        this.poolSize -= ((Node) remove).size;
                        OnRemoveListener<K, V> onRemoveListener = this.listener;
                        if (onRemoveListener != null) {
                            onRemoveListener.onRemove(remove.key, remove.value);
                        }
                    }
                } else {
                    size--;
                }
            }
            while (this.poolSize > this.capacity) {
                CachePoolInner<K, V>.Node<K, V> removeLast = this.pool.removeLast();
                if (removeLast != null) {
                    this.poolSize -= ((Node) removeLast).size;
                    OnRemoveListener<K, V> onRemoveListener2 = this.listener;
                    if (onRemoveListener2 != null) {
                        onRemoveListener2.onRemove(removeLast.key, removeLast.value);
                    }
                }
            }
        }
    }

    public synchronized boolean put(K k4, V v3) {
        return put(k4, v3, 1);
    }
}
