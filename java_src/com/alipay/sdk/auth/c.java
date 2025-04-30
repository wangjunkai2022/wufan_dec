package com.alipay.sdk.auth;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
/* loaded from: classes2.dex */
final class c implements DownloadListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AuthActivity f9657a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(AuthActivity authActivity) {
        this.f9657a = authActivity;
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j4) {
        try {
            this.f9657a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Throwable unused) {
        }
    }
}
