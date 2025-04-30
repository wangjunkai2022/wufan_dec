package cn.com.chinatelecom.account.api.d;

import android.content.Context;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.CtAuth;
import cn.com.chinatelecom.account.api.e.j;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class b extends f {

    /* renamed from: b  reason: collision with root package name */
    private static final String f8580b = "b";

    public b(Context context) {
        super(context);
    }

    @Override // cn.com.chinatelecom.account.api.d.e
    public h a(String str, String str2, int i2, g gVar) {
        return a(str) ? b(str, str2, i2, gVar) : c(str, str2, i2, gVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x030e A[Catch: IOException -> 0x0178, TRY_ENTER, TryCatch #1 {IOException -> 0x0178, blocks: (B:59:0x0174, B:63:0x017c, B:82:0x020a, B:84:0x020f, B:94:0x028c, B:96:0x0291, B:106:0x030e, B:108:0x0313, B:118:0x0392, B:120:0x0397), top: B:134:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0313 A[Catch: IOException -> 0x0178, TRY_LEAVE, TryCatch #1 {IOException -> 0x0178, blocks: (B:59:0x0174, B:63:0x017c, B:82:0x020a, B:84:0x020f, B:94:0x028c, B:96:0x0291, B:106:0x030e, B:108:0x0313, B:118:0x0392, B:120:0x0397), top: B:134:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0392 A[Catch: IOException -> 0x0178, TRY_ENTER, TryCatch #1 {IOException -> 0x0178, blocks: (B:59:0x0174, B:63:0x017c, B:82:0x020a, B:84:0x020f, B:94:0x028c, B:96:0x0291, B:106:0x030e, B:108:0x0313, B:118:0x0392, B:120:0x0397), top: B:134:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0397 A[Catch: IOException -> 0x0178, TRY_LEAVE, TryCatch #1 {IOException -> 0x0178, blocks: (B:59:0x0174, B:63:0x017c, B:82:0x020a, B:84:0x020f, B:94:0x028c, B:96:0x0291, B:106:0x030e, B:108:0x0313, B:118:0x0392, B:120:0x0397), top: B:134:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x020a A[Catch: IOException -> 0x0178, TRY_ENTER, TryCatch #1 {IOException -> 0x0178, blocks: (B:59:0x0174, B:63:0x017c, B:82:0x020a, B:84:0x020f, B:94:0x028c, B:96:0x0291, B:106:0x030e, B:108:0x0313, B:118:0x0392, B:120:0x0397), top: B:134:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x020f A[Catch: IOException -> 0x0178, TRY_LEAVE, TryCatch #1 {IOException -> 0x0178, blocks: (B:59:0x0174, B:63:0x017c, B:82:0x020a, B:84:0x020f, B:94:0x028c, B:96:0x0291, B:106:0x030e, B:108:0x0313, B:118:0x0392, B:120:0x0397), top: B:134:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x028c A[Catch: IOException -> 0x0178, TRY_ENTER, TryCatch #1 {IOException -> 0x0178, blocks: (B:59:0x0174, B:63:0x017c, B:82:0x020a, B:84:0x020f, B:94:0x028c, B:96:0x0291, B:106:0x030e, B:108:0x0313, B:118:0x0392, B:120:0x0397), top: B:134:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0291 A[Catch: IOException -> 0x0178, TRY_LEAVE, TryCatch #1 {IOException -> 0x0178, blocks: (B:59:0x0174, B:63:0x017c, B:82:0x020a, B:84:0x020f, B:94:0x028c, B:96:0x0291, B:106:0x030e, B:108:0x0313, B:118:0x0392, B:120:0x0397), top: B:134:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public cn.com.chinatelecom.account.api.d.h b(java.lang.String r10, java.lang.String r11, int r12, cn.com.chinatelecom.account.api.d.g r13) {
        /*
            Method dump skipped, instructions count: 944
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.com.chinatelecom.account.api.d.b.b(java.lang.String, java.lang.String, int, cn.com.chinatelecom.account.api.d.g):cn.com.chinatelecom.account.api.d.h");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r10v25, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r10v8, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.io.InputStream] */
    public h c(String str, String str2, int i2, g gVar) {
        InputStream inputStream;
        h hVar = new h();
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    HttpURLConnection d4 = d(str, str2, i2, gVar);
                    int responseCode = d4.getResponseCode();
                    int i4 = 0;
                    if (responseCode == 200) {
                        str2 = d4.getInputStream();
                        try {
                            StringBuilder sb = new StringBuilder();
                            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(str2));
                            while (true) {
                                try {
                                    String readLine = bufferedReader2.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    sb.append(readLine);
                                    sb.append("\n");
                                } catch (SocketTimeoutException e4) {
                                    e = e4;
                                    bufferedReader = bufferedReader2;
                                    hVar.f8615b = j.a(80005, cn.com.chinatelecom.account.api.a.d.a(j.f8673f) + "-" + gVar.f8594c + "-" + e.getMessage());
                                    CtAuth.warn(f8580b, "SocketTimeoutException-" + gVar.f8594c + "-" + e.getMessage(), e);
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("SocketTimeoutException ：");
                                    sb2.append(e.getMessage());
                                    cn.com.chinatelecom.account.api.e.f.a(gVar.f8595d, hVar.f8615b, sb2.toString());
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (str2 != 0) {
                                        str2.close();
                                    }
                                    return hVar;
                                } catch (UnknownHostException e5) {
                                    e = e5;
                                    bufferedReader = bufferedReader2;
                                    hVar.f8615b = j.a(80006, cn.com.chinatelecom.account.api.a.d.a(j.f8674g) + "-" + gVar.f8594c + "-" + e.getMessage());
                                    CtAuth.warn(f8580b, "UnknownHostException-" + gVar.f8594c + "-" + e.getMessage(), e);
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("UnknownHostException ：");
                                    sb3.append(e.getMessage());
                                    cn.com.chinatelecom.account.api.e.f.a(gVar.f8595d, hVar.f8615b, sb3.toString());
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (str2 != 0) {
                                        str2.close();
                                    }
                                    return hVar;
                                } catch (IOException e6) {
                                    e = e6;
                                    bufferedReader = bufferedReader2;
                                    hVar.f8615b = j.a(80007, cn.com.chinatelecom.account.api.a.d.a(j.f8675h) + "-" + gVar.f8594c + "-" + e.getMessage());
                                    CtAuth.warn(f8580b, "IOException-" + gVar.f8594c + "-" + e.getMessage(), e);
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("IOException ：");
                                    sb4.append(e.getMessage());
                                    cn.com.chinatelecom.account.api.e.f.a(gVar.f8595d, hVar.f8615b, sb4.toString());
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (str2 != 0) {
                                        str2.close();
                                    }
                                    return hVar;
                                } catch (Throwable th) {
                                    th = th;
                                    bufferedReader = bufferedReader2;
                                    hVar.f8615b = j.a(80001, cn.com.chinatelecom.account.api.a.d.a(j.f8669b) + "-" + gVar.f8594c + "-" + th.getMessage());
                                    CtAuth.warn(f8580b, "Throwable-" + gVar.f8594c + "-" + th.getMessage(), th);
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("Throwable ：");
                                    sb5.append(th.getMessage());
                                    cn.com.chinatelecom.account.api.e.f.a(gVar.f8595d, hVar.f8615b, sb5.toString());
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (str2 != 0) {
                                        str2.close();
                                    }
                                    return hVar;
                                }
                            }
                            hVar.f8614a = 0;
                            String sb6 = sb.toString();
                            if (!TextUtils.isEmpty(sb6)) {
                                JSONObject jSONObject = new JSONObject(sb6);
                                hVar.f8615b = jSONObject;
                                cn.com.chinatelecom.account.api.e.f.a(gVar.f8595d, jSONObject, null);
                            }
                            cn.com.chinatelecom.account.api.e.f.a(gVar.f8595d, hVar.f8615b, null);
                            d a4 = cn.com.chinatelecom.account.api.e.a.a(this.f8591a, d4, true);
                            if (a4 != null) {
                                hVar.f8616c = a4.f8586a;
                                cn.com.chinatelecom.account.api.e.f.a(gVar.f8595d).f(a4.f8588c);
                            }
                            bufferedReader = bufferedReader2;
                            inputStream = str2;
                        } catch (SocketTimeoutException e7) {
                            e = e7;
                        } catch (UnknownHostException e8) {
                            e = e8;
                        } catch (IOException e9) {
                            e = e9;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } else {
                        if (responseCode == 302) {
                            int i5 = gVar.f8593b;
                            if (i5 < 10) {
                                gVar.f8593b = i5 + 1;
                                gVar.f8597f = false;
                                String headerField = d4.getHeaderField("Location");
                                d a5 = cn.com.chinatelecom.account.api.e.a.a(d4);
                                cn.com.chinatelecom.account.api.e.f.a(gVar.f8595d).f(a5.f8588c);
                                if (!TextUtils.isEmpty(a5.f8589d) && !a5.f8589d.equals("0")) {
                                    i4 = 1;
                                }
                                CtAuth.info(f8580b, " method : " + i4);
                                return a(headerField, null, i4, gVar);
                            }
                            JSONObject a6 = j.a(80001, cn.com.chinatelecom.account.api.a.d.a(j.f8669b) + "-Redirect more than 10 times");
                            hVar.f8615b = a6;
                            cn.com.chinatelecom.account.api.e.f.a(gVar.f8595d, a6, "Redirect more than 10 times");
                        } else {
                            hVar.f8615b = j.a(80002, cn.com.chinatelecom.account.api.a.d.a(j.f8670c) + "-" + gVar.f8594c + "-code : " + responseCode);
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append(" Http response code :");
                            sb7.append(responseCode);
                            String sb8 = sb7.toString();
                            cn.com.chinatelecom.account.api.e.f.a(gVar.f8595d, hVar.f8615b, sb8);
                            CtAuth.info(f8580b, sb8);
                        }
                        inputStream = null;
                    }
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
            } catch (SocketTimeoutException e11) {
                e = e11;
                str2 = 0;
            } catch (UnknownHostException e12) {
                e = e12;
                str2 = 0;
            } catch (IOException e13) {
                e = e13;
                str2 = 0;
            } catch (Throwable th3) {
                th = th3;
                str2 = 0;
            }
            return hVar;
        } catch (Throwable th4) {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e14) {
                    e14.printStackTrace();
                    throw th4;
                }
            }
            if (str2 != 0) {
                str2.close();
            }
            throw th4;
        }
    }
}
