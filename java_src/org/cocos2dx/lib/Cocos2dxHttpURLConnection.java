package org.cocos2dx.lib;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
import net.lingala.zip4j.util.e;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
/* loaded from: classes5.dex */
public class Cocos2dxHttpURLConnection {
    private static final String POST_METHOD = "POST";
    private static final String PUT_METHOD = "PUT";

    static void addRequestHeader(HttpURLConnection httpURLConnection, String str, String str2) {
        httpURLConnection.setRequestProperty(str, str2);
    }

    public static String combinCookies(List<String> list, String str) {
        String[] split;
        StringBuilder sb = new StringBuilder();
        String str2 = "FALSE";
        String str3 = null;
        String str4 = null;
        String str5 = e.F0;
        String str6 = null;
        String str7 = str;
        for (String str8 : list) {
            int i2 = 0;
            for (String str9 : str8.split(";")) {
                int indexOf = str9.indexOf(SimpleComparison.EQUAL_TO_OPERATION);
                if (-1 != indexOf) {
                    String[] strArr = new String[2];
                    strArr[i2] = str9.substring(i2, indexOf);
                    strArr[1] = str9.substring(indexOf + 1);
                    if ("expires".equalsIgnoreCase(strArr[i2].trim())) {
                        str4 = str2Seconds(strArr[1].trim());
                    } else if ("path".equalsIgnoreCase(strArr[0].trim())) {
                        str5 = strArr[1];
                    } else if ("secure".equalsIgnoreCase(strArr[0].trim())) {
                        str2 = strArr[1];
                    } else if ("domain".equalsIgnoreCase(strArr[0].trim())) {
                        str7 = strArr[1];
                    } else {
                        i2 = 0;
                        if (!"version".equalsIgnoreCase(strArr[0].trim()) && !"max-age".equalsIgnoreCase(strArr[0].trim())) {
                            str6 = strArr[0];
                            str3 = strArr[1];
                        }
                    }
                    i2 = 0;
                }
            }
            if (str7 == null) {
                str7 = "none";
            }
            sb.append(str7);
            sb.append('\t');
            sb.append("FALSE");
            sb.append('\t');
            sb.append(str5);
            sb.append('\t');
            sb.append(str2);
            sb.append('\t');
            sb.append(str4);
            sb.append("\t");
            sb.append(str6);
            sb.append("\t");
            sb.append(str3);
            sb.append('\n');
        }
        return sb.toString();
    }

    static int connect(HttpURLConnection httpURLConnection) {
        try {
            httpURLConnection.connect();
            return 0;
        } catch (IOException e4) {
            e4.toString();
            return 1;
        }
    }

    static HttpURLConnection createHttpURLConnection(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        } catch (Exception e4) {
            e4.toString();
            return null;
        }
    }

    static void disconnect(HttpURLConnection httpURLConnection) {
        httpURLConnection.disconnect();
    }

    static int getResponseCode(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e4) {
            e4.toString();
            return 0;
        }
    }

    static byte[] getResponseContent(HttpURLConnection httpURLConnection) {
        DataInputStream dataInputStream;
        try {
            dataInputStream = new DataInputStream(httpURLConnection.getInputStream());
        } catch (IOException unused) {
            dataInputStream = new DataInputStream(httpURLConnection.getErrorStream());
        } catch (Exception e4) {
            e4.toString();
            return null;
        }
        try {
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = dataInputStream.read(bArr, 0, 1024);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
            }
        } catch (Exception e5) {
            e5.toString();
            return null;
        }
    }

    static String getResponseHeaderByIdx(HttpURLConnection httpURLConnection, int i2) {
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null) {
            return null;
        }
        int i4 = 0;
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (i4 == i2) {
                String key = entry.getKey();
                if (key == null) {
                    return listToString(entry.getValue(), ",") + "\n";
                }
                return key + ":" + listToString(entry.getValue(), ",") + "\n";
            }
            i4++;
        }
        return null;
    }

    static String getResponseHeaderByKey(HttpURLConnection httpURLConnection, String str) {
        Map<String, List<String>> headerFields;
        if (str == null || (headerFields = httpURLConnection.getHeaderFields()) == null) {
            return null;
        }
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (str.equalsIgnoreCase(entry.getKey())) {
                if ("set-cookie".equalsIgnoreCase(str)) {
                    return combinCookies(entry.getValue(), httpURLConnection.getURL().getHost());
                }
                return listToString(entry.getValue(), ",");
            }
        }
        return null;
    }

    static int getResponseHeaderByKeyInt(HttpURLConnection httpURLConnection, String str) {
        String headerField = httpURLConnection.getHeaderField(str);
        if (headerField == null) {
            return 0;
        }
        return Integer.parseInt(headerField);
    }

    static String getResponseHeaders(HttpURLConnection httpURLConnection) {
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null) {
            return null;
        }
        String str = "";
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            String key = entry.getKey();
            str = key == null ? str + listToString(entry.getValue(), ",") + "\n" : str + key + ":" + listToString(entry.getValue(), ",") + "\n";
        }
        return str;
    }

    static String getResponseMessage(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseMessage();
        } catch (IOException e4) {
            return e4.toString();
        }
    }

    public static String listToString(List<String> list, String str) {
        if (list == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        for (String str2 : list) {
            if (z3) {
                sb.append(str);
            }
            if (str2 == null) {
                str2 = "";
            }
            sb.append(str2);
            z3 = true;
        }
        return sb.toString();
    }

    static void sendRequest(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            if (bArr != null) {
                outputStream.write(bArr);
                outputStream.flush();
            }
            outputStream.close();
        } catch (IOException e4) {
            e4.toString();
        }
    }

    static void setReadAndConnectTimeout(HttpURLConnection httpURLConnection, int i2, int i4) {
        httpURLConnection.setReadTimeout(i2);
        httpURLConnection.setConnectTimeout(i4);
    }

    static void setRequestMethod(HttpURLConnection httpURLConnection, String str) {
        try {
            httpURLConnection.setRequestMethod(str);
            if (str.equalsIgnoreCase("POST") || str.equalsIgnoreCase("PUT")) {
                httpURLConnection.setDoOutput(true);
            }
        } catch (ProtocolException e4) {
            e4.toString();
        }
    }

    static void setVerifySSL(HttpURLConnection httpURLConnection, String str) {
        BufferedInputStream bufferedInputStream;
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            try {
                if (str.startsWith(e.F0)) {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
                } else {
                    bufferedInputStream = new BufferedInputStream(Cocos2dxHelper.getActivity().getAssets().open(str.substring(7)));
                }
                Certificate generateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(bufferedInputStream);
                PrintStream printStream = System.out;
                printStream.println("ca=" + ((X509Certificate) generateCertificate).getSubjectDN());
                bufferedInputStream.close();
                KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore.load(null, null);
                keyStore.setCertificateEntry("ca", generateCertificate);
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
                sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
                httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            } catch (Exception e4) {
                e4.toString();
            }
        }
    }

    private static String str2Seconds(String str) {
        long j4;
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.setTime(new SimpleDateFormat("EEE, dd-MMM-yy hh:mm:ss zzz", Locale.US).parse(str));
            j4 = calendar.getTimeInMillis() / 1000;
        } catch (ParseException e4) {
            e4.toString();
            j4 = 0;
        }
        return Long.toString(j4);
    }
}
