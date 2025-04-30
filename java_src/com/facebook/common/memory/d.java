package com.facebook.common.memory;
/* compiled from: NoOpMemoryTrimmableRegistry.java */
/* loaded from: classes2.dex */
public class d implements c {

    /* renamed from: a  reason: collision with root package name */
    private static d f11716a;

    public static synchronized d c() {
        d dVar;
        synchronized (d.class) {
            if (f11716a == null) {
                f11716a = new d();
            }
            dVar = f11716a;
        }
        return dVar;
    }

    @Override // com.facebook.common.memory.c
    public void a(b bVar) {
    }

    @Override // com.facebook.common.memory.c
    public void b(b bVar) {
    }
}
