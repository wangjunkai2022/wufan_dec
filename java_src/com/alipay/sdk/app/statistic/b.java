package com.alipay.sdk.app.statistic;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.alipay.sdk.util.i;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f9614a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f9615b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, String str) {
        this.f9614a = context;
        this.f9615b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.alipay.sdk.packet.impl.c cVar = new com.alipay.sdk.packet.impl.c();
        try {
            String b4 = i.b(this.f9614a, a.f9613b);
            if (!TextUtils.isEmpty(b4) && cVar.b(this.f9614a, b4) != null) {
                PreferenceManager.getDefaultSharedPreferences(this.f9614a).edit().remove(a.f9613b).commit();
            }
        } catch (Throwable unused) {
        }
        try {
            if (TextUtils.isEmpty(this.f9615b)) {
                return;
            }
            cVar.b(this.f9614a, this.f9615b);
        } catch (IOException unused2) {
            i.c(this.f9614a, a.f9613b, this.f9615b);
        } catch (Throwable unused3) {
        }
    }
}
