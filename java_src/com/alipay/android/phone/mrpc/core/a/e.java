package com.alipay.android.phone.mrpc.core.a;

import java.util.ArrayList;
import java.util.Objects;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
/* loaded from: classes2.dex */
public final class e extends b {

    /* renamed from: c  reason: collision with root package name */
    private int f9418c;

    /* renamed from: d  reason: collision with root package name */
    private Object f9419d;

    public e(int i2, String str, Object obj) {
        super(str, obj);
        this.f9418c = i2;
    }

    @Override // com.alipay.android.phone.mrpc.core.a.f
    public final void a(Object obj) {
        this.f9419d = obj;
    }

    @Override // com.alipay.android.phone.mrpc.core.a.f
    public final byte[] a() {
        try {
            ArrayList arrayList = new ArrayList();
            if (this.f9419d != null) {
                arrayList.add(new BasicNameValuePair("extParam", com.alipay.a.a.f.a(this.f9419d)));
            }
            arrayList.add(new BasicNameValuePair("operationType", this.f9416a));
            StringBuilder sb = new StringBuilder();
            sb.append(this.f9418c);
            arrayList.add(new BasicNameValuePair("id", sb.toString()));
            Objects.toString(this.f9417b);
            Object obj = this.f9417b;
            arrayList.add(new BasicNameValuePair("requestData", obj == null ? "[]" : com.alipay.a.a.f.a(obj)));
            return URLEncodedUtils.format(arrayList, "utf-8").getBytes();
        } catch (Exception e4) {
            StringBuilder sb2 = new StringBuilder("request  =");
            sb2.append(this.f9417b);
            sb2.append(":");
            sb2.append(e4);
            throw new com.alipay.android.phone.mrpc.core.c(9, sb2.toString() == null ? "" : e4.getMessage(), e4);
        }
    }
}
