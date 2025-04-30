package com.switfpass.pay.thread;

import android.os.AsyncTask;
/* loaded from: classes4.dex */
final class l extends AsyncTask {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ e f58934a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ b f58935b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(e eVar, b bVar) {
        this.f58934a = eVar;
        this.f58935b = bVar;
    }

    private Object b() {
        try {
            this.f58935b.b(new m(this));
            return this.f58935b.a();
        } catch (Exception e4) {
            return e4;
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ Object doInBackground(Object... objArr) {
        return b();
    }

    @Override // android.os.AsyncTask
    protected final void onPostExecute(Object obj) {
        e eVar = this.f58934a;
        if (eVar != null) {
            if (obj == null || !(obj instanceof Exception)) {
                eVar.onSucceed(obj);
            }
        }
    }

    @Override // android.os.AsyncTask
    protected final void onPreExecute() {
        e eVar = this.f58934a;
        if (eVar != null) {
            eVar.onPreExecute();
        }
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onProgressUpdate(Object... objArr) {
        Integer[] numArr = (Integer[]) objArr;
        e eVar = this.f58934a;
        if (eVar != null) {
            eVar.onProgress(numArr[0].intValue());
        }
    }
}
