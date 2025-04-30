package com.efs.sdk.base.core.a;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.f.f;
import com.efs.sdk.base.http.AbsHttpListener;
import com.efs.sdk.base.http.HttpResponse;
import java.util.Map;
/* loaded from: classes2.dex */
public final class b extends AbsHttpListener {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final b f11243a = new b((byte) 0);
    }

    /* synthetic */ b(byte b4) {
        this();
    }

    @Override // com.efs.sdk.base.core.util.a.b
    public final /* bridge */ /* synthetic */ void a(@NonNull com.efs.sdk.base.core.util.a.c<HttpResponse> cVar, @Nullable HttpResponse httpResponse) {
        HttpResponse httpResponse2 = httpResponse;
        if (httpResponse2 != null) {
            com.efs.sdk.base.core.a.a.a();
            com.efs.sdk.base.core.a.a.a(httpResponse2);
        }
    }

    @Override // com.efs.sdk.base.http.AbsHttpListener
    public final void onError(@Nullable HttpResponse httpResponse) {
        if (httpResponse == null) {
            return;
        }
        a(httpResponse);
    }

    @Override // com.efs.sdk.base.http.AbsHttpListener
    public final void onSuccess(@NonNull HttpResponse httpResponse) {
        f fVar;
        a(httpResponse);
        if (((Map) httpResponse.extra).containsKey("cver")) {
            String str = (String) ((Map) httpResponse.extra).get("cver");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int parseInt = Integer.parseInt(str);
            fVar = f.a.f11380a;
            if (fVar.f11377b == null || !ControllerCenter.getGlobalEnvStruct().isEnableWaStat()) {
                return;
            }
            com.efs.sdk.base.core.f.b bVar = new com.efs.sdk.base.core.f.b("efs_core", "config_coverage", fVar.f11376a.f11370c);
            bVar.put("cver", Integer.valueOf(parseInt));
            fVar.f11377b.send(bVar);
        }
    }

    private b() {
    }

    public static b a() {
        return a.f11243a;
    }

    private static void a(@NonNull HttpResponse httpResponse) {
        f fVar;
        fVar = f.a.f11380a;
        fVar.a(String.valueOf(httpResponse.getHttpCode()), httpResponse.getBizCode(), httpResponse.getReqUrl());
    }
}
