package com.heepay.plugin.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.heepay.plugin.a.b;
import com.heepay.plugin.a.d;
import com.heepay.plugin.api.HPlugin;
import com.heepay.plugin.c.c;
import com.heepay.plugin.domain.e;
import com.heepay.plugin.domain.f;
import com.heepay.plugin.domain.g;
import com.heepay.plugin.domain.h;
import com.heepay.plugin.domain.i;
import com.tencent.stat.DeviceInfo;
import java.security.PublicKey;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@SuppressLint({"DefaultLocale"})
/* loaded from: classes2.dex */
public class a extends com.heepay.plugin.a.a {

    /* renamed from: o  reason: collision with root package name */
    private static a f16772o = new a();

    /* renamed from: q  reason: collision with root package name */
    private static final String f16773q = com.heepay.plugin.a.a.f16649d + com.heepay.plugin.a.a.f16650e + com.heepay.plugin.a.a.f16652g + "<@*Se*rv*ic*e@ xm*ln*s=\"h*tt*p:*/*/w*ww*.j*ca*r*d*.c*n/*we*bs*er*vi*ces/\">".replaceAll("\\*", "") + "<ph*one*Ver*>@p*ho*ne*Ver@</*pho*ne*Ver>".replaceAll("\\*", "") + "<ph*on*eI*D>*@p*ho*ne*ID*@</*pho*ne*I*D>".replaceAll("\\*", "") + "<*p*hon*eI*nf*o>@*ph*o*n*eI*n*f*o@*</*ph*one*In*fo>".replaceAll("\\*", "") + "<*tim*est*am*p>@*tim*est*amp*@</*tim*est*am*p>".replaceAll("\\*", "") + "<*enc*ryp*tPa*ra*m>*@p*ar*am*@<*/e*nc*ry*pt*Pa*ra*m>".replaceAll("\\*", "") + "<*si*gn>*@s**ign@</sign>".replaceAll("\\*", "") + "<*/*@*Se*rv*ice*@>".replaceAll("\\*", "") + com.heepay.plugin.a.a.f16653h + com.heepay.plugin.a.a.f16651f;

    /* renamed from: n  reason: collision with root package name */
    private boolean f16774n = c.f16776a;

    /* renamed from: p  reason: collision with root package name */
    private int f16775p = 0;

    private a() {
    }

