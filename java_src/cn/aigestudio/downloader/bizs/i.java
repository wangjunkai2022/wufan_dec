package cn.aigestudio.downloader.bizs;

import java.net.HttpURLConnection;
/* compiled from: DLThread.java */
/* loaded from: classes2.dex */
class i implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    private static final String f8415d = i.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private j f8416a;

    /* renamed from: b  reason: collision with root package name */
    private f f8417b;

    /* renamed from: c  reason: collision with root package name */
    private l f8418c;

    public i(j jVar, f fVar, l lVar) {
        this.f8416a = jVar;
        this.f8418c = lVar;
        this.f8417b = fVar;
    }

    private void a(HttpURLConnection httpURLConnection) {
        for (e eVar : this.f8417b.f8385o) {
            httpURLConnection.addRequestProperty(eVar.f8369a, eVar.f8370b);
        }
        httpURLConnection.setRequestProperty("Range", "bytes=" + this.f8416a.f8421c + "-" + this.f8416a.f8422d);
    }

    public f b() {
        return this.f8417b;
    }

    public j c() {
        return this.f8416a;
    }

    public void d(f fVar) {
        this.f8417b = fVar;
    }

    public void e(j jVar) {
        this.f8416a = jVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:132:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:134:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.aigestudio.downloader.bizs.i.run():void");
    }
}
