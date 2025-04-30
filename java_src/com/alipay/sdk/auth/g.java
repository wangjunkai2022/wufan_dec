package com.alipay.sdk.auth;

import android.webkit.SslErrorHandler;
import com.alipay.sdk.auth.AuthActivity;
/* loaded from: classes2.dex */
final class g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ SslErrorHandler f9662a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ AuthActivity.b f9663b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(AuthActivity.b bVar, SslErrorHandler sslErrorHandler) {
        this.f9663b = bVar;
        this.f9662a = sslErrorHandler;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.alipay.sdk.widget.d.b(AuthActivity.this, "安全警告", "由于您的设备缺少根证书，将无法校验该访问站点的安全性，可能存在风险，请选择是否继续？", "继续", new h(this), "退出", new i(this));
    }
}
