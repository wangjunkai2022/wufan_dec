package com.alipay.sdk.util;

import android.app.Activity;
/* loaded from: classes2.dex */
final class l implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f9856a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Activity activity) {
        this.f9856a = activity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9856a.finish();
    }
}
