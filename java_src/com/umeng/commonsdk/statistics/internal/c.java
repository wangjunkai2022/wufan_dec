package com.umeng.commonsdk.statistics.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.facebook.imagepipeline.producers.s;
import com.join.android.app.common.utils.f;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.k;
import com.umeng.analytics.pro.n;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.SdkVersion;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* compiled from: NetworkHelper.java */
/* loaded from: classes4.dex */
public class c {

    /* renamed from: e  reason: collision with root package name */
    private static boolean f61388e;

    /* renamed from: f  reason: collision with root package name */
    private static boolean f61389f;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f61390g;

    /* renamed from: a  reason: collision with root package name */
    private String f61391a = "10.0.0.172";

    /* renamed from: b  reason: collision with root package name */
    private int f61392b = 80;

    /* renamed from: c  reason: collision with root package name */
    private Context f61393c;

    /* renamed from: d  reason: collision with root package name */
    private b f61394d;

    public c(Context context) {
        this.f61393c = context;
    }

    private void b() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.f61393c, "domain_p", "");
        String imprintProperty2 = UMEnvelopeBuild.imprintProperty(this.f61393c, "domain_s", "");
        if (!TextUtils.isEmpty(imprintProperty)) {
            UMServerURL.DEFAULT_URL = DataHelper.assembleURL(imprintProperty);
        }
        if (!TextUtils.isEmpty(imprintProperty2)) {
            UMServerURL.SECONDARY_URL = DataHelper.assembleURL(imprintProperty2);
        }
        String imprintProperty3 = UMEnvelopeBuild.imprintProperty(this.f61393c, "oversea_domain_p", "");
        String imprintProperty4 = UMEnvelopeBuild.imprintProperty(this.f61393c, "oversea_domain_s", "");
        if (!TextUtils.isEmpty(imprintProperty3)) {
            UMServerURL.OVERSEA_DEFAULT_URL = DataHelper.assembleURL(imprintProperty3);
        }
        if (!TextUtils.isEmpty(imprintProperty4)) {
            UMServerURL.OVERSEA_SECONDARY_URL = DataHelper.assembleURL(imprintProperty4);
        }
        AnalyticsConstants.APPLOG_URL_LIST = new String[]{UMServerURL.OVERSEA_DEFAULT_URL, UMServerURL.OVERSEA_SECONDARY_URL};
        if (TextUtils.isEmpty(com.umeng.commonsdk.statistics.b.f61279b)) {
            return;
        }
        if (com.umeng.commonsdk.statistics.b.f61279b.startsWith("460") || com.umeng.commonsdk.statistics.b.f61279b.startsWith("461")) {
            AnalyticsConstants.APPLOG_URL_LIST = new String[]{UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
        }
    }

    private void c() {
        if (f61390g) {
            return;
        }
        ImprintHandler.getImprintService(this.f61393c).registImprintCallback(AnalyticsConstants.CFG_FIELD_KEY, new UMImprintChangeCallback() { // from class: com.umeng.commonsdk.statistics.internal.c.1
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
            public void onImprintValueChanged(String str, String str2) {
                if (FieldManager.b()) {
                    FieldManager.a().a(c.this.f61393c, str2);
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> apply imprint change and exit: key=" + str + "; value= " + str2);
                    UMWorkDispatch.sendEvent(c.this.f61393c, com.umeng.commonsdk.internal.a.f61148w, com.umeng.commonsdk.internal.b.a(c.this.f61393c).a(), null);
                }
            }
        });
        f61390g = true;
    }

    private void d() {
        if (f61389f) {
            return;
        }
        UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 注册零号报文 imprint 应答处理回调。");
        ImprintHandler.getImprintService(this.f61393c).registPreProcessCallback(AnalyticsConstants.ZERO_RESPONSE_FLAG, new UMImprintPreProcessCallback() { // from class: com.umeng.commonsdk.statistics.internal.c.2
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback
            public boolean onPreProcessImprintKey(String str, String str2) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> onImprintValueChanged: key=" + str + "; value= " + str2);
                FieldManager.a().a(c.this.f61393c);
                UMWorkDispatch.sendEvent(c.this.f61393c, com.umeng.commonsdk.internal.a.f61144s, com.umeng.commonsdk.internal.b.a(c.this.f61393c).a(), null);
                ImprintHandler.getImprintService(c.this.f61393c).a(AnalyticsConstants.ZERO_RESPONSE_FLAG);
                return true;
            }
        });
        ImprintHandler.getImprintService(this.f61393c).registImprintCallback(AnalyticsConstants.CFG_FIELD_KEY, new UMImprintChangeCallback() { // from class: com.umeng.commonsdk.statistics.internal.c.3
            @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
            public void onImprintValueChanged(String str, String str2) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> first onImprintValueChanged: key=" + str + "; value= " + str2);
                FieldManager.a().a(c.this.f61393c, str2);
                UMWorkDispatch.sendEvent(c.this.f61393c, com.umeng.commonsdk.internal.a.f61144s, com.umeng.commonsdk.internal.b.a(c.this.f61393c).a(), null);
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.E)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> recv zcfg response: foregound count timer enabled.");
                    if (!UMWorkDispatch.eventHasExist()) {
                        UMWorkDispatch.sendEventEx(c.this.f61393c, n.a.C, CoreProtocol.getInstance(c.this.f61393c), null, 0L);
                    }
                }
                if (FieldManager.allow(com.umeng.commonsdk.utils.b.F)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> recv zcfg response: FirstResumeTrigger enabled.");
                    k.a(c.this.f61393c).b(c.this.f61393c);
                }
                ImprintHandler.getImprintService(c.this.f61393c).unregistImprintCallback(AnalyticsConstants.CFG_FIELD_KEY, this);
            }
        });
        f61389f = true;
    }

    private boolean e() {
        NetworkInfo activeNetworkInfo;
        String extraInfo;
        if (this.f61393c.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f61393c.getPackageName()) != 0) {
            return false;
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.f61393c.getSystemService("connectivity");
            if (DeviceConfig.checkPermission(this.f61393c, "android.permission.ACCESS_NETWORK_STATE") && connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                if (!extraInfo.equals(f.f17228c) && !extraInfo.equals(f.f17229d)) {
                    if (extraInfo.equals(f.f17230e)) {
                    }
                }
                return true;
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(this.f61393c, th);
        }
        return false;
    }

    public void a(b bVar) {
        this.f61394d = bVar;
    }

    private void a() {
        String imprintProperty = UMEnvelopeBuild.imprintProperty(this.f61393c, "domain_p", "");
        String imprintProperty2 = UMEnvelopeBuild.imprintProperty(this.f61393c, "domain_s", "");
        if (!TextUtils.isEmpty(imprintProperty)) {
            UMServerURL.DEFAULT_URL = DataHelper.assembleURL(imprintProperty);
        }
        if (!TextUtils.isEmpty(imprintProperty2)) {
            UMServerURL.SECONDARY_URL = DataHelper.assembleURL(imprintProperty2);
        }
        AnalyticsConstants.APPLOG_URL_LIST = new String[]{UMServerURL.DEFAULT_URL, UMServerURL.SECONDARY_URL};
    }

    public byte[] a(byte[] bArr, boolean z3, boolean z4, String str) {
        if (SdkVersion.SDK_TYPE == 0) {
            a();
        } else {
            UMServerURL.DEFAULT_URL = UMServerURL.OVERSEA_DEFAULT_URL;
            UMServerURL.SECONDARY_URL = UMServerURL.OVERSEA_SECONDARY_URL;
            b();
        }
        int i2 = 0;
        byte[] bArr2 = null;
        while (true) {
            String[] strArr = AnalyticsConstants.APPLOG_URL_LIST;
            if (i2 >= strArr.length) {
                break;
            }
            String str2 = strArr[i2];
            if (z4) {
                d();
            } else {
                c();
            }
            bArr2 = a(bArr, str2 + File.separator + str);
            if (bArr2 != null) {
                b bVar = this.f61394d;
                if (bVar != null) {
                    bVar.onRequestSucceed(z3);
                }
            } else {
                b bVar2 = this.f61394d;
                if (bVar2 != null) {
                    bVar2.onRequestFailed();
                }
                i2++;
            }
        }
        return bArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x017b: IF  (r6 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:88:0x0187, block:B:83:0x017b */
    public byte[] a(byte[] bArr, String str) {
        HttpsURLConnection httpsURLConnection;
        OutputStream outputStream;
        OutputStream outputStream2;
        try {
            try {
                b bVar = this.f61394d;
                if (bVar != null) {
                    bVar.onRequestStart();
                }
                if (e()) {
                    httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.f61391a, this.f61392b)));
                } else {
                    httpsURLConnection = (HttpsURLConnection) new URL(str).openConnection();
                }
                try {
                    boolean z3 = true;
                    if (!f61388e) {
                        httpsURLConnection.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                        SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
                        sSLContext.init(null, null, new SecureRandom());
                        httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
                        f61388e = true;
                    }
                    httpsURLConnection.setRequestProperty("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
                    httpsURLConnection.setRequestProperty("X-Umeng-Sdk", a.a(this.f61393c).b());
                    httpsURLConnection.setRequestProperty("Content-Type", a.a(this.f61393c).a());
                    httpsURLConnection.setRequestProperty("Msg-Type", "envelope/json");
                    httpsURLConnection.setRequestProperty("X-Umeng-Pro-Ver", "1.0.0");
                    httpsURLConnection.setConnectTimeout(s.f13217g);
                    httpsURLConnection.setReadTimeout(s.f13217g);
                    httpsURLConnection.setRequestMethod("POST");
                    httpsURLConnection.setDoOutput(true);
                    httpsURLConnection.setDoInput(true);
                    httpsURLConnection.setUseCaches(false);
                    outputStream = httpsURLConnection.getOutputStream();
                    try {
                        outputStream.write(bArr);
                        outputStream.flush();
                        httpsURLConnection.connect();
                        b bVar2 = this.f61394d;
                        if (bVar2 != null) {
                            bVar2.onRequestEnd();
                        }
                        int responseCode = httpsURLConnection.getResponseCode();
                        String headerField = httpsURLConnection.getHeaderField("Content-Type");
                        if (TextUtils.isEmpty(headerField) || !headerField.equalsIgnoreCase("application/thrift")) {
                            z3 = false;
                        }
                        boolean z4 = AnalyticsConstants.UM_DEBUG;
                        if (responseCode == 200 && z3) {
                            InputStream inputStream = httpsURLConnection.getInputStream();
                            try {
                                byte[] readStreamToByteArray = HelperUtils.readStreamToByteArray(inputStream);
                                try {
                                    outputStream.close();
                                } catch (Exception e4) {
                                    UMCrashManager.reportCrash(this.f61393c, e4);
                                }
                                try {
                                    httpsURLConnection.getInputStream().close();
                                } catch (IOException unused) {
                                }
                                httpsURLConnection.disconnect();
                                return readStreamToByteArray;
                            } finally {
                                HelperUtils.safeClose(inputStream);
                            }
                        }
                        try {
                            outputStream.close();
                        } catch (Exception e5) {
                            UMCrashManager.reportCrash(this.f61393c, e5);
                        }
                        try {
                            httpsURLConnection.getInputStream().close();
                        } catch (IOException unused2) {
                        }
                        httpsURLConnection.disconnect();
                        return null;
                    } catch (UnknownHostException unused3) {
                        UMLog.aq("A_10200", 2, "\\|");
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception e6) {
                                UMCrashManager.reportCrash(this.f61393c, e6);
                            }
                        }
                        if (httpsURLConnection != null) {
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (IOException unused4) {
                            }
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    } catch (SSLHandshakeException unused5) {
                        UMLog.aq("A_10201", 2, "\\|");
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception e7) {
                                UMCrashManager.reportCrash(this.f61393c, e7);
                            }
                        }
                        if (httpsURLConnection != null) {
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (IOException unused6) {
                            }
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    } catch (Throwable unused7) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Exception e8) {
                                UMCrashManager.reportCrash(this.f61393c, e8);
                            }
                        }
                        if (httpsURLConnection != null) {
                            try {
                                httpsURLConnection.getInputStream().close();
                            } catch (IOException unused8) {
                            }
                            httpsURLConnection.disconnect();
                        }
                        return null;
                    }
                } catch (UnknownHostException unused9) {
                    outputStream = null;
                } catch (SSLHandshakeException unused10) {
                    outputStream = null;
                } catch (Throwable unused11) {
                    outputStream = null;
                }
            } catch (Throwable th) {
                if (outputStream2 != null) {
                    try {
                        outputStream2.close();
                    } catch (Exception e9) {
                        UMCrashManager.reportCrash(this.f61393c, e9);
                    }
                }
                if (str != 0) {
                    try {
                        str.getInputStream().close();
                    } catch (IOException unused12) {
                    }
                    str.disconnect();
                }
                throw th;
            }
        } catch (UnknownHostException unused13) {
            httpsURLConnection = null;
            outputStream = null;
        } catch (SSLHandshakeException unused14) {
            httpsURLConnection = null;
            outputStream = null;
        } catch (Throwable unused15) {
            httpsURLConnection = null;
            outputStream = null;
        }
    }
}
