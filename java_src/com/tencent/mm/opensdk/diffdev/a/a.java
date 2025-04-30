package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.opensdk.diffdev.IDiffDevOAuth;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import com.tencent.mm.opensdk.utils.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4.dex */
public class a implements IDiffDevOAuth {

    /* renamed from: c  reason: collision with root package name */
    private b f59879c;

    /* renamed from: a  reason: collision with root package name */
    private Handler f59877a = null;

    /* renamed from: b  reason: collision with root package name */
    private List<OAuthListener> f59878b = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private OAuthListener f59880d = new C0345a();

    /* renamed from: com.tencent.mm.opensdk.diffdev.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0345a implements OAuthListener {

        /* renamed from: com.tencent.mm.opensdk.diffdev.a.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0346a implements Runnable {
            RunnableC0346a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(a.this.f59878b);
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((OAuthListener) it2.next()).onQrcodeScanned();
                }
            }
        }

        C0345a() {
        }

        @Override // com.tencent.mm.opensdk.diffdev.OAuthListener
        public void onAuthFinish(OAuthErrCode oAuthErrCode, String str) {
            Log.d("MicroMsg.SDK.ListenerWrapper", String.format("onAuthFinish, errCode = %s, authCode = %s", oAuthErrCode.toString(), str));
            a.this.f59879c = null;
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(a.this.f59878b);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((OAuthListener) it2.next()).onAuthFinish(oAuthErrCode, str);
            }
        }

        @Override // com.tencent.mm.opensdk.diffdev.OAuthListener
        public void onAuthGotQrcode(String str, byte[] bArr) {
            Log.d("MicroMsg.SDK.ListenerWrapper", "onAuthGotQrcode, qrcodeImgPath = " + str);
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(a.this.f59878b);
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ((OAuthListener) it2.next()).onAuthGotQrcode(str, bArr);
            }
        }

        @Override // com.tencent.mm.opensdk.diffdev.OAuthListener
        public void onQrcodeScanned() {
            Log.d("MicroMsg.SDK.ListenerWrapper", "onQrcodeScanned");
            if (a.this.f59877a != null) {
                a.this.f59877a.post(new RunnableC0346a());
            }
        }
    }

    @Override // com.tencent.mm.opensdk.diffdev.IDiffDevOAuth
    public void addListener(OAuthListener oAuthListener) {
        if (this.f59878b.contains(oAuthListener)) {
            return;
        }
        this.f59878b.add(oAuthListener);
    }

    @Override // com.tencent.mm.opensdk.diffdev.IDiffDevOAuth
    public boolean auth(String str, String str2, String str3, String str4, String str5, OAuthListener oAuthListener) {
        Log.i("MicroMsg.SDK.DiffDevOAuth", "start auth, appId = " + str);
        if (str != null && str.length() > 0 && str2 != null && str2.length() > 0) {
            if (this.f59877a == null) {
                this.f59877a = new Handler(Looper.getMainLooper());
            }
            if (!this.f59878b.contains(oAuthListener)) {
                this.f59878b.add(oAuthListener);
            }
            if (this.f59879c != null) {
                Log.d("MicroMsg.SDK.DiffDevOAuth", "auth, already running, no need to start auth again");
                return true;
            }
            b bVar = new b(str, str2, str3, str4, str5, this.f59880d);
            this.f59879c = bVar;
            if (Build.VERSION.SDK_INT >= 11) {
                bVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else {
                bVar.execute(new Void[0]);
            }
            return true;
        }
        Log.d("MicroMsg.SDK.DiffDevOAuth", String.format("auth fail, invalid argument, appId = %s, scope = %s", str, str2));
        return false;
    }

    @Override // com.tencent.mm.opensdk.diffdev.IDiffDevOAuth
    public void detach() {
        Log.i("MicroMsg.SDK.DiffDevOAuth", "detach");
        this.f59878b.clear();
        stopAuth();
    }

    @Override // com.tencent.mm.opensdk.diffdev.IDiffDevOAuth
    public void removeAllListeners() {
        this.f59878b.clear();
    }

    @Override // com.tencent.mm.opensdk.diffdev.IDiffDevOAuth
    public void removeListener(OAuthListener oAuthListener) {
        this.f59878b.remove(oAuthListener);
    }

    @Override // com.tencent.mm.opensdk.diffdev.IDiffDevOAuth
    public boolean stopAuth() {
        boolean z3;
        Log.i("MicroMsg.SDK.DiffDevOAuth", "stopAuth");
        try {
            b bVar = this.f59879c;
            z3 = bVar == null ? true : bVar.a();
        } catch (Exception e4) {
            Log.w("MicroMsg.SDK.DiffDevOAuth", "stopAuth fail, ex = " + e4.getMessage());
            z3 = false;
        }
        this.f59879c = null;
        return z3;
    }
}
