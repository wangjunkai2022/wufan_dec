package com.heepay.plugin.d.a;

import android.app.Activity;
import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* loaded from: classes2.dex */
public class b extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private Activity f16794a;

    public b(Activity activity) {
        this.f16794a = activity;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        Activity activity = this.f16794a;
        if (activity == null || activity.isFinishing()) {
            return;
        }
        webView.setLayerType(0, null);
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        Activity activity = this.f16794a;
        if (activity == null || activity.isFinishing()) {
            return;
        }
        webView.setLayerType(2, null);
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        super.onReceivedError(webView, i2, str, str2);
    }
}
