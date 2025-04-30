package com.heepay.plugin.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Xml;
import com.heepay.plugin.domain.g;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.tencent.bugly.Bugly;
import com.umeng.analytics.pro.ai;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.PublicKey;
import java.util.Date;
import javax.net.ssl.HttpsURLConnection;
import net.lingala.zip4j.util.e;
import org.json.JSONObject;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static String f16648a;

    /* renamed from: d  reason: collision with root package name */
    protected static final String f16649d = "<?x*m*l ve*r*si*on=\"1.0\" enc*o*d*i*n*g=\"u*tf*-*8\"?>".replaceAll("\\*", "");

    /* renamed from: e  reason: collision with root package name */
    protected static final String f16650e = "<so*a*p1*2:En*vel*ope ".replaceAll("\\*", "") + "xm*ln*s:xs*i=\"h*tt*p:/*/w*w*w.w*3.o*rg/20*01/X*MLS*che*ma-i*nst*ance\" ".replaceAll("\\*", "") + "x*ml*ns:xs*d=\"ht*tp:*/*/w*w*w.w*3.o*r*g/2*001/XM*LSc*hema\" ".replaceAll("\\*", "") + "xm*ln*s:s*oa*p1*2=\"h*tt*p*:*/*/w*ww.w*3.o*rg/2*003/05/so*ap-envelope\">".replaceAll("\\*", "");

    /* renamed from: f  reason: collision with root package name */
    protected static final String f16651f = "</so*ap12:En*velope>".replaceAll("\\*", "");

    /* renamed from: g  reason: collision with root package name */
    protected static final String f16652g = "<soa*p12:Bo*dy>".replaceAll("\\*", "");

    /* renamed from: h  reason: collision with root package name */
    protected static final String f16653h = "</soap*12:B*ody>".replaceAll("\\*", "");

    /* renamed from: b  reason: collision with root package name */
    protected String f16654b = "";

    /* renamed from: c  reason: collision with root package name */
    protected String f16655c = e.F0;

    /* renamed from: i  reason: collision with root package name */
    protected String f16656i = "";

    /* renamed from: j  reason: collision with root package name */
    protected String f16657j = null;

    /* renamed from: k  reason: collision with root package name */
    protected PublicKey f16658k = null;

    /* renamed from: l  reason: collision with root package name */
    protected String f16659l = null;

    /* renamed from: m  reason: collision with root package name */
    protected int f16660m;

    public static int a(JSONObject jSONObject, String str, int i2) {
        try {
            if (jSONObject.has(str)) {
                return jSONObject.getInt(str);
            }
        } catch (Exception unused) {
        }
        return i2;
    }

    public static String a(JSONObject jSONObject, String str) {
        try {
            if (jSONObject.has(str)) {
                return jSONObject.getString(str);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private void a(String str, InputStreamReader inputStreamReader, g gVar) {
        StringBuffer stringBuffer = new StringBuffer();
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(inputStreamReader);
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            if (eventType == 2) {
                String name = newPullParser.getName();
                if (name.equals("HasError")) {
                    gVar.f16833b = !newPullParser.nextText().equalsIgnoreCase(Bugly.SDK_IS_DEV);
                } else if (name.equals("Message")) {
                    gVar.f16834c = newPullParser.nextText();
                } else if (name.equals("ErrorCode")) {
                    gVar.f16835d = newPullParser.nextText();
                } else if (name.equals("ReturnValue")) {
                    gVar.f16836e = newPullParser.nextText();
                } else if (name.equals("ReturnStatus")) {
                    gVar.f16845n = Integer.valueOf(newPullParser.nextText()).intValue();
                } else if (name.equals("ExtValue1")) {
                    gVar.f16837f = newPullParser.nextText();
                } else if (name.equals("ExtValue2")) {
                    gVar.f16838g = newPullParser.nextText();
                } else if (name.equals("ExtValue3")) {
                    gVar.f16839h = newPullParser.nextText();
                } else if (name.equals("ExtValue4")) {
                    gVar.f16840i = newPullParser.nextText();
                } else if (name.equals("ExtValue5")) {
                    gVar.f16841j = newPullParser.nextText();
                } else if (name.equals("ExtValue6")) {
                    gVar.f16842k = newPullParser.nextText();
                } else if (name.equals("ExtValue7")) {
                    gVar.f16843l = newPullParser.nextText();
                } else if (name.equals("ExtValue8")) {
                    gVar.f16844m = newPullParser.nextText();
                }
            } else if (eventType == 3) {
            }
        }
        if (stringBuffer.length() > 0) {
            com.heepay.plugin.c.c.b("RunWebService", str + " recv message: " + stringBuffer.toString());
        }
    }

    public String a() {
        return this.f16654b;
    }

    public String a(String str) {
        int indexOf = str.indexOf(46);
        if (indexOf >= 0) {
            String substring = str.substring(0, indexOf);
            return a() + e.F0 + substring + ".asmx";
        }
        return "";
    }

    protected abstract String a(String str, String str2, String str3, boolean z3);

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(PublicKey publicKey, String str) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("40*896*789*8D*DC*4*5*9*5AC*5*BC*33**2D*4E*C*A***0*A0".replaceAll("\\*", ""));
            sb.append(str.length() > 32 ? str.substring(0, 32) : str);
            String b4 = b(sb.toString());
            String a4 = d.a(d.a(publicKey, b4));
            String a5 = d.a(d.a(b4.getBytes(), b4.substring(0, 8).getBytes(), str.getBytes()));
            com.heepay.plugin.c.c.b("WebService", "RsaEncryptParam(" + str + ")=Z" + a4 + ai.aB + a5);
            return "Z" + a4 + ai.aB + a5;
        } catch (Exception e4) {
            com.heepay.plugin.c.b.a(e4, "EncryptParam");
            return "";
        }
    }

    public void a(int i2) {
        this.f16660m = i2;
    }

    protected void a(String str, String str2, g gVar) {
    }

    public boolean a(Context context) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g b(String str, String str2, String str3, boolean z3) {
        return c(str, str2, str3, z3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b() {
        return Long.toString(System.currentTimeMillis());
    }

    protected String b(String str) {
        Date date = new Date();
        return d.a(str + date.toLocaleString() + "D*C*5*11*D*B99*9BC*48*4F*89*BC*565A*A0E*040*98".replaceAll("\\*", "")).substring(0, 24);
    }

    @SuppressLint({"TrulyRandom"})
    protected g c(String str, String str2, String str3, boolean z3) {
        int indexOf;
        int i2;
        int indexOf2;
        com.heepay.plugin.c.c.b("RunWebService", "param is: " + str3 + ", timestamp is:" + str2);
        int indexOf3 = str.indexOf(46);
        String a4 = a(indexOf3 >= 0 ? str.substring(indexOf3 + 1) : str, str3, str2, z3);
        String a5 = a(str);
        if (a5 == null || a5.length() == 0) {
            return new g(true, "", "没有实现的方法");
        }
        g gVar = new g();
        gVar.f16833b = false;
        com.heepay.plugin.c.c.b("RunWebService", "Sent message to " + a5 + " is: " + a4);
        try {
            URL url = new URL(a5);
            byte[] bytes = a4.getBytes("UTF-8");
            HttpURLConnection httpURLConnection = a5.startsWith("h*t*t*p*s*:*".replaceAll("\\*", "")) ? (HttpsURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection();
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Type", "a*p*p*l*i*c*a*tio*n/so*ap*+xm*l; cha*rse*t=*ut*f-*8".replaceAll("\\*", ""));
            String str4 = f16648a;
            if (str4 != null && str4.length() > 0) {
                com.heepay.plugin.c.c.b("RunWebService", " AspNetSessionId != null, AspNetSessionId=" + f16648a);
                httpURLConnection.setRequestProperty(HttpHeaders.Names.COOKIE, "ASP.NET_SessionId=" + f16648a);
            }
            httpURLConnection.setConnectTimeout(20000);
            httpURLConnection.setReadTimeout(18000);
            httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bytes.length));
            httpURLConnection.connect();
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(bytes);
            outputStream.flush();
            outputStream.close();
            com.heepay.plugin.c.d.a("----->", str + " begin to get input stream from " + a5);
            com.heepay.plugin.c.c.b("RunWebService", str + " begin to get input stream from " + a5);
            InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
            String headerField = httpURLConnection.getHeaderField(HttpHeaders.Names.SET_COOKIE);
            int responseCode = httpURLConnection.getResponseCode();
            com.heepay.plugin.c.c.b("------ResponseCode", responseCode + "--");
            if (headerField != null && (indexOf = headerField.indexOf("ASP.NET_SessionId")) >= 0 && (indexOf2 = headerField.indexOf(61, (i2 = indexOf + 17))) > 0) {
                int indexOf4 = headerField.indexOf(59, i2);
                f16648a = indexOf4 > indexOf2 ? headerField.substring(indexOf2 + 1, indexOf4).trim() : headerField.substring(indexOf2 + 1).trim();
            }
            a(str, inputStreamReader, gVar);
            a(str, str2, gVar);
        } catch (Exception e4) {
            if ((e4 instanceof SocketTimeoutException) || (e4 instanceof UnknownHostException) || (e4 instanceof ConnectException)) {
                gVar.f16832a = e4;
            }
            gVar.f16833b = true;
            gVar.f16834c = "连接服务器出错，原因：" + e4.getMessage();
            com.heepay.plugin.c.b.a(e4, "RunWebService");
        }
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String c(String str) {
        return str.replaceAll(m.a.f72566d, "&amp;").replaceAll(SimpleComparison.LESS_THAN_OPERATION, "&lt;").replaceAll(SimpleComparison.GREATER_THAN_OPERATION, "&gt;");
    }
}
