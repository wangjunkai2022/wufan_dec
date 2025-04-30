package com.papa.gsyvideoplayer.player;
/* compiled from: BasePlayerManager.java */
/* loaded from: classes4.dex */
public abstract class a implements c {

    /* renamed from: a  reason: collision with root package name */
    protected b f54977a;

    public b a() {
        return this.f54977a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(com.papa.gsyvideoplayer.model.a aVar) {
        b bVar = this.f54977a;
        if (bVar != null) {
            bVar.a(j(), aVar);
        }
    }

    public void g(b bVar) {
        this.f54977a = bVar;
    }
}
