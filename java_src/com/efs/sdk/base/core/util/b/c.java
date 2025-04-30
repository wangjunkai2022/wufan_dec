package com.efs.sdk.base.core.util.b;

import androidx.annotation.NonNull;
import com.efs.sdk.base.core.util.a.e;
import com.efs.sdk.base.http.HttpResponse;
/* loaded from: classes2.dex */
public final class c extends e<HttpResponse> {

    /* renamed from: a  reason: collision with root package name */
    public b f11401a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@NonNull b bVar) {
        super(bVar);
        this.f11401a = bVar;
    }

    @NonNull
    public final HttpResponse b() {
        this.f11401a.f11398e = "post";
        return a();
    }
}
