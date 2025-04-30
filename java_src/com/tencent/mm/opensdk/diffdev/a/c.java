package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
/* loaded from: classes4.dex */
class c extends AsyncTask<Void, Void, a> {

    /* renamed from: a  reason: collision with root package name */
    private String f59895a;

    /* renamed from: b  reason: collision with root package name */
    private String f59896b;

    /* renamed from: c  reason: collision with root package name */
    private OAuthListener f59897c;

    /* renamed from: d  reason: collision with root package name */
    private int f59898d;

    /* loaded from: classes4.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public OAuthErrCode f59899a;

        /* renamed from: b  reason: collision with root package name */
        public String f59900b;

        /* renamed from: c  reason: collision with root package name */
        public int f59901c;

        a() {
        }
    }

    public c(String str, OAuthListener oAuthListener) {
        this.f59895a = str;
        this.f59897c = oAuthListener;
        this.f59896b = String.format("https://long.open.weixin.qq.com/connect/l/qrconnect?f=json&uuid=%s", str);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0168 A[SYNTHETIC] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.tencent.mm.opensdk.diffdev.a.c.a doInBackground(java.lang.Void[] r14) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.mm.opensdk.diffdev.a.c.doInBackground(java.lang.Object[]):java.lang.Object");
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(a aVar) {
        a aVar2 = aVar;
        this.f59897c.onAuthFinish(aVar2.f59899a, aVar2.f59900b);
    }
}
