package com.switfpass.pay.activity;

import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class x extends WebChromeClient {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ WebViewEx f58707a;

    private x(WebViewEx webViewEx) {
        this.f58707a = webViewEx;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ x(WebViewEx webViewEx, byte b4) {
        this(webViewEx);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        boolean f4;
        if (webView instanceof WebViewEx) {
            f4 = this.f58707a.f(str2, jsPromptResult);
            if (f4) {
                return true;
            }
        }
        return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i2) {
        WebViewEx.a(this.f58707a, webView);
        super.onProgressChanged(webView, i2);
    }

    @Override // android.webkit.WebChromeClient
    public final void onReceivedTitle(WebView webView, String str) {
        WebViewEx.a(this.f58707a, webView);
    }
}