    private JSONObject a(String str, int i2, String str2) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(b.C0124b.f16687a, str);
        jSONObject.put(b.C0124b.f16688b, i2);
        jSONObject.put(b.C0124b.f16690d, str2);
        return jSONObject;
    }

    private boolean a(g gVar) {
        String str = gVar.f16835d;
        if (str == null || str.length() <= 0 || Integer.valueOf(gVar.f16835d).intValue() != 100) {
            return false;
        }
        String str2 = gVar.f16844m;
        c.b("WebService", "public key data has error ");
        c.b("WebService", "Received public key data again: " + str2);
        if (str2 == null || str2.length() <= 0) {
            return false;
        }
        this.f16657j = str2;
        try {
            PublicKey c4 = d.c(str2);
            this.f16658k = c4;
            if (c4 != null) {
                c.b("WebService", "Received public key: " + this.f16657j);
                return true;
            }
            return true;
        } catch (Exception e4) {
            e4.printStackTrace();
            return false;
        }
    }

    private com.heepay.plugin.domain.d b(g gVar) {
        if (gVar == null) {
            return new com.heepay.plugin.domain.d();
        }
        JSONObject jSONObject = new JSONObject(gVar.a());
        com.heepay.plugin.domain.d dVar = new com.heepay.plugin.domain.d();
        dVar.d(com.heepay.plugin.c.a.a(jSONObject, b.C0124b.f16687a));
        dVar.a(com.heepay.plugin.c.a.a(jSONObject, b.a.C, 0));
        dVar.e(com.heepay.plugin.c.a.a(jSONObject, b.C0124b.f16697k));
        dVar.b(com.heepay.plugin.c.a.a(jSONObject, b.C0124b.f16698l));
        dVar.b(com.heepay.plugin.c.a.a(jSONObject, b.C0124b.f16693g, 0));
        dVar.c(com.heepay.plugin.c.a.a(jSONObject, b.a.f16684x));
        dVar.a(com.heepay.plugin.c.a.a(jSONObject, b.C0124b.E));
        return dVar;
    }

    public static a c() {
        return f16772o;
    }

    private String e() {
        a(HPlugin.mPayInitInfo.getSdkVersion());
        return "a" + HPlugin.mPayInitInfo.getSdkVersion();
    }

    public f a(String str, int i2) {
        f fVar = new f();
        String replaceAll = "Ve*rs*i*on*Se*rv*ic*e.A*pp*Bu*gR*ep*or*t".replaceAll("\\*", "");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(b.c.f16713a, str);
            jSONObject.put(b.c.f16714b, i2);
            g a4 = a(replaceAll, jSONObject.toString(), true);
            if (a4.f16833b) {
                fVar.a(true);
                fVar.a(a4.f16834c);
                fVar.c(a4.f16835d);
            }
            return fVar;
        } catch (JSONException e4) {
            c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e4));
            com.heepay.plugin.c.d.a("---->1--AppBugReport", "---" + com.heepay.plugin.c.b.a(e4));
            fVar.a(true);
            fVar.a((Exception) e4);
            fVar.a("获取数据时出错");
            fVar.b(fVar.b() + ", 原因：" + e4.getMessage());
            return fVar;
        }
    }

    public f a(String str, int i2, String str2, String str3) {
        f fVar = new f();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(b.C0124b.f16687a, str);
            jSONObject.put(b.C0124b.f16688b, i2);
            jSONObject.put(b.C0124b.f16690d, str2);
            jSONObject.put(b.C0124b.f16691e, str3);
            jSONObject.put(b.a.J, e.a().c());
            g a4 = a("PayService.CheckPayTokenID", jSONObject.toString(), true);
            if (a4.f16833b) {
                if (!a(a4)) {
                    fVar.a(true);
                    fVar.a(a4.f16834c);
                    fVar.c(a4.f16835d);
                    return fVar;
                }
                a4 = a("PayService.CheckPayTokenID", jSONObject.toString(), true);
                if (a4.f16833b) {
                    fVar.a(true);
                    fVar.a(a4.f16834c);
                    fVar.c(a4.f16835d);
                    return fVar;
                }
            }
            try {
                JSONObject jSONObject2 = new JSONObject(a4.a());
                h hVar = new h();
                hVar.a(com.heepay.plugin.c.a.a(jSONObject2, b.C0124b.f16693g));
                hVar.b(com.heepay.plugin.c.a.a(jSONObject2, b.C0124b.f16689c));
                hVar.c(com.heepay.plugin.c.a.a(jSONObject2, b.C0124b.f16697k));
                hVar.e(com.heepay.plugin.c.a.a(jSONObject2, b.C0124b.f16699m));
                hVar.d(com.heepay.plugin.c.a.a(jSONObject2, b.C0124b.f16700n));
                hVar.f(com.heepay.plugin.c.a.a(jSONObject2, b.C0124b.f16701o));
                fVar.a(hVar);
                return fVar;
            } catch (JSONException e4) {
                c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e4));
                com.heepay.plugin.c.d.a("---->2--CheckPayTokenID", "---" + com.heepay.plugin.c.b.a(e4));
                fVar.a(true);
                fVar.a((Exception) e4);
                fVar.a("获取数据时出错");
                fVar.b(fVar.b() + ", 原因：" + e4.getMessage());
                return fVar;
            }
        } catch (JSONException e5) {
            e5.printStackTrace();
            c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e5));
            com.heepay.plugin.c.d.a("---->1--CheckPayTokenID", "---" + com.heepay.plugin.c.b.a(e5));
            fVar.a(true);
            fVar.a((Exception) e5);
            fVar.a("获取数据时出错");
            fVar.b(fVar.b() + ", 原因：" + e5.getMessage());
            return fVar;
        }
    }

    public f a(String str, int i2, String str2, String str3, String str4) {
        f fVar = new f();
        if (TextUtils.isEmpty(str)) {
            fVar.a(true);
            fVar.a("订单号出错");
            return fVar;
        } else if (i2 == 0) {
            fVar.a(true);
            fVar.a("商家信息出错");
            return fVar;
        } else {
            try {
                JSONObject a4 = a(str, i2, str2);
                a4.put(b.C0124b.f16693g, str3);
                a4.put(b.C0124b.f16694h, str4);
                g a5 = a("PayService.SubmitPay", a4.toString(), true);
                if (a5.f16833b) {
                    fVar.a(true);
                    fVar.a(a5.f16834c);
                    fVar.c(a5.f16835d);
                    return fVar;
                }
                try {
                    fVar.a(b(a5));
                    return fVar;
                } catch (Exception e4) {
                    c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e4));
                    com.heepay.plugin.c.d.a("---->2--SubmitPay", "---" + com.heepay.plugin.c.b.a(e4));
                    fVar.a(true);
                    fVar.a(e4);
                    fVar.a("获取数据时出错");
                    fVar.b(fVar.b() + ", 原因：" + e4.getMessage());
                    return fVar;
                }
            } catch (JSONException e5) {
                c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e5));
                com.heepay.plugin.c.d.a("---->1--SubmitPay", "---" + com.heepay.plugin.c.b.a(e5));
                fVar.a(true);
                fVar.a((Exception) e5);
                fVar.a("获取数据时出错");
                fVar.b(fVar.b() + ", 原因：" + e5.getMessage());
                return fVar;
            }
        }
    }

    public f a(String str, int i2, String str2, boolean z3) {
        f fVar = new f();
        String replaceAll = "P*a*yS*er*vi*ce.Qu*ery*Pa*yS*ta*tu*s".replaceAll("\\*", "");
        try {
            JSONObject a4 = a(str, i2, str2);
            a4.put(b.C0124b.B, z3);
            g a5 = a(replaceAll, a4.toString(), true);
            if (!a5.f16833b) {
                fVar.a(a5.f16845n);
                return fVar;
            }
            fVar.a(true);
            fVar.a(a5.f16834c);
            fVar.c(a5.f16835d);
            fVar.a(a5.f16845n);
            return fVar;
        } catch (JSONException e4) {
            c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e4));
            com.heepay.plugin.c.d.a("---->1--QueryPayStatus", "---" + com.heepay.plugin.c.b.a(e4));
            fVar.a(true);
            fVar.a((Exception) e4);
            fVar.a("获取数据时出错");
            fVar.b(fVar.b() + ", 原因：" + e4.getMessage());
            return fVar;
        }
    }

    protected g a(String str, String str2, boolean z3) {
        String replaceAll;
        String a4;
        String str3;
        String b4 = b();
        String str4 = this.f16654b;
        if (str4 == null || str4.isEmpty()) {
            if (this.f16774n) {
                switch (HPlugin.mPayInitInfo.getPayUrlType()) {
                    case 0:
                        break;
                    case 1:
                        str3 = "*h*t*t*p*:*/*/*1*9*2*.*1*6*8*.*2*.*9*5*/*P*a*y*H*e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K";
                        replaceAll = str3.replaceAll("\\*", "");
                        a4 = com.heepay.plugin.c.a.a(replaceAll);
                        break;
                    case 2:
                        str3 = "*h*t*t*p*:*/*/*2*1*1*.*1*0*3*.*1*5*7*.*4*5*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        replaceAll = str3.replaceAll("\\*", "");
                        a4 = com.heepay.plugin.c.a.a(replaceAll);
                        break;
                    case 3:
                        str3 = "*h*t*t*p*:*/*/*1*1*5*.*1*8*2*.*3*8*.*1*3*6*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        replaceAll = str3.replaceAll("\\*", "");
                        a4 = com.heepay.plugin.c.a.a(replaceAll);
                        break;
                    case 4:
                        str3 = "*h*t*t*p*:*/*/*2*1*1*.*1*0*3*.*1*7*1*.*1*6*3*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        replaceAll = str3.replaceAll("\\*", "");
                        a4 = com.heepay.plugin.c.a.a(replaceAll);
                        break;
                    case 5:
                        str3 = "*h*t*t*p*:*/*/*2*1*1*.*1*0*3*.*1*7*1*.*1*8*5*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        replaceAll = str3.replaceAll("\\*", "");
                        a4 = com.heepay.plugin.c.a.a(replaceAll);
                        break;
                    case 6:
                        str3 = "*h*t*t*p*:*/*/*2*1*1.*1*0*3*.*1*7*1*.*1*8*8*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        replaceAll = str3.replaceAll("\\*", "");
                        a4 = com.heepay.plugin.c.a.a(replaceAll);
                        break;
                    case 7:
                        str3 = "*h*t*t*p*:*/*/*1*1*5*.*1*8*2*.*2*4*4*.*1*6*5*/*P*a*y*H**e*e*_*p*a*y*/*P*h*o*n*e*/*S*D*K*";
                        replaceAll = str3.replaceAll("\\*", "");
                        a4 = com.heepay.plugin.c.a.a(replaceAll);
                        break;
                    case 8:
                        str3 = "*h*t*t*p*s*:*/*/*t*e*s*t*.*h*e*e*p*a*y*.*c*o*m*/*P*h*o*n*e*/*S*D*K";
                        replaceAll = str3.replaceAll("\\*", "");
                        a4 = com.heepay.plugin.c.a.a(replaceAll);
                        break;
                    case 9:
                        str3 = "*h*t*t*p*s*:*/*/*P*a*y*F*o*r*Y*f*b*.*h*e*e*p*a*y*.*c*o*m*/*P*h*o*n*e*/*S*D*K*";
                        replaceAll = str3.replaceAll("\\*", "");
                        a4 = com.heepay.plugin.c.a.a(replaceAll);
                        break;
                    default:
                        a4 = "*h*t*t*p*:*/*/*c*.*s*u*p*.*8*0*0*j*.*c*o*m*/*P*h*o*n*e*/*S*D*K*".replaceAll("\\*", "");
                        break;
                }
                this.f16654b = a4;
            }
            replaceAll = "*h*t*t*p*s*:*/*/*p*a*y*.*h*e*e*_*p*a*y*.*c*o*m*/*P*h*o*n*e*/*S*D*K".replaceAll("\\*", "");
            a4 = com.heepay.plugin.c.a.a(replaceAll);
            this.f16654b = a4;
        }
        g b5 = b(str, b4, str2, z3);
        if (b5 == null) {
            b5 = new g();
            b5.f16833b = true;
            b5.f16834c = "返回的对象为空";
        }
        c.a("GetDataFromServer", str + " return value: " + b5.toString());
        if (b5.f16833b) {
            if (b5.f16832a != null) {
                for (int i2 = 0; i2 < 3; i2++) {
                    if (b5.f16832a != null) {
                        c.b("----重新请求", "" + i2);
                        b5 = b(str, b4, str2, z3);
                    }
                }
            }
            String b6 = b5.b();
            this.f16656i = "服务失败，原因：" + b6 + "";
            StringBuilder sb = new StringBuilder();
            sb.append("GetDataFromServer return error, ");
            sb.append(this.f16656i);
            c.e("USaleWebService", sb.toString());
            return b5;
        }
        return b5;
    }

    @Override // com.heepay.plugin.a.a
    protected String a(String str, String str2, String str3, boolean z3) {
        e a4 = e.a();
        String c4 = a4.c();
        String h4 = a4.h();
        String e4 = e();
        String lowerCase = d.a(str + e4 + net.lingala.zip4j.util.e.F0 + c4 + net.lingala.zip4j.util.e.F0 + str3 + net.lingala.zip4j.util.e.F0 + h4 + net.lingala.zip4j.util.e.F0 + str2).toLowerCase();
        if (z3) {
            str2 = a(this.f16658k, str2);
        }
        return new String(f16773q).replaceAll("@Service@", str).replaceAll("@phoneVer@", e4).replaceAll("@phoneID@", c(c4)).replaceAll("@phoneInfo@", c(h4)).replaceAll("@timestamp@", c(str3)).replaceAll("@param@", c(str2)).replaceAll("@sign@", c(lowerCase));
    }

    @Override // com.heepay.plugin.a.a
    public boolean a(Context context) {
        super.a(context);
        this.f16775p++;
        e.a().b(context);
        return true;
    }

    public f d() {
        f fVar = new f();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(DeviceInfo.TAG_VERSION, this.f16660m);
            g a4 = a("VersionService.GetVersionInfo", jSONObject.toString(), false);
            if (a4.f16833b) {
                fVar.a(true);
                fVar.a(a4.f16834c);
                fVar.c(a4.f16835d);
                return fVar;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(a4.a());
                i iVar = new i();
                iVar.b(com.heepay.plugin.a.a.a(jSONObject2, b.d.f16721a, 0));
                iVar.a(com.heepay.plugin.a.a.a(jSONObject2, b.d.f16722b));
                iVar.b(com.heepay.plugin.a.a.a(jSONObject2, b.d.f16723c));
                iVar.a(com.heepay.plugin.c.a.a(jSONObject2, b.d.f16728h, 1));
                if (jSONObject2.has(b.c.f16714b)) {
                    com.heepay.plugin.domain.a aVar = new com.heepay.plugin.domain.a();
                    aVar.a(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f16714b), b.c.f16715c));
                    aVar.b(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f16714b), b.c.f16716d));
                    aVar.c(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f16714b), b.c.f16717e));
                    aVar.d(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f16714b), b.c.f16718f));
                    aVar.e(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f16714b), b.c.f16719g));
                    aVar.f(com.heepay.plugin.c.a.b(jSONObject2.getJSONObject(b.c.f16714b), b.c.f16720h));
                    iVar.a(aVar);
                }
                if (jSONObject2.has(b.d.f16725e)) {
                    JSONArray jSONArray = jSONObject2.getJSONArray(b.d.f16725e);
                    ArrayList arrayList = new ArrayList();
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        com.heepay.plugin.domain.c cVar = new com.heepay.plugin.domain.c();
                        cVar.a(com.heepay.plugin.a.a.a(jSONArray.getJSONObject(i2), b.d.f16726f));
                        arrayList.add(cVar);
                    }
                    iVar.a(arrayList);
                }
                fVar.a(iVar);
                String a5 = com.heepay.plugin.a.a.a(jSONObject2, b.d.f16724d);
                if (a5 != null && a5.length() > 0) {
                    this.f16657j = a5;
                    PublicKey c4 = d.c(a5);
                    this.f16658k = c4;
                    if (c4 != null) {
                        c.b("WebService", "Received public key: " + this.f16657j);
                    }
                }
                return fVar;
            } catch (Exception e4) {
                c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e4));
                com.heepay.plugin.c.d.a("---->2--getVersionFromServer", "---" + com.heepay.plugin.c.b.a(e4));
                fVar.a(true);
                fVar.a(e4);
                fVar.a("获取数据时出错");
                fVar.b(fVar.b() + ", 原因：" + e4.getMessage());
                return fVar;
            }
        } catch (Exception e5) {
            c.e("Exception", "产生了例外：" + com.heepay.plugin.c.b.a(e5));
            com.heepay.plugin.c.d.a("---->1--getVersionFromServer", "---" + com.heepay.plugin.c.b.a(e5));
            fVar.a(true);
            fVar.a(e5);
            fVar.a("获取数据时出错");
            fVar.b(fVar.b() + ", 原因：" + e5.getMessage());
            return fVar;
        }
    }
}
