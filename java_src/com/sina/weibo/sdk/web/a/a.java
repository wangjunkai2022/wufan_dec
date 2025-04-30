package com.sina.weibo.sdk.web.a;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import com.sina.weibo.sdk.auth.AccessTokenHelper;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WbAuthListener;
import com.sina.weibo.sdk.b.e;
import com.sina.weibo.sdk.common.UiError;
/* loaded from: classes4.dex */
public final class a extends b {
    public a(Activity activity, com.sina.weibo.sdk.web.a aVar, com.sina.weibo.sdk.web.b.b bVar) {
        super(activity, aVar, bVar);
    }

    private boolean l(String str) {
        Bundle g4;
        AuthInfo a4 = this.aA.u().a();
        return (a4 == null || !str.startsWith(a4.getRedirectUrl()) || (g4 = e.g(str)) == null || TextUtils.isEmpty(g4.getString("access_token"))) ? false : true;
    }

    @Override // com.sina.weibo.sdk.web.a.b, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        AuthInfo a4 = this.aA.u().a();
        if (a4 == null || !str.startsWith(a4.getRedirectUrl())) {
            return;
        }
        String r3 = this.aA.u().r();
        if (!TextUtils.isEmpty(r3)) {
            WbAuthListener a5 = this.ax.a(r3);
            this.aB = a5;
            if (a5 != null) {
                Bundle g4 = e.g(str);
                if (g4 != null) {
                    String string = g4.getString("error");
                    String string2 = g4.getString("error_code");
                    String string3 = g4.getString("error_description");
                    if (TextUtils.isEmpty(string) && TextUtils.isEmpty(string2)) {
                        Oauth2AccessToken parseAccessToken = Oauth2AccessToken.parseAccessToken(g4);
                        AccessTokenHelper.writeAccessToken(this.ay, parseAccessToken);
                        this.aB.onComplete(parseAccessToken);
                    } else {
                        this.aB.onError(new UiError(-1, string2, string3));
                    }
                } else {
                    this.aB.onError(new UiError(-1, "bundle is null", "parse url error"));
                }
                this.ax.b(r3);
            }
        }
        com.sina.weibo.sdk.web.a aVar = this.az;
        if (aVar != null) {
            aVar.q();
        }
    }

    @Override // com.sina.weibo.sdk.web.a.b, android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // com.sina.weibo.sdk.web.a.b
    public final void q() {
        super.q();
        String r3 = this.aA.u().r();
        if (!TextUtils.isEmpty(r3)) {
            WbAuthListener a4 = this.ax.a(r3);
            this.aB = a4;
            if (a4 != null) {
                a4.onCancel();
            }
            this.ax.b(r3);
        }
        com.sina.weibo.sdk.web.a aVar = this.az;
        if (aVar != null) {
            aVar.q();
        }
    }

    @Override // com.sina.weibo.sdk.web.a.b
    public final boolean s() {
        q();
        return true;
    }

    @Override // com.sina.weibo.sdk.web.a.b, android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        if (Build.VERSION.SDK_INT >= 21) {
            return l(webResourceRequest.getUrl().toString());
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return l(str);
    }
}
