package com.xinzhu.overmind.server.am;

import android.content.Intent;
import java.util.LinkedList;
import java.util.List;
/* compiled from: TaskRecord.java */
/* loaded from: classes3.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public int f64442a;

    /* renamed from: b  reason: collision with root package name */
    public int f64443b;

    /* renamed from: c  reason: collision with root package name */
    public String f64444c;

    /* renamed from: d  reason: collision with root package name */
    public Intent f64445d;

    /* renamed from: e  reason: collision with root package name */
    public final List<b> f64446e = new LinkedList();

    public h(int id, int userId, String taskAffinity) {
        this.f64442a = id;
        this.f64443b = userId;
        this.f64444c = taskAffinity;
    }

    public void a(b record) {
        this.f64446e.add(record);
    }

    public b b() {
        for (int size = this.f64446e.size() - 1; size >= 0; size--) {
            b bVar = this.f64446e.get(size);
            if (!bVar.finished) {
                return bVar;
            }
        }
        return null;
    }

    public boolean c() {
        for (b bVar : this.f64446e) {
            if (!bVar.finished) {
                return false;
            }
        }
        return true;
    }

    public void d(b record) {
        this.f64446e.remove(record);
    }
}
