package cn.sharesdk.framework.authorize;

import android.webkit.WebView;
import cn.sharesdk.framework.g;
/* compiled from: AuthorizeWebviewClient.java */
/* loaded from: classes2.dex */
public abstract class b extends g {
    protected WebAuthorizeActivity activity;
    protected AuthorizeListener listener;
    protected String redirectUri;

    public b(WebAuthorizeActivity webAuthorizeActivity) {
        this.activity = webAuthorizeActivity;
        AuthorizeHelper helper = webAuthorizeActivity.getHelper();
        this.redirectUri = helper.getRedirectUri();
        this.listener = helper.getAuthorizeListener();
    }

    protected abstract void onComplete(String str);

    @Override // cn.sharesdk.framework.g, android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        webView.stopLoading();
        AuthorizeListener authorizeListener = this.activity.getHelper().getAuthorizeListener();
        this.activity.finish();
        if (authorizeListener != null) {
            authorizeListener.onError(new Throwable(str + " (" + i2 + "): " + str2));
        }
    }
}
