package com.switfpass.pay.thread;
/* loaded from: classes4.dex */
final class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ b f58931a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ e f58932b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(b bVar, e eVar) {
        this.f58931a = bVar;
        this.f58932b = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f58931a.b(new k(this.f58932b));
        e eVar = this.f58932b;
        if (eVar != null) {
            eVar.onPreExecute();
        }
        Object obj = null;
        try {
            obj = this.f58931a.a();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        e eVar2 = this.f58932b;
        if (eVar2 != null) {
            if (obj == null || !(obj instanceof Exception)) {
                eVar2.onSucceed(obj);
                return;
            }
            eVar2.onError("发送错误啦" + ((Exception) obj).getMessage());
        }
    }
}
