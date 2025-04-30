package com.switfpass.pay.activity;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class y extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ WebViewEx f58709a;

    private y(WebViewEx webViewEx) {
        this.f58709a = webViewEx;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ y(WebViewEx webViewEx, byte b4) {
        this(webViewEx);
    }

    @Override // android.webkit.WebViewClient
    public final void doUpdateVisitedHistory(WebView webView, String str, boolean z3) {
        WebViewEx.a(this.f58709a, webView);
        super.doUpdateVisitedHistory(webView, str, z3);
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        WebViewEx.a(this.f58709a, webView);
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        WebViewEx.a(this.f58709a, webView);
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        WebViewEx.a(this.f58709a, webView);
        super.onPageStarted(webView, str, bitmap);
    }
}
