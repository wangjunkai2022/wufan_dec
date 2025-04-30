package com.alipay.sdk.util;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
/* loaded from: classes2.dex */
final class k implements DownloadListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f9855a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Activity activity) {
        this.f9855a = activity;
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j4) {
        try {
            this.f9855a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Throwable unused) {
        }
    }
}
