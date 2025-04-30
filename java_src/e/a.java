package e;

import java.util.ArrayList;
/* compiled from: ArrayWheelAdapter.java */
/* loaded from: classes2.dex */
public class a<T> implements c {

    /* renamed from: c  reason: collision with root package name */
    public static final int f65143c = 4;

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<T> f65144a;

    /* renamed from: b  reason: collision with root package name */
    private int f65145b;

    public a(ArrayList<T> arrayList, int i2) {
        this.f65144a = arrayList;
        this.f65145b = i2;
    }

    @Override // e.c
    public int a() {
        return this.f65144a.size();
    }

    @Override // e.c
    public Object getItem(int i2) {
        return (i2 < 0 || i2 >= this.f65144a.size()) ? "" : this.f65144a.get(i2);
    }

    @Override // e.c
    public int indexOf(Object obj) {
        return this.f65144a.indexOf(obj);
    }

    public a(ArrayList<T> arrayList) {
        this(arrayList, 4);
    }
}
