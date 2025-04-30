package com.sdk.g;

import android.content.Context;
import com.join.mgps.dto.Constant;
import com.sdk.Unicorn.base.framework.bean.AInfo;
import com.sdk.Unicorn.base.framework.bean.DataInfo;
import com.sdk.Unicorn.base.framework.bean.KInfo;
import com.sdk.Unicorn.base.framework.bean.MobileKInfo;
import com.sdk.Unicorn.base.framework.bean.PInfo;
import com.sdk.Unicorn.base.framework.bean.SInfo;
import com.sdk.Unicorn.base.framework.utils.app.AppUtils;
import com.sdk.Unicorn.base.module.config.BaseConfig;
import com.sdk.a.e;
import com.sdk.a.g;
import com.sdk.a.h;
import com.sdk.d.j;
import com.sdk.f.c;
import com.sdk.f.g;
import com.sdk.p.f;
import com.sdk.r.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.TreeMap;
import java.util.concurrent.Executor;
/* loaded from: classes4.dex */
public class b<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final String f56655a = "com.sdk.g.b";

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f56656b = g.f56647b;

    /* renamed from: c  reason: collision with root package name */
    public PInfo f56657c;

    /* renamed from: d  reason: collision with root package name */
    public AInfo f56658d;

    /* renamed from: e  reason: collision with root package name */
    public SInfo f56659e;

    /* renamed from: f  reason: collision with root package name */
    public ArrayList<KInfo> f56660f;

    /* renamed from: g  reason: collision with root package name */
    public com.sdk.e.a<T> f56661g;

    /* renamed from: h  reason: collision with root package name */
    public Context f56662h;

    /* renamed from: i  reason: collision with root package name */
    public String f56663i;

    /* renamed from: j  reason: collision with root package name */
    public c f56664j;

    public b(Context context, com.sdk.e.a<T> aVar, c cVar) {
        this.f56662h = context;
        this.f56661g = aVar;
        this.f56664j = cVar;
    }

    public final String a(DataInfo dataInfo, String str, String str2) {
        String str3;
        try {
            if (this.f56658d == null) {
                this.f56658d = com.sdk.f.a.a(this.f56662h);
            }
            if (this.f56659e == null) {
                this.f56659e = com.sdk.f.a.c();
            }
            if (this.f56660f == null) {
                this.f56660f = com.sdk.f.a.a();
            }
            ArrayList arrayList = new ArrayList();
            Iterator<KInfo> it2 = this.f56660f.iterator();
            while (it2.hasNext()) {
                KInfo next = it2.next();
                MobileKInfo mobileKInfo = new MobileKInfo();
                mobileKInfo.setIe(next.getIe());
                mobileKInfo.setIs(next.getIs());
                mobileKInfo.setM(next.getM());
                mobileKInfo.setIdfd(next.isIdfd());
                arrayList.add(mobileKInfo);
            }
            if (this.f56657c == null) {
                this.f56657c = com.sdk.f.a.b();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("{app:");
            sb.append(this.f56658d);
            sb.append(",sdk:");
            sb.append(this.f56659e);
            sb.append(",device:");
            sb.append(this.f56657c);
            sb.append(",sim:");
            sb.append(arrayList);
            sb.append(",data:");
            sb.append(dataInfo);
            sb.append("}");
            str3 = sb.toString();
        } catch (Exception e4) {
            com.sdk.o.b.a(f56655a, e4.toString(), Boolean.valueOf(f56656b));
            str3 = null;
        }
        return f.a().f56696b.a(str, str2, str3);
    }

    public void a(int i2, int i4, String str) {
        com.sdk.e.a<T> aVar = this.f56661g;
        if (aVar != null) {
            aVar.a(i2, i4, str);
            this.f56661g = null;
        }
    }

    public void a(int i2, String str, int i4, T t3, String str2) {
        com.sdk.e.a<T> aVar = this.f56661g;
        if (aVar != null) {
            aVar.onSuccess(i2, str, i4, t3, str2);
            this.f56661g = null;
        }
    }

    /* JADX WARN: Type inference failed for: r3v26, types: [Params[], java.lang.Object[]] */
    public e<T> a(String str, String str2, DataInfo dataInfo, com.sdk.e.b<T> bVar, int i2, g.a aVar) {
        DataInfo dataInfo2;
        boolean z3;
        e<T> eVar = null;
        if (com.sdk.o.b.a(str).booleanValue()) {
            a(1, 101008, "未检测到域名");
            return null;
        }
        if (dataInfo == null) {
            try {
                dataInfo2 = new DataInfo();
            } catch (Exception e4) {
                e = e4;
                com.sdk.o.c.c(e.toString());
                a(1, 302002, "网络访问异常" + e.getMessage());
                com.sdk.o.b.a(f56655a, e.toString(), Boolean.valueOf(f56656b));
                return eVar;
            }
        } else {
            dataInfo2 = dataInfo;
        }
        TreeMap<String, Object> treeMap = new TreeMap<>();
        String a4 = com.sdk.r.a.a(16);
        String a5 = com.sdk.r.a.a(16);
        String apiKey = AppUtils.getApiKey(this.f56662h, BaseConfig.apk);
        String str3 = com.sdk.v.a.f56701b;
        if ("/st/api/v1.0/ses".equals(str2)) {
            str3 = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCgdQaZgBcrXGxxD6F1TVVXAzvbB3xpoyk2AFMNj4vOcDWZoH1b3Mx5aVcEd0BZPZR6Icb8yi8ecMUVChGCRe20O8EQWLh1aCwR8JazNL+koD3Tn6TIwVwjVEQWy9w6DeXxMtQuFBL/jAChJcU7aDwMsSD1jYpdET37aB4p8Lvn2QIDAQAB";
        }
        int i4 = 2;
        String[] strArr = {apiKey, str3};
        int i5 = 0;
        while (true) {
            if (i5 >= i4) {
                z3 = false;
                break;
            }
            String str4 = strArr[i5];
            if ((str4 == null || str4.length() < 1) && com.sdk.o.b.a(str4).booleanValue()) {
                z3 = true;
                break;
            }
            i5++;
            i4 = 2;
        }
        if (z3) {
            a(1, 101004, "ApiKey或PublicKey不能为空");
            return null;
        }
        String a6 = a(dataInfo2, a4, a5);
        try {
            f a7 = f.a();
            String a8 = a7.f56696b.a(a7.f56697c, a4 + a5);
            treeMap.put("apiKey", apiKey);
            treeMap.put("params", a6);
            treeMap.put("paramsKey", a8);
            String a9 = com.sdk.t.a.a(apiKey, str2, treeMap);
            HashMap<String, Object> hashMap = new HashMap<>(16);
            if (com.sdk.o.b.b(a9).booleanValue()) {
                treeMap.put(Constant.MD5, a9);
                treeMap.put("sign_Type", com.sdk.v.a.a());
                hashMap.put(Constant.MD5, a9);
                hashMap.put("api-protocol", "1.1");
                StringBuilder sb = new StringBuilder();
                sb.append("sign: ");
                sb.append(a9);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("sign_Type: ");
                sb2.append(com.sdk.v.a.a());
            }
            h hVar = new h();
            hVar.a(aVar.f56569l);
            hVar.b(str + str2);
            hVar.f56579j = bVar;
            hVar.f56578i = i2;
            hVar.f56575f = treeMap;
            hVar.f56576g = null;
            hVar.f56577h = hashMap;
            if ("/dro/netm/v1.0/qc".equals(str2)) {
                f.b bVar2 = f.b.f56684b;
            } else if ("/dro/ctc/v1.0/gctcbs".equals(str2)) {
                f.b bVar3 = f.b.f56685c;
            }
            com.sdk.a.g gVar = new com.sdk.a.g(this.f56662h, hVar);
            e<T> eVar2 = new e<>(gVar);
            try {
                ?? r3 = {gVar};
                Executor executor = com.sdk.d.e.f56604b;
                if (eVar2.f56609g) {
                    throw new IllegalStateException("Cannot execute task: the task is already executed.");
                }
                eVar2.f56609g = true;
                eVar2.f56605c.f56614a = r3;
                executor.execute(new j(eVar2.f56611i, eVar2.f56606d));
                return eVar2;
            } catch (Exception e5) {
                e = e5;
                eVar = eVar2;
                com.sdk.o.c.c(e.toString());
                a(1, 302002, "网络访问异常" + e.getMessage());
                com.sdk.o.b.a(f56655a, e.toString(), Boolean.valueOf(f56656b));
                return eVar;
            }
        } catch (Exception e6) {
            a(1, 101006, "公钥出错");
            String str5 = f56655a;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("公钥出错：");
            sb3.append(e6);
            com.sdk.o.b.a(str5, sb3.toString(), Boolean.valueOf(f56656b));
            return null;
        }
    }
}
