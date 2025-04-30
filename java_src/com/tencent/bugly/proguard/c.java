package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* compiled from: BUGLY */
/* loaded from: classes4.dex */
public class c extends a {

    /* renamed from: d  reason: collision with root package name */
    protected HashMap<String, byte[]> f59726d = null;

    /* renamed from: e  reason: collision with root package name */
    private HashMap<String, Object> f59727e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private i f59728f = new i();

    @Override // com.tencent.bugly.proguard.a
    public final /* bridge */ /* synthetic */ void a(String str) {
        super.a(str);
    }

    public final <T> T b(String str, T t3) throws b {
        HashMap<String, byte[]> hashMap = this.f59726d;
        if (hashMap != null) {
            if (hashMap.containsKey(str)) {
                if (this.f59727e.containsKey(str)) {
                    return (T) this.f59727e.get(str);
                }
                try {
                    this.f59728f.a(this.f59726d.get(str));
                    this.f59728f.a(this.f59603b);
                    T t4 = (T) this.f59728f.a((i) t3, 0, true);
                    if (t4 != null) {
                        this.f59727e.put(str, t4);
                    }
                    return t4;
                } catch (Exception e4) {
                    throw new b(e4);
                }
            }
            return null;
        } else if (this.f59602a.containsKey(str)) {
            if (this.f59727e.containsKey(str)) {
                return (T) this.f59727e.get(str);
            }
            byte[] bArr = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it2 = this.f59602a.get(str).entrySet().iterator();
            if (it2.hasNext()) {
                Map.Entry<String, byte[]> next = it2.next();
                next.getKey();
                bArr = next.getValue();
            }
            try {
                this.f59728f.a(bArr);
                this.f59728f.a(this.f59603b);
                T t5 = (T) this.f59728f.a((i) t3, 0, true);
                this.f59727e.put(str, t5);
                return t5;
            } catch (Exception e5) {
                throw new b(e5);
            }
        } else {
            return null;
        }
    }

    public void c() {
        this.f59726d = new HashMap<>();
    }

    @Override // com.tencent.bugly.proguard.a
    public <T> void a(String str, T t3) {
        if (this.f59726d == null) {
            super.a(str, (String) t3);
        } else if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        } else {
            if (t3 != null) {
                if (!(t3 instanceof Set)) {
                    j jVar = new j();
                    jVar.a(this.f59603b);
                    jVar.a(t3, 0);
                    this.f59726d.put(str, l.a(jVar.a()));
                    return;
                }
                throw new IllegalArgumentException("can not support Set");
            }
            throw new IllegalArgumentException("put value can not is null");
        }
    }

    @Override // com.tencent.bugly.proguard.a
    public byte[] a() {
        if (this.f59726d != null) {
            j jVar = new j(0);
            jVar.a(this.f59603b);
            jVar.a((Map) this.f59726d, 0);
            return l.a(jVar.a());
        }
        return super.a();
    }

    @Override // com.tencent.bugly.proguard.a
    public void a(byte[] bArr) {
        try {
            super.a(bArr);
        } catch (Exception unused) {
            this.f59728f.a(bArr);
            this.f59728f.a(this.f59603b);
            HashMap hashMap = new HashMap(1);
            hashMap.put("", new byte[0]);
            this.f59726d = this.f59728f.a((Map) hashMap, 0, false);
        }
    }
}
