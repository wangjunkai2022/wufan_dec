package com.alipay.sdk.app;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.sdk.util.j;
/* loaded from: classes2.dex */
public final class b extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private Activity f9589a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9590b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f9591c;

    /* renamed from: d  reason: collision with root package name */
    private com.alipay.sdk.widget.a f9592d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f9593e;

    /* renamed from: f  reason: collision with root package name */
    private Runnable f9594f = new f(this);

    public b(Activity activity) {
        this.f9589a = activity;
        this.f9591c = new Handler(this.f9589a.getMainLooper());
    }

    private void d() {
        if (this.f9592d == null) {
            this.f9592d = new com.alipay.sdk.widget.a(this.f9589a, com.alipay.sdk.widget.a.f9857d);
        }
        this.f9592d.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.alipay.sdk.widget.a aVar = this.f9592d;
        if (aVar != null) {
            aVar.f();
        }
        this.f9592d = null;
    }

    public final boolean b() {
        return this.f9593e;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        f();
        this.f9591c.removeCallbacks(this.f9594f);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.f9592d == null) {
            this.f9592d = new com.alipay.sdk.widget.a(this.f9589a, com.alipay.sdk.widget.a.f9857d);
        }
        this.f9592d.c();
        this.f9591c.postDelayed(this.f9594f, 30000L);
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i2, String str, String str2) {
        this.f9593e = true;
        super.onReceivedError(webView, i2, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        com.alipay.sdk.app.statistic.a.c(com.alipay.sdk.app.statistic.c.f9616k, com.alipay.sdk.app.statistic.c.f9621p, "证书错误");
        if (this.f9590b) {
            sslErrorHandler.proceed();
            this.f9590b = false;
            return;
        }
        this.f9589a.runOnUiThread(new c(this, sslErrorHandler));
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return j.j(webView, str, this.f9589a);
    }
}
