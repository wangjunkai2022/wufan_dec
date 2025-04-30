package com.zhy.view.flowlayout;

import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: TagAdapter.java */
/* loaded from: classes3.dex */
public abstract class b<T> {

    /* renamed from: a  reason: collision with root package name */
    private List<T> f64966a;

    /* renamed from: b  reason: collision with root package name */
    private a f64967b;

    /* renamed from: c  reason: collision with root package name */
    private HashSet<Integer> f64968c = new HashSet<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TagAdapter.java */
    /* loaded from: classes3.dex */
    public interface a {
        void a();
    }

    public b(List<T> list) {
        this.f64966a = list;
    }

    public int a() {
        List<T> list = this.f64966a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public T b(int i2) {
        return this.f64966a.get(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashSet<Integer> c() {
        return this.f64968c;
    }

    public abstract View d(FlowLayout flowLayout, int i2, T t3);

    public void e() {
        this.f64967b.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(a aVar) {
        this.f64967b = aVar;
    }

    public boolean g(int i2, T t3) {
        return false;
    }

    public void h(Set<Integer> set) {
        this.f64968c.clear();
        if (set != null) {
            this.f64968c.addAll(set);
        }
        e();
    }

    public void i(int... iArr) {
        for (int i2 : iArr) {
            this.f64968c.add(Integer.valueOf(i2));
        }
        e();
    }

    public b(T[] tArr) {
        this.f64966a = new ArrayList(Arrays.asList(tArr));
    }
}
