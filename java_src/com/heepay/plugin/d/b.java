package com.heepay.plugin.d;

import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebView;
/* loaded from: classes2.dex */
public class b extends com.heepay.plugin.d.a.a {
    public b(String str, Class cls) {
        super(str, cls);
    }

    @Override // com.heepay.plugin.d.a.a, android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return super.onJsAlert(webView, str, str2, jsResult);
    }

    @Override // com.heepay.plugin.d.a.a, android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
    }

    @Override // com.heepay.plugin.d.a.a, android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i2) {
        super.onProgressChanged(webView, i2);
    }
}
