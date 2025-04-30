package org.greenrobot.eventbus.meta;

import org.greenrobot.eventbus.j;
/* compiled from: SimpleSubscriberInfo.java */
/* loaded from: classes5.dex */
public class b extends a {

    /* renamed from: d  reason: collision with root package name */
    private final e[] f73294d;

    public b(Class cls, boolean z3, e[] eVarArr) {
        super(cls, null, z3);
        this.f73294d = eVarArr;
    }

    @Override // org.greenrobot.eventbus.meta.c
    public synchronized j[] a() {
        j[] jVarArr;
        int length = this.f73294d.length;
        jVarArr = new j[length];
        for (int i2 = 0; i2 < length; i2++) {
            e eVar = this.f73294d[i2];
            jVarArr[i2] = g(eVar.f73295a, eVar.f73297c, eVar.f73296b, eVar.f73298d, eVar.f73299e);
        }
        return jVarArr;
    }
}
