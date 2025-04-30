package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.util.f;
import com.alipay.sdk.util.j;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public class PayTask {

    /* renamed from: g  reason: collision with root package name */
    static final Object f9577g = com.alipay.sdk.util.f.class;

    /* renamed from: h  reason: collision with root package name */
    private static ConcurrentHashMap<String, String> f9578h = new ConcurrentHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    private Activity f9579a;

    /* renamed from: b  reason: collision with root package name */
    private com.alipay.sdk.widget.a f9580b;

    /* renamed from: c  reason: collision with root package name */
    private String f9581c = "wappaygw.alipay.com/service/rest.htm";

    /* renamed from: d  reason: collision with root package name */
    private String f9582d = "mclient.alipay.com/service/rest.htm";

    /* renamed from: e  reason: collision with root package name */
    private String f9583e = "mclient.alipay.com/home/exterfaceAssign.htm";

    /* renamed from: f  reason: collision with root package name */
    private Map<String, a> f9584f = new HashMap();

    public PayTask(Activity activity) {
        this.f9579a = activity;
        m.b b4 = m.b.b();
        Activity activity2 = this.f9579a;
        com.alipay.sdk.data.c.a();
        b4.c(activity2);
        com.alipay.sdk.app.statistic.a.a(activity);
        this.f9580b = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.f9858e);
    }

    private f.a a() {
        return new g(this);
    }

    private String b(com.alipay.sdk.protocol.b bVar) {
        String[] strArr = bVar.f9812c;
        Intent intent = new Intent(this.f9579a, H5PayActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("url", strArr[0]);
        if (strArr.length == 2) {
            bundle.putString("cookie", strArr[1]);
        }
        intent.putExtras(bundle);
        this.f9579a.startActivity(intent);
        Object obj = f9577g;
        synchronized (obj) {
            try {
                obj.wait();
            } catch (InterruptedException unused) {
                return h.a();
            }
        }
        String str = h.f9601a;
        return TextUtils.isEmpty(str) ? h.a() : str;
    }

    private static String c(String str) {
        if (TextUtils.isEmpty(str) || !str.contains("alipay_exterface_invoke_assign_sign")) {
            return str;
        }
        return str.replace("alipay_exterface_invoke_assign_sign=" + j.e("alipay_exterface_invoke_assign_sign=", m.a.f72566d, str), "").replace("sdk_start_time\\\":" + j.e("sdk_start_time\\\":", "\\\"", str), "");
    }

    private static String d(String str, String str2) {
        String str3 = str2 + "={";
        return str.substring(str.indexOf(str3) + str3.length(), str.lastIndexOf("}"));
    }

    private static boolean f(boolean z3, boolean z4, String str, StringBuilder sb, Map<String, String> map, String... strArr) {
        String str2;
        int length = strArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                str2 = "";
                break;
            }
            String str3 = strArr[i2];
            if (!TextUtils.isEmpty(map.get(str3))) {
                str2 = map.get(str3);
                break;
            }
            i2++;
        }
        if (TextUtils.isEmpty(str2)) {
            return !z4;
        } else if (z3) {
            sb.append(m.a.f72566d);
            sb.append(str);
            sb.append("=\"");
            sb.append(str2);
            sb.append(m.a.f72569g);
            return true;
        } else {
            sb.append(str);
            sb.append("=\"");
            sb.append(str2);
            sb.append(m.a.f72569g);
            return true;
        }
    }

    private String g(String str) {
        String str2;
        if (TextUtils.isEmpty(str) || !str.contains("alipay_exterface_invoke_assign_sign")) {
            str2 = str;
        } else {
            str2 = str.replace("alipay_exterface_invoke_assign_sign=" + j.e("alipay_exterface_invoke_assign_sign=", m.a.f72566d, str), "").replace("sdk_start_time\\\":" + j.e("sdk_start_time\\\":", "\\\"", str), "");
        }
        String a4 = new m.a(this.f9579a).a(str);
        synchronized (f9578h) {
            if (!TextUtils.isEmpty(f9578h.get(str2))) {
                i a5 = i.a(i.DOUBLE_REQUEST.a());
                return h.b(a5.a(), a5.b(), "");
            }
            f9578h.put(str2, "true");
            if (a4.contains("paymethod=\"expressGateway\"")) {
                String i2 = i(a4);
                f9578h.remove(str2);
                return i2;
            } else if (j.l(this.f9579a)) {
                com.alipay.sdk.util.f fVar = new com.alipay.sdk.util.f(this.f9579a, new g(this));
                String c4 = fVar.c(a4);
                fVar.e();
                if (TextUtils.equals(c4, com.alipay.sdk.util.f.f9840h)) {
                    String i4 = i(a4);
                    f9578h.remove(str2);
                    return i4;
                } else if (TextUtils.isEmpty(c4)) {
                    String a6 = h.a();
                    f9578h.remove(str2);
                    return a6;
                } else {
                    f9578h.remove(str2);
                    return c4;
                }
            } else {
                String i5 = i(a4);
                f9578h.remove(str2);
                return i5;
            }
        }
    }

    private void h() {
        com.alipay.sdk.widget.a aVar = this.f9580b;
        if (aVar != null) {
            aVar.c();
        }
    }

    private String i(String str) {
        i iVar;
        h();
        try {
            try {
                List<com.alipay.sdk.protocol.b> b4 = com.alipay.sdk.protocol.b.b(new com.alipay.sdk.packet.impl.d().b(this.f9579a, str).a().optJSONObject(com.alipay.sdk.cons.c.f9728c).optJSONObject(com.alipay.sdk.cons.c.f9729d));
                for (int i2 = 0; i2 < b4.size(); i2++) {
                    if (b4.get(i2).f9810a == com.alipay.sdk.protocol.a.Update) {
                        String[] strArr = b4.get(i2).f9812c;
                        if (strArr.length == 3 && TextUtils.equals(com.alipay.sdk.cons.b.f9718c, strArr[0])) {
                            Context context = m.b.b().f72580a;
                            n.b a4 = n.b.a();
                            if (!TextUtils.isEmpty(strArr[1]) && !TextUtils.isEmpty(strArr[2])) {
                                a4.f72750a = strArr[1];
                                a4.f72751b = strArr[2];
                                n.a aVar = new n.a(context);
                                try {
                                    aVar.h(com.alipay.sdk.util.b.a(context).b(), com.alipay.sdk.util.b.a(context).e(), a4.f72750a, a4.f72751b);
                                } catch (Exception unused) {
                                } catch (Throwable th) {
                                    aVar.close();
                                    throw th;
                                }
                                aVar.close();
                            }
                        }
                    }
                }
                j();
                for (int i4 = 0; i4 < b4.size(); i4++) {
                    if (b4.get(i4).f9810a == com.alipay.sdk.protocol.a.WapPay) {
                        String b5 = b(b4.get(i4));
                        j();
                        return b5;
                    }
                }
                j();
                iVar = null;
            } catch (IOException e4) {
                i a5 = i.a(i.NETWORK_ERROR.a());
                com.alipay.sdk.app.statistic.a.e(com.alipay.sdk.app.statistic.c.f9616k, e4);
                j();
                iVar = a5;
            }
            if (iVar == null) {
                iVar = i.a(i.FAILED.a());
            }
            return h.b(iVar.a(), iVar.b(), "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        com.alipay.sdk.widget.a aVar = this.f9580b;
        if (aVar != null) {
            aVar.f();
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:64:0x02ea
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public synchronized java.lang.String fetchOrderInfoFromH5PayUrl(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 749
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.app.PayTask.fetchOrderInfoFromH5PayUrl(java.lang.String):java.lang.String");
    }

    public String getVersion() {
        return "15.0.8";
    }

    public synchronized com.alipay.sdk.util.a h5Pay(String str, boolean z3) {
        com.alipay.sdk.util.a aVar = new com.alipay.sdk.util.a();
        try {
            str.trim();
            String[] split = pay(str, z3).split(";");
            HashMap hashMap = new HashMap();
            for (String str2 : split) {
                String substring = str2.substring(0, str2.indexOf("={"));
                String str3 = substring + "={";
                hashMap.put(substring, str2.substring(str2.indexOf(str3) + str3.length(), str2.lastIndexOf("}")));
            }
            if (hashMap.containsKey("resultStatus")) {
                aVar.c((String) hashMap.get("resultStatus"));
            }
            if (hashMap.containsKey("callBackUrl")) {
                aVar.d((String) hashMap.get("callBackUrl"));
            } else if (hashMap.containsKey("result")) {
                String str4 = (String) hashMap.get("result");
                if (str4.length() > 15) {
                    a aVar2 = this.f9584f.get(str);
                    if (aVar2 != null) {
                        if (TextUtils.isEmpty(aVar2.f9586b)) {
                            aVar.d(aVar2.f9585a);
                        } else {
                            aVar.d(com.alipay.sdk.data.a.f().f9750b.replace("$OrderId$", aVar2.f9586b));
                        }
                        this.f9584f.remove(str);
                        return aVar;
                    }
                    String e4 = j.e("&callBackUrl=\"", m.a.f72569g, str4);
                    if (TextUtils.isEmpty(e4)) {
                        e4 = j.e("&call_back_url=\"", m.a.f72569g, str4);
                        if (TextUtils.isEmpty(e4)) {
                            e4 = j.e("&return_url=\"", m.a.f72569g, str4);
                            if (TextUtils.isEmpty(e4)) {
                                e4 = URLDecoder.decode(j.e("&return_url=", m.a.f72566d, str4), "utf-8");
                                if (TextUtils.isEmpty(e4)) {
                                    e4 = URLDecoder.decode(j.e("&callBackUrl=", m.a.f72566d, str4), "utf-8");
                                }
                            }
                        }
                    }
                    if (TextUtils.isEmpty(e4)) {
                        e4 = com.alipay.sdk.data.a.f().f9750b;
                    }
                    aVar.d(URLDecoder.decode(e4, "utf-8"));
                } else {
                    a aVar3 = this.f9584f.get(str);
                    if (aVar3 != null) {
                        aVar.d(aVar3.f9585a);
                        this.f9584f.remove(str);
                        return aVar;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return aVar;
    }

    public synchronized String pay(String str, boolean z3) {
        String g4;
        if (z3) {
            h();
        }
        g4 = g(str);
        com.alipay.sdk.data.a.f().b(this.f9579a);
        j();
        com.alipay.sdk.app.statistic.a.b(this.f9579a, str);
        return g4;
    }

    /* loaded from: classes2.dex */
    private class a {

        /* renamed from: a  reason: collision with root package name */
        String f9585a;

        /* renamed from: b  reason: collision with root package name */
        String f9586b;

        private a() {
            this.f9585a = "";
            this.f9586b = "";
        }

        private String a() {
            return this.f9585a;
        }

        private void b(String str) {
            this.f9585a = str;
        }

        private String c() {
            return this.f9586b;
        }

        private void d(String str) {
            this.f9586b = str;
        }

        /* synthetic */ a(PayTask payTask, byte b4) {
            this();
        }
    }
}
