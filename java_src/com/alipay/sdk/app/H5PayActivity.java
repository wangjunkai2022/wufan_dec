package com.alipay.sdk.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.sdk.util.j;
/* loaded from: classes2.dex */
public class H5PayActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private WebView f9575a;

    /* renamed from: b  reason: collision with root package name */
    private WebViewClient f9576b;

    public void a() {
        Object obj = PayTask.f9577g;
        synchronized (obj) {
            try {
                obj.notify();
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        a();
        super.finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f9575a.canGoBack()) {
            if (((b) this.f9576b).b()) {
                i a4 = i.a(i.NETWORK_ERROR.a());
                h.f9601a = h.b(a4.a(), a4.b(), "");
                finish();
                return;
            }
            return;
        }
        h.f9601a = h.a();
        finish();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            Bundle extras = getIntent().getExtras();
            String string = extras.getString("url");
            if (!j.m(string)) {
                finish();
                return;
            }
            String string2 = extras.getString("cookie");
            super.requestWindowFeature(1);
            this.f9575a = j.b(this, string, string2);
            b bVar = new b(this);
            this.f9576b = bVar;
            this.f9575a.setWebViewClient(bVar);
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        WebView webView = this.f9575a;
        if (webView != null) {
            webView.removeAllViews();
            try {
                this.f9575a.destroy();
            } catch (Throwable unused) {
            }
            this.f9575a = null;
        }
    }
}
