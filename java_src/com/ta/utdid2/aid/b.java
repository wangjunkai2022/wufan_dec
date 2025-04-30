package com.ta.utdid2.aid;

import android.content.Context;
import android.text.TextUtils;
import com.ta.utdid2.android.utils.d;
import com.ta.utdid2.android.utils.f;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static final String f59096c = "com.ta.utdid2.aid.b";

    /* renamed from: d  reason: collision with root package name */
    private static final String f59097d = "http://hydra.alibaba.com/";

    /* renamed from: e  reason: collision with root package name */
    private static final String f59098e = "/get_aid/";

    /* renamed from: f  reason: collision with root package name */
    private static final String f59099f = "auth[token]=";

    /* renamed from: g  reason: collision with root package name */
    private static final String f59100g = "&type=";

    /* renamed from: h  reason: collision with root package name */
    private static final String f59101h = "&id=";

    /* renamed from: i  reason: collision with root package name */
    private static final String f59102i = "&aid=";

    /* renamed from: j  reason: collision with root package name */
    private static final String f59103j = "data";

    /* renamed from: k  reason: collision with root package name */
    private static final String f59104k = "aid";

    /* renamed from: l  reason: collision with root package name */
    private static final String f59105l = "action";

    /* renamed from: m  reason: collision with root package name */
    private static final String f59106m = "isError";

    /* renamed from: n  reason: collision with root package name */
    private static final String f59107n = "status";

    /* renamed from: o  reason: collision with root package name */
    private static final String f59108o = "utdid";

    /* renamed from: p  reason: collision with root package name */
    private static final String f59109p = "new";

    /* renamed from: q  reason: collision with root package name */
    private static final String f59110q = "changed";

    /* renamed from: r  reason: collision with root package name */
    private static final String f59111r = "unchanged";

    /* renamed from: s  reason: collision with root package name */
    private static final String f59112s = "true";

    /* renamed from: t  reason: collision with root package name */
    private static final String f59113t = "false";

    /* renamed from: u  reason: collision with root package name */
    private static final String f59114u = "200";

    /* renamed from: v  reason: collision with root package name */
    private static final String f59115v = "404";

    /* renamed from: w  reason: collision with root package name */
    private static final String f59116w = "401";

    /* renamed from: x  reason: collision with root package name */
    private static final int f59117x = 1000;

    /* renamed from: y  reason: collision with root package name */
    private static final int f59118y = 3000;

    /* renamed from: z  reason: collision with root package name */
    private static b f59119z;

    /* renamed from: a  reason: collision with root package name */
    private Context f59120a;

    /* renamed from: b  reason: collision with root package name */
    private Object f59121b = new Object();

    public b(Context context) {
        this.f59120a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String e(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("data")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                if (jSONObject2.has("action") && jSONObject2.has("aid")) {
                    String string = jSONObject2.getString("action");
                    return (string.equalsIgnoreCase(f59109p) || string.equalsIgnoreCase(f59110q)) ? jSONObject2.getString("aid") : str2;
                }
                return str2;
            } else if (jSONObject.has(f59106m) && jSONObject.has("status")) {
                String string2 = jSONObject.getString(f59106m);
                String string3 = jSONObject.getString("status");
                if (string2.equalsIgnoreCase(f59112s)) {
                    if (string3.equalsIgnoreCase(f59115v) || string3.equalsIgnoreCase(f59116w)) {
                        if (d.f59161b) {
                            new StringBuilder("remove the AID, status:").append(string3);
                        }
                        return "";
                    }
                    return str2;
                }
                return str2;
            } else {
                return str2;
            }
        } catch (JSONException e4) {
            e4.toString();
            return str2;
        } catch (Exception e5) {
            e5.toString();
            return str2;
        }
    }

    public static synchronized b f(Context context) {
        b bVar;
        synchronized (b.class) {
            if (f59119z == null) {
                f59119z = new b(context);
            }
            bVar = f59119z;
        }
        return bVar;
    }

    private static String g(String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        try {
            str3 = URLEncoder.encode(str3, "UTF-8");
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
        }
        sb.append(f59097d);
        sb.append(str);
        sb.append("/get_aid/?auth[token]=");
        sb.append(str2);
        sb.append("&type=utdid&id=");
        sb.append(str3);
        sb.append(f59102i);
        sb.append(str4);
        return sb.toString();
    }

    public String h(String str, String str2, String str3, String str4) {
        String g4 = g(str, str2, str3, str4);
        int i2 = f.g(this.f59120a) ? 3000 : 1000;
        if (d.f59161b) {
            StringBuilder sb = new StringBuilder("url:");
            sb.append(g4);
            sb.append("; timeout:");
            sb.append(i2);
        }
        a aVar = new a(new HttpPost(g4));
        aVar.start();
        try {
            synchronized (this.f59121b) {
                this.f59121b.wait(i2);
            }
        } catch (Exception e4) {
            e4.toString();
        }
        String a4 = aVar.a();
        if (d.f59161b) {
            new StringBuilder("mLine:").append(a4);
        }
        return e(a4, str4);
    }

    public void i(String str, String str2, String str3, String str4, j2.a aVar) {
        String g4 = g(str, str2, str3, str4);
        if (d.f59161b) {
            StringBuilder sb = new StringBuilder("url:");
            sb.append(g4);
            sb.append("; len:");
            sb.append(g4.length());
        }
        new a(new HttpPost(g4), aVar, str4, str, str2).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        HttpPost f59122a;

        /* renamed from: b  reason: collision with root package name */
        String f59123b;

        /* renamed from: c  reason: collision with root package name */
        j2.a f59124c;

        /* renamed from: d  reason: collision with root package name */
        String f59125d;

        /* renamed from: e  reason: collision with root package name */
        String f59126e;

        /* renamed from: f  reason: collision with root package name */
        String f59127f;

        public a(HttpPost httpPost) {
            this.f59123b = "";
            this.f59127f = "";
            this.f59122a = httpPost;
        }

        public String a() {
            return this.f59123b;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0055 -> B:56:0x005b). Please submit an issue!!! */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            HttpResponse httpResponse;
            j2.a aVar = this.f59124c;
            if (aVar != null) {
                aVar.a(1000, this.f59125d);
            }
            BufferedReader bufferedReader = null;
            try {
                httpResponse = new DefaultHttpClient().execute(this.f59122a);
            } catch (Exception e4) {
                j2.a aVar2 = this.f59124c;
                if (aVar2 != null) {
                    aVar2.a(1002, this.f59125d);
                }
                String unused = b.f59096c;
                e4.toString();
                httpResponse = null;
            }
            try {
                if (httpResponse == null) {
                    String unused2 = b.f59096c;
                } else {
                    bufferedReader = new BufferedReader(new InputStreamReader(httpResponse.getEntity().getContent(), Charset.forName("UTF-8")));
                }
            } catch (Exception e5) {
                j2.a aVar3 = this.f59124c;
                if (aVar3 != null) {
                    aVar3.a(1002, this.f59125d);
                }
                String unused3 = b.f59096c;
                e5.toString();
            }
            try {
                if (bufferedReader != null) {
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        if (d.f59161b) {
                            String unused4 = b.f59096c;
                        }
                        this.f59123b = readLine;
                    }
                } else {
                    String unused5 = b.f59096c;
                }
            } catch (Exception e6) {
                j2.a aVar4 = this.f59124c;
                if (aVar4 != null) {
                    aVar4.a(1002, this.f59125d);
                }
                String unused6 = b.f59096c;
                e6.toString();
            }
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                    if (d.f59161b) {
                        String unused7 = b.f59096c;
                    }
                } catch (IOException e7) {
                    String unused8 = b.f59096c;
                    e7.toString();
                }
            }
            if (this.f59124c == null) {
                synchronized (b.this.f59121b) {
                    b.this.f59121b.notifyAll();
                }
                return;
            }
            String e8 = b.e(this.f59123b, this.f59125d);
            this.f59124c.a(1001, e8);
            c.d(b.this.f59120a, this.f59126e, e8, this.f59127f);
        }

        public a(HttpPost httpPost, j2.a aVar, String str, String str2, String str3) {
            this.f59123b = "";
            this.f59127f = "";
            this.f59122a = httpPost;
            this.f59124c = aVar;
            this.f59125d = str;
            this.f59126e = str2;
            this.f59127f = str3;
        }
    }
}
