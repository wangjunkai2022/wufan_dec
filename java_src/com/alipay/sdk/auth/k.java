package com.alipay.sdk.auth;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class k implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f9670a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ StringBuilder f9671b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ a f9672c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Activity activity, StringBuilder sb, a aVar) {
        this.f9670a = activity;
        this.f9671b = sb;
        this.f9672c = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.alipay.sdk.widget.a aVar;
        com.alipay.sdk.widget.a aVar2;
        com.alipay.sdk.widget.a aVar3;
        com.alipay.sdk.widget.a aVar4;
        com.alipay.sdk.packet.b bVar;
        com.alipay.sdk.widget.a aVar5;
        String str;
        String str2;
        com.alipay.sdk.widget.a aVar6;
        String str3;
        com.alipay.sdk.widget.a aVar7;
        com.alipay.sdk.widget.a aVar8;
        String str4;
        com.alipay.sdk.widget.a aVar9;
        com.alipay.sdk.widget.a aVar10;
        com.alipay.sdk.widget.a aVar11;
        try {
            bVar = null;
            try {
                bVar = new com.alipay.sdk.packet.impl.a().b(this.f9670a, this.f9671b.toString());
            } catch (Throwable unused) {
            }
            aVar5 = j.f9668c;
            if (aVar5 != null) {
                aVar11 = j.f9668c;
                aVar11.f();
                j.f();
            }
        } catch (Exception unused2) {
            aVar3 = j.f9668c;
            if (aVar3 == null) {
                return;
            }
        } catch (Throwable th) {
            aVar = j.f9668c;
            if (aVar != null) {
                aVar2 = j.f9668c;
                aVar2.f();
            }
            throw th;
        }
        if (bVar == null) {
            String unused3 = j.f9669d = this.f9672c.d() + "?resultCode=202";
            Activity activity = this.f9670a;
            str4 = j.f9669d;
            j.d(activity, str4);
            aVar9 = j.f9668c;
            if (aVar9 != null) {
                aVar10 = j.f9668c;
                aVar10.f();
                return;
            }
            return;
        }
        List<com.alipay.sdk.protocol.b> b4 = com.alipay.sdk.protocol.b.b(bVar.a().optJSONObject(com.alipay.sdk.cons.c.f9728c).optJSONObject(com.alipay.sdk.cons.c.f9729d));
        int i2 = 0;
        while (true) {
            if (i2 >= b4.size()) {
                break;
            } else if (b4.get(i2).f9810a == com.alipay.sdk.protocol.a.WapPay) {
                String unused4 = j.f9669d = b4.get(i2).f9812c[0];
                break;
            } else {
                i2++;
            }
        }
        str = j.f9669d;
        if (TextUtils.isEmpty(str)) {
            String unused5 = j.f9669d = this.f9672c.d() + "?resultCode=202";
            Activity activity2 = this.f9670a;
            str3 = j.f9669d;
            j.d(activity2, str3);
            aVar7 = j.f9668c;
            if (aVar7 != null) {
                aVar8 = j.f9668c;
                aVar8.f();
                return;
            }
            return;
        }
        Intent intent = new Intent(this.f9670a, AuthActivity.class);
        str2 = j.f9669d;
        intent.putExtra("params", str2);
        intent.putExtra("redirectUri", this.f9672c.d());
        this.f9670a.startActivity(intent);
        aVar6 = j.f9668c;
        if (aVar6 == null) {
            return;
        }
        aVar4 = j.f9668c;
        aVar4.f();
    }
}
