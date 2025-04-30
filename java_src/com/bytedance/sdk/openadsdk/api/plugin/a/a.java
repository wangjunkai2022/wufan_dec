package com.bytedance.sdk.openadsdk.api.plugin.a;

import com.join.mgps.Util.g0;
import external.org.apache.commons.lang3.d;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
/* compiled from: DefaultHostnameVerifier.java */
/* loaded from: classes2.dex */
public final class a implements HostnameVerifier {

    /* renamed from: a  reason: collision with root package name */
    public static final a f10530a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f10531b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    private a() {
    }

    private boolean a(String str, X509Certificate x509Certificate) {
        if (a(str)) {
            return b(str, x509Certificate);
        }
        return c(str, x509Certificate);
    }

    private boolean b(String str, X509Certificate x509Certificate) {
        List<String> a4 = a(x509Certificate, 7);
        int size = a4.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (str.equalsIgnoreCase(a4.get(i2))) {
                return true;
            }
        }
        return false;
    }

    private boolean c(String str, X509Certificate x509Certificate) {
        String a4;
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> a5 = a(x509Certificate, 2);
        int size = a5.size();
        int i2 = 0;
        boolean z3 = false;
        while (i2 < size) {
            if (a(lowerCase, a5.get(i2))) {
                return true;
            }
            i2++;
            z3 = true;
        }
        if (z3 || (a4 = new b(x509Certificate.getSubjectX500Principal()).a("cn")) == null) {
            return false;
        }
        return a(lowerCase, a4);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return a(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }

    private static boolean a(String str) {
        return f10531b.matcher(str).matches();
    }

    private static List<String> a(X509Certificate x509Certificate, int i2) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i2 && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    private boolean a(String str, String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(g0.f27568a) && !str.endsWith("..") && str2 != null && str2.length() != 0 && !str2.startsWith(g0.f27568a) && !str2.endsWith("..")) {
            if (!str.endsWith(g0.f27568a)) {
                str = str + d.f65364a;
            }
            if (!str2.endsWith(g0.f27568a)) {
                str2 = str2 + d.f65364a;
            }
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD)) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
                return false;
            }
            String substring = lowerCase.substring(1);
            if (str.endsWith(substring)) {
                int length = str.length() - substring.length();
                return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
            }
            return false;
        }
        return false;
    }
}
