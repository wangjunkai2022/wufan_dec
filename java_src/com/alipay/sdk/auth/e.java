package com.alipay.sdk.auth;

import android.webkit.WebView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f9659a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AuthActivity f9660b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(AuthActivity authActivity, String str) {
        this.f9660b = authActivity;
        this.f9659a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WebView webView;
        try {
            webView = this.f9660b.f9644a;
            webView.loadUrl("javascript:" + this.f9659a);
        } catch (Exception unused) {
        }
    }
}
