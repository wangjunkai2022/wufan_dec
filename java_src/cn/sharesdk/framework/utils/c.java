package cn.sharesdk.framework.utils;

import android.util.Base64;
import com.mob.tools.network.KVPair;
import io.netty.util.internal.StringUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.text.Typography;
import org.apache.http.client.methods.HttpPutHC4;
/* compiled from: Oauth1Signer.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private b f8912a = new b();

    /* renamed from: b  reason: collision with root package name */
    private e f8913b = new e("-._~", false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Oauth1Signer.java */
    /* renamed from: cn.sharesdk.framework.utils.c$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8914a;

        static {
            int[] iArr = new int[a.values().length];
            f8914a = iArr;
            try {
                iArr[a.HMAC_SHA1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8914a[a.PLAINTEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* compiled from: Oauth1Signer.java */
    /* loaded from: classes2.dex */
    public enum a {
        HMAC_SHA1,
        PLAINTEXT
    }

    /* compiled from: Oauth1Signer.java */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public String f8918a;

        /* renamed from: b  reason: collision with root package name */
        public String f8919b;

        /* renamed from: c  reason: collision with root package name */
        public String f8920c;

        /* renamed from: d  reason: collision with root package name */
        public String f8921d;

        /* renamed from: e  reason: collision with root package name */
        public String f8922e;
    }

    public void a(String str, String str2, String str3) {
        b bVar = this.f8912a;
        bVar.f8918a = str;
        bVar.f8919b = str2;
        bVar.f8922e = str3;
    }

    public ArrayList<KVPair<String>> b(String str, ArrayList<KVPair<String>> arrayList) throws Throwable {
        return b(str, arrayList, a.HMAC_SHA1);
    }

    public ArrayList<KVPair<String>> c(String str, ArrayList<KVPair<String>> arrayList, a aVar) throws Throwable {
        return a(str, HttpPutHC4.METHOD_NAME, arrayList, aVar);
    }

    public ArrayList<KVPair<String>> b(String str, ArrayList<KVPair<String>> arrayList, a aVar) throws Throwable {
        return a(str, "GET", arrayList, aVar);
    }

    private String b(ArrayList<KVPair<String>> arrayList) {
        if (arrayList == null || arrayList.size() <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        Iterator<KVPair<String>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            KVPair<String> next = it2.next();
            if (i2 > 0) {
                sb.append(Typography.amp);
            }
            sb.append(next.name);
            sb.append('=');
            sb.append(next.value);
            i2++;
        }
        return sb.toString();
    }

    public b a() {
        return this.f8912a;
    }

    public ArrayList<KVPair<String>> a(String str, ArrayList<KVPair<String>> arrayList) throws Throwable {
        return a(str, arrayList, a.HMAC_SHA1);
    }

    public ArrayList<KVPair<String>> a(String str, ArrayList<KVPair<String>> arrayList, a aVar) throws Throwable {
        return a(str, "POST", arrayList, aVar);
    }

    public void a(String str, String str2) {
        b bVar = this.f8912a;
        bVar.f8920c = str;
        bVar.f8921d = str2;
    }

    private ArrayList<KVPair<String>> a(String str, String str2, ArrayList<KVPair<String>> arrayList, a aVar) throws Throwable {
        String trim;
        long currentTimeMillis = System.currentTimeMillis();
        int i2 = AnonymousClass1.f8914a[aVar.ordinal()];
        String str3 = null;
        if (i2 == 1) {
            SecretKeySpec secretKeySpec = new SecretKeySpec((a(this.f8912a.f8919b) + Typography.amp + a(this.f8912a.f8921d)).getBytes("utf-8"), "HMAC-SHA1");
            Mac mac = Mac.getInstance("HMAC-SHA1");
            mac.init(secretKeySpec);
            String b4 = b(a(currentTimeMillis, arrayList, "HMAC-SHA1"));
            trim = new String(Base64.encode(mac.doFinal((str2 + Typography.amp + a(str) + Typography.amp + a(b4)).getBytes("utf-8")), 0)).trim();
            str3 = "HMAC-SHA1";
        } else if (i2 != 2) {
            trim = null;
        } else {
            str3 = "PLAINTEXT";
            trim = a(this.f8912a.f8919b) + Typography.amp + a(this.f8912a.f8921d);
        }
        ArrayList<KVPair<String>> a4 = a(currentTimeMillis, str3);
        a4.add(new KVPair<>("oauth_signature", trim));
        return a4;
    }

    public String a(String str) {
        return str == null ? "" : this.f8913b.escape(str);
    }

    private ArrayList<KVPair<String>> a(long j4, ArrayList<KVPair<String>> arrayList, String str) {
        HashMap hashMap = new HashMap();
        if (arrayList != null) {
            Iterator<KVPair<String>> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                KVPair<String> next = it2.next();
                hashMap.put(a(next.name), a(next.value));
            }
        }
        ArrayList<KVPair<String>> a4 = a(j4, str);
        if (a4 != null) {
            Iterator<KVPair<String>> it3 = a4.iterator();
            while (it3.hasNext()) {
                KVPair<String> next2 = it3.next();
                hashMap.put(a(next2.name), a(next2.value));
            }
        }
        int size = hashMap.size();
        String[] strArr = new String[size];
        int i2 = 0;
        for (Map.Entry entry : hashMap.entrySet()) {
            strArr[i2] = (String) entry.getKey();
            i2++;
        }
        Arrays.sort(strArr);
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        for (int i4 = 0; i4 < size; i4++) {
            String str2 = strArr[i4];
            arrayList2.add(new KVPair<>(str2, hashMap.get(str2)));
        }
        return arrayList2;
    }

    private ArrayList<KVPair<String>> a(long j4, String str) {
        ArrayList<KVPair<String>> arrayList = new ArrayList<>();
        arrayList.add(new KVPair<>("oauth_consumer_key", this.f8912a.f8918a));
        arrayList.add(new KVPair<>("oauth_signature_method", str));
        arrayList.add(new KVPair<>("oauth_timestamp", String.valueOf(j4 / 1000)));
        arrayList.add(new KVPair<>("oauth_nonce", String.valueOf(j4)));
        arrayList.add(new KVPair<>("oauth_version", "1.0"));
        String str2 = this.f8912a.f8920c;
        if (str2 != null && str2.length() > 0) {
            arrayList.add(new KVPair<>("oauth_token", str2));
        }
        return arrayList;
    }

    public ArrayList<KVPair<String>> a(ArrayList<KVPair<String>> arrayList) {
        StringBuilder sb = new StringBuilder("OAuth ");
        Iterator<KVPair<String>> it2 = arrayList.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            KVPair<String> next = it2.next();
            if (i2 > 0) {
                sb.append(StringUtil.COMMA);
            }
            String a4 = a(next.value);
            sb.append(next.name);
            sb.append("=\"");
            sb.append(a4);
            sb.append(m.a.f72569g);
            i2++;
        }
        ArrayList<KVPair<String>> arrayList2 = new ArrayList<>();
        arrayList2.add(new KVPair<>("Authorization", sb.toString()));
        arrayList2.add(new KVPair<>("Content-Type", "application/x-www-form-urlencoded"));
        return arrayList2;
    }
}
