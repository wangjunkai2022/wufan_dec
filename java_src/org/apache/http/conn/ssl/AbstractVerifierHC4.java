package org.apache.http.conn.ssl;

import com.alipay.sdk.app.statistic.c;
import com.join.mgps.activity.PapayPayDetialActivity_;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import kotlin.text.Typography;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.util.InetAddressUtilsHC4;
import org.apache.http.util.TextUtils;
@Immutable
/* loaded from: classes5.dex */
public abstract class AbstractVerifierHC4 implements X509HostnameVerifier {
    private static final String[] BAD_COUNTRY_2LDS;
    private static final String TAG = "HttpClient";

    static {
        String[] strArr = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", PapayPayDetialActivity_.f34856k, "lg", "ne", c.f9616k, "or", "org"};
        BAD_COUNTRY_2LDS = strArr;
        Arrays.sort(strArr);
    }

    @Deprecated
    public static boolean acceptableCountryWildcard(String str) {
        String[] split = str.split("\\.");
        return (split.length == 3 && split[2].length() == 2 && Arrays.binarySearch(BAD_COUNTRY_2LDS, split[1]) >= 0) ? false : true;
    }

    public static int countDots(String str) {
        int i2 = 0;
        for (int i4 = 0; i4 < str.length(); i4++) {
            if (str.charAt(i4) == '.') {
                i2++;
            }
        }
        return i2;
    }

    static String[] extractCNs(String str) throws SSLException {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        List<NameValuePair> parse = DistinguishedNameParser.INSTANCE.parse(str);
        for (int i2 = 0; i2 < parse.size(); i2++) {
            NameValuePair nameValuePair = parse.get(i2);
            String name = nameValuePair.getName();
            String value = nameValuePair.getValue();
            if (!TextUtils.isBlank(name)) {
                if (name.equalsIgnoreCase("cn")) {
                    arrayList.add(value);
                }
            } else {
                throw new SSLException(str + " is not a valid X500 distinguished name");
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String[] getCNs(X509Certificate x509Certificate) {
        try {
            return extractCNs(x509Certificate.getSubjectX500Principal().toString());
        } catch (SSLException unused) {
            return null;
        }
    }

    public static String[] getDNSSubjectAlts(X509Certificate x509Certificate) {
        return getSubjectAlts(x509Certificate, null);
    }

    private static String[] getSubjectAlts(X509Certificate x509Certificate, String str) {
        Collection<List<?>> collection;
        int i2 = isIPAddress(str) ? 7 : 2;
        LinkedList linkedList = new LinkedList();
        try {
            collection = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException unused) {
            collection = null;
        }
        if (collection != null) {
            for (List<?> list : collection) {
                if (((Integer) list.get(0)).intValue() == i2) {
                    linkedList.add((String) list.get(1));
                }
            }
        }
        if (linkedList.isEmpty()) {
            return null;
        }
        String[] strArr = new String[linkedList.size()];
        linkedList.toArray(strArr);
        return strArr;
    }

    private static boolean isIPAddress(String str) {
        return str != null && (InetAddressUtilsHC4.isIPv4Address(str) || InetAddressUtilsHC4.isIPv6Address(str));
    }

    private String normaliseIPv6Address(String str) {
        if (str != null && InetAddressUtilsHC4.isIPv6Address(str)) {
            try {
                return InetAddress.getByName(str).getHostAddress();
            } catch (UnknownHostException unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unexpected error converting ");
                sb.append(str);
            }
        }
        return str;
    }

    boolean validCountryWildcard(String str) {
        String[] split = str.split("\\.");
        return (split.length == 3 && split[2].length() == 2 && Arrays.binarySearch(BAD_COUNTRY_2LDS, split[1]) >= 0) ? false : true;
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, SSLSocket sSLSocket) throws IOException {
        Objects.requireNonNull(str, "host to verify is null");
        SSLSession session = sSLSocket.getSession();
        if (session == null) {
            sSLSocket.getInputStream().available();
            session = sSLSocket.getSession();
            if (session == null) {
                sSLSocket.startHandshake();
                session = sSLSocket.getSession();
            }
        }
        verify(str, (X509Certificate) session.getPeerCertificates()[0]);
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier, javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException unused) {
            return false;
        }
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, X509Certificate x509Certificate) throws SSLException {
        verify(str, getCNs(x509Certificate), getSubjectAlts(x509Certificate, str));
    }

    public final void verify(String str, String[] strArr, String[] strArr2, boolean z3) throws SSLException {
        boolean endsWith;
        LinkedList linkedList = new LinkedList();
        if (strArr != null && strArr.length > 0 && strArr[0] != null) {
            linkedList.add(strArr[0]);
        }
        if (strArr2 != null) {
            for (String str2 : strArr2) {
                if (str2 != null) {
                    linkedList.add(str2);
                }
            }
        }
        if (!linkedList.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            String normaliseIPv6Address = normaliseIPv6Address(str.trim().toLowerCase(Locale.ENGLISH));
            Iterator it2 = linkedList.iterator();
            boolean z4 = false;
            while (it2.hasNext()) {
                String lowerCase = ((String) it2.next()).toLowerCase(Locale.ENGLISH);
                sb.append(" <");
                sb.append(lowerCase);
                sb.append(Typography.greater);
                if (it2.hasNext()) {
                    sb.append(" OR");
                }
                String[] split = lowerCase.split("\\.");
                if (split.length >= 3 && split[0].endsWith(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD) && validCountryWildcard(lowerCase) && !isIPAddress(str)) {
                    String str3 = split[0];
                    if (str3.length() > 1) {
                        String substring = str3.substring(0, str3.length() - 1);
                        endsWith = normaliseIPv6Address.startsWith(substring) && normaliseIPv6Address.substring(substring.length()).endsWith(lowerCase.substring(str3.length()));
                    } else {
                        endsWith = normaliseIPv6Address.endsWith(lowerCase.substring(1));
                    }
                    if (endsWith && z3) {
                        endsWith = countDots(normaliseIPv6Address) == countDots(lowerCase);
                    }
                    z4 = endsWith;
                    continue;
                } else {
                    z4 = normaliseIPv6Address.equals(normaliseIPv6Address(lowerCase));
                    continue;
                }
                if (z4) {
                    break;
                }
            }
            if (z4) {
                return;
            }
            throw new SSLException("hostname in certificate didn't match: <" + str + "> !=" + ((Object) sb));
        }
        throw new SSLException("Certificate for <" + str + "> doesn't contain CN or DNS subjectAlt");
    }
}
