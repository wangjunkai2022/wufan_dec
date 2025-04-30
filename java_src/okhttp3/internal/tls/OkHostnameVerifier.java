package okhttp3.internal.tls;

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
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import okhttp3.internal.Util;
/* loaded from: classes5.dex */
public final class OkHostnameVerifier implements HostnameVerifier {
    private static final int ALT_DNS_NAME = 2;
    private static final int ALT_IPA_NAME = 7;
    public static final OkHostnameVerifier INSTANCE = new OkHostnameVerifier();

    private OkHostnameVerifier() {
    }

    public static List<String> allSubjectAltNames(X509Certificate x509Certificate) {
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 7);
        List<String> subjectAltNames2 = getSubjectAltNames(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(subjectAltNames.size() + subjectAltNames2.size());
        arrayList.addAll(subjectAltNames);
        arrayList.addAll(subjectAltNames2);
        return arrayList;
    }

    private static List<String> getSubjectAltNames(X509Certificate x509Certificate, int i2) {
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

    private boolean verifyHostname(String str, X509Certificate x509Certificate) {
        String lowerCase = str.toLowerCase(Locale.US);
        for (String str2 : getSubjectAltNames(x509Certificate, 2)) {
            if (verifyHostname(lowerCase, str2)) {
                return true;
            }
        }
        return false;
    }

    private boolean verifyIpAddress(String str, X509Certificate x509Certificate) {
        List<String> subjectAltNames = getSubjectAltNames(x509Certificate, 7);
        int size = subjectAltNames.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (str.equalsIgnoreCase(subjectAltNames.get(i2))) {
                return true;
            }
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }

    public boolean verify(String str, X509Certificate x509Certificate) {
        if (Util.verifyAsIpAddress(str)) {
            return verifyIpAddress(str, x509Certificate);
        }
        return verifyHostname(str, x509Certificate);
    }

    public boolean verifyHostname(String str, String str2) {
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
