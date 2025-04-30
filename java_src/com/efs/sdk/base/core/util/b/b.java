package com.efs.sdk.base.core.util.b;

import androidx.annotation.Nullable;
import com.efs.sdk.base.http.HttpEnv;
import com.efs.sdk.base.http.HttpResponse;
import java.io.File;
import java.util.Map;
/* loaded from: classes2.dex */
public final class b implements com.efs.sdk.base.core.util.a.c<HttpResponse> {

    /* renamed from: a  reason: collision with root package name */
    String f11394a;

    /* renamed from: b  reason: collision with root package name */
    Map<String, String> f11395b;

    /* renamed from: c  reason: collision with root package name */
    public byte[] f11396c;

    /* renamed from: d  reason: collision with root package name */
    public File f11397d;

    /* renamed from: e  reason: collision with root package name */
    public String f11398e;

    /* renamed from: f  reason: collision with root package name */
    public Map<String, String> f11399f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f11400g = false;

    @Override // com.efs.sdk.base.core.util.a.c
    @Nullable
    public final /* synthetic */ HttpResponse a() {
        String str = this.f11398e;
        str.hashCode();
        if (str.equals("get")) {
            return HttpEnv.getInstance().getHttpUtil().get(this.f11394a, this.f11395b);
        }
        if (!str.equals("post")) {
            com.efs.sdk.base.core.util.d.b("efs.util.http", "request not support method '" + this.f11398e + "'", null);
            return null;
        }
        byte[] bArr = this.f11396c;
        if (bArr != null && bArr.length > 0) {
            if (this.f11400g) {
                return HttpEnv.getInstance().getHttpUtil().postAsFile(this.f11394a, this.f11395b, this.f11396c);
            }
            return HttpEnv.getInstance().getHttpUtil().post(this.f11394a, this.f11395b, this.f11396c);
        }
        return HttpEnv.getInstance().getHttpUtil().post(this.f11394a, this.f11395b, this.f11397d);
    }
}
