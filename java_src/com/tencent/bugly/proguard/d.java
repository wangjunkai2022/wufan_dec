package com.tencent.bugly.proguard;

import com.join.mgps.Util.g0;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public final class d extends c {

    /* renamed from: f  reason: collision with root package name */
    private static HashMap<String, byte[]> f59729f;

    /* renamed from: g  reason: collision with root package name */
    private static HashMap<String, HashMap<String, byte[]>> f59730g;

    /* renamed from: e  reason: collision with root package name */
    private f f59731e;

    public d() {
        f fVar = new f();
        this.f59731e = fVar;
        fVar.f59736a = (short) 2;
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final <T> void a(String str, T t3) {
        if (!str.startsWith(g0.f27568a)) {
            super.a(str, (String) t3);
            return;
        }
        throw new IllegalArgumentException("put name can not startwith . , now is " + str);
    }

    public final void b(String str) {
        this.f59731e.f59738c = str;
    }

    @Override // com.tencent.bugly.proguard.c
    public final void c() {
        super.c();
        this.f59731e.f59736a = (short) 3;
    }

    public final void c(String str) {
        this.f59731e.f59739d = str;
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final byte[] a() {
        f fVar = this.f59731e;
        if (fVar.f59736a == 2) {
            if (!fVar.f59738c.equals("")) {
                if (this.f59731e.f59739d.equals("")) {
                    throw new IllegalArgumentException("funcName can not is null");
                }
            } else {
                throw new IllegalArgumentException("servantName can not is null");
            }
        } else {
            if (fVar.f59738c == null) {
                fVar.f59738c = "";
            }
            if (fVar.f59739d == null) {
                fVar.f59739d = "";
            }
        }
        j jVar = new j(0);
        jVar.a(this.f59603b);
        if (this.f59731e.f59736a == 2) {
            jVar.a((Map) this.f59602a, 0);
        } else {
            jVar.a((Map) ((c) this).f59726d, 0);
        }
        this.f59731e.f59740e = l.a(jVar.a());
        j jVar2 = new j(0);
        jVar2.a(this.f59603b);
        this.f59731e.a(jVar2);
        byte[] a4 = l.a(jVar2.a());
        int length = a4.length + 4;
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length).put(a4).flip();
        return allocate.array();
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final void a(byte[] bArr) {
        if (bArr.length >= 4) {
            try {
                i iVar = new i(bArr, 4);
                iVar.a(this.f59603b);
                this.f59731e.a(iVar);
                f fVar = this.f59731e;
                if (fVar.f59736a == 3) {
                    i iVar2 = new i(fVar.f59740e);
                    iVar2.a(this.f59603b);
                    if (f59729f == null) {
                        HashMap<String, byte[]> hashMap = new HashMap<>();
                        f59729f = hashMap;
                        hashMap.put("", new byte[0]);
                    }
                    ((c) this).f59726d = iVar2.a((Map) f59729f, 0, false);
                    return;
                }
                i iVar3 = new i(fVar.f59740e);
                iVar3.a(this.f59603b);
                if (f59730g == null) {
                    f59730g = new HashMap<>();
                    HashMap<String, byte[]> hashMap2 = new HashMap<>();
                    hashMap2.put("", new byte[0]);
                    f59730g.put("", hashMap2);
                }
                this.f59602a = iVar3.a((Map) f59730g, 0, false);
                new HashMap();
                return;
            } catch (Exception e4) {
                throw new RuntimeException(e4);
            }
        }
        throw new IllegalArgumentException("decode package must include size head");
    }

    public final void a(int i2) {
        this.f59731e.f59737b = 1;
    }
}
