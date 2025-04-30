package com.efs.sdk.base.core.a;

import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.f.f;
import com.efs.sdk.base.http.AbsHttpListener;
import com.efs.sdk.base.http.HttpResponse;
import com.tencent.bugly.Bugly;
import java.util.Map;
/* loaded from: classes2.dex */
public final class d extends AbsHttpListener {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final d f11256a = new d((byte) 0);
    }

    /* synthetic */ d(byte b4) {
        this();
    }

    private static void b(HttpResponse httpResponse) {
        f fVar;
        fVar = f.a.f11380a;
        fVar.a(String.valueOf(httpResponse.getHttpCode()), httpResponse.getBizCode(), httpResponse.getReqUrl());
    }

    private static void c(HttpResponse httpResponse) {
        int parseInt;
        if (((Map) httpResponse.extra).containsKey("cver")) {
            String str = (String) ((Map) httpResponse.extra).get("cver");
            if (!TextUtils.isEmpty(str) && (parseInt = Integer.parseInt(str)) > com.efs.sdk.base.core.config.a.c.a().f11319d.f11310a) {
                com.efs.sdk.base.core.config.a.c.a().a(parseInt);
            }
        }
    }

    @Override // com.efs.sdk.base.core.util.a.b
    public final /* synthetic */ void a(@NonNull com.efs.sdk.base.core.util.a.c<HttpResponse> cVar, @Nullable HttpResponse httpResponse) {
        HttpResponse httpResponse2 = httpResponse;
        if (httpResponse2 != null) {
            com.efs.sdk.base.core.util.b.b bVar = (com.efs.sdk.base.core.util.b.b) cVar;
            ((Map) httpResponse2.extra).putAll(bVar.f11399f);
            bVar.f11399f.clear();
            com.efs.sdk.base.core.a.a.a();
            com.efs.sdk.base.core.a.a.a(httpResponse2);
        }
    }

    @Override // com.efs.sdk.base.http.AbsHttpListener
    public final void onError(@Nullable HttpResponse httpResponse) {
        a(httpResponse);
        if (httpResponse == null) {
            return;
        }
        b(httpResponse);
        c(httpResponse);
    }

    @Override // com.efs.sdk.base.http.AbsHttpListener
    public final void onSuccess(@NonNull HttpResponse httpResponse) {
        int i2;
        f fVar;
        if (!((Map) httpResponse.extra).containsKey("flow_limit") || !Boolean.FALSE.toString().equals(((Map) httpResponse.extra).get("flow_limit"))) {
            String str = ((Map) httpResponse.extra).containsKey("type") ? (String) ((Map) httpResponse.extra).get("type") : "";
            if (((Map) httpResponse.extra).containsKey("size")) {
                String str2 = (String) ((Map) httpResponse.extra).get("size");
                if (!TextUtils.isEmpty(str2)) {
                    i2 = Integer.parseInt(str2);
                    com.efs.sdk.base.core.c.b a4 = com.efs.sdk.base.core.c.b.a();
                    Message obtain = Message.obtain();
                    obtain.what = 0;
                    obtain.obj = str;
                    obtain.arg1 = i2;
                    a4.sendMessage(obtain);
                }
            }
            i2 = 0;
            com.efs.sdk.base.core.c.b a42 = com.efs.sdk.base.core.c.b.a();
            Message obtain2 = Message.obtain();
            obtain2.what = 0;
            obtain2.obj = str;
            obtain2.arg1 = i2;
            a42.sendMessage(obtain2);
        }
        b(httpResponse);
        fVar = f.a.f11380a;
        fVar.f11378c.f11371b.incrementAndGet();
        c(httpResponse);
        a(httpResponse);
    }

    private d() {
    }

    public static d a() {
        return a.f11256a;
    }

    private static void a(@Nullable HttpResponse httpResponse) {
        String str;
        if (ControllerCenter.getGlobalEnvStruct().isDebug()) {
            if (httpResponse == null) {
                str = "upload result : " + Bugly.SDK_IS_DEV;
            } else {
                str = "upload result : " + httpResponse.succ + ", resp is " + httpResponse.toString();
            }
            com.efs.sdk.base.core.util.d.a("efs.px.api", str);
        }
    }
}
