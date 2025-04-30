package com.umeng.analytics.pro;

import com.umeng.analytics.pro.bk;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
/* compiled from: TSerializer.java */
/* loaded from: classes4.dex */
public class ba {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayOutputStream f60514a;

    /* renamed from: b  reason: collision with root package name */
    private final cc f60515b;

    /* renamed from: c  reason: collision with root package name */
    private bq f60516c;

    public ba() {
        this(new bk.a());
    }

    public byte[] a(ar arVar) throws ax {
        this.f60514a.reset();
        arVar.write(this.f60516c);
        return this.f60514a.toByteArray();
    }

    public String b(ar arVar) throws ax {
        return new String(a(arVar));
    }

    public ba(bs bsVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f60514a = byteArrayOutputStream;
        cc ccVar = new cc(byteArrayOutputStream);
        this.f60515b = ccVar;
        this.f60516c = bsVar.a(ccVar);
    }

    public String a(ar arVar, String str) throws ax {
        try {
            return new String(a(arVar), str);
        } catch (UnsupportedEncodingException unused) {
            throw new ax("JVM DOES NOT SUPPORT ENCODING: " + str);
        }
    }
}
