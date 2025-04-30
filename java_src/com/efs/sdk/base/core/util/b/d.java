package com.efs.sdk.base.core.util.b;

import androidx.annotation.NonNull;
import com.efs.sdk.base.http.AbsHttpListener;
import com.efs.sdk.base.http.HttpEnv;
import com.efs.sdk.base.http.HttpResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public b f11402a;

    /* renamed from: b  reason: collision with root package name */
    private List<com.efs.sdk.base.core.util.a.b<HttpResponse>> f11403b;

    public d(@NonNull String str) {
        b bVar = new b();
        this.f11402a = bVar;
        bVar.f11394a = str;
    }

    public final d a(@NonNull Map<String, String> map) {
        this.f11402a.f11395b = map;
        return this;
    }

    public final d a(String str, String str2) {
        b bVar = this.f11402a;
        if (bVar.f11399f == null) {
            bVar.f11399f = new HashMap(5);
        }
        this.f11402a.f11399f.put(str, str2);
        return this;
    }

    public final d a(@NonNull AbsHttpListener absHttpListener) {
        if (this.f11403b == null) {
            this.f11403b = new ArrayList(5);
        }
        this.f11403b.add(absHttpListener);
        return this;
    }

    public final c a() {
        c cVar = new c(this.f11402a);
        List<com.efs.sdk.base.core.util.a.b<HttpResponse>> list = this.f11403b;
        if (list != null && list.size() > 0) {
            cVar.a(this.f11403b);
        }
        List<com.efs.sdk.base.core.util.a.b<HttpResponse>> httpListenerList = HttpEnv.getInstance().getHttpListenerList();
        if (httpListenerList != null && httpListenerList.size() > 0) {
            cVar.a(httpListenerList);
        }
        return cVar;
    }
}
