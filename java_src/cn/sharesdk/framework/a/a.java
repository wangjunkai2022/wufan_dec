package cn.sharesdk.framework.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.a.a.e;
import cn.sharesdk.framework.a.b.f;
import cn.sharesdk.framework.utils.SSDKLog;
import com.facebook.common.util.f;
import com.join.mgps.Util.g0;
import com.mob.MobSDK;
import com.mob.tools.utils.BitmapHelper;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ResHelper;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
/* compiled from: EventManager.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f8726a;

    /* renamed from: e  reason: collision with root package name */
    private boolean f8730e = true;

    /* renamed from: b  reason: collision with root package name */
    private c f8727b = new c();

    /* renamed from: d  reason: collision with root package name */
    private e f8729d = e.a();

    /* renamed from: c  reason: collision with root package name */
    private DeviceHelper f8728c = DeviceHelper.getInstance(MobSDK.getContext());

    private a() {
    }

    public static a a() {
        if (f8726a == null) {
            f8726a = new a();
        }
        return f8726a;
    }

    private String d(String str) throws Throwable {
        HashMap<String, Object> c4 = this.f8727b.c(str);
        if (c4 != null && c4.size() > 0 && c4.containsKey("status") && ResHelper.parseInt(String.valueOf(c4.get("status"))) == 200 && c4.containsKey("url")) {
            return (String) c4.get("url");
        }
        return null;
    }

    private String e(String str) throws Throwable {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(str.getBytes());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        byte[] bArr = new byte[1024];
        while (true) {
            int read = byteArrayInputStream.read(bArr, 0, 1024);
            if (read != -1) {
                gZIPOutputStream.write(bArr, 0, read);
            } else {
                gZIPOutputStream.flush();
                gZIPOutputStream.close();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                byteArrayInputStream.close();
                return Base64.encodeToString(byteArray, 2);
            }
        }
    }

    public void b() {
        try {
            String networkType = this.f8728c.getNetworkType();
            if (!"none".equals(networkType) && !TextUtils.isEmpty(networkType)) {
                long longValue = this.f8729d.k().longValue();
                long currentTimeMillis = System.currentTimeMillis();
                Calendar calendar = Calendar.getInstance();
                calendar.setTimeInMillis(longValue);
                int i2 = calendar.get(5);
                calendar.setTimeInMillis(currentTimeMillis);
                int i4 = calendar.get(5);
                if (currentTimeMillis - longValue >= 86400000 || i2 != i4) {
                    HashMap<String, Object> a4 = this.f8727b.a();
                    this.f8729d.c(a4.containsKey(f.f11771g) ? "true".equals(String.valueOf(a4.get(f.f11771g))) : true);
                    if (a4.size() > 0) {
                        this.f8729d.b(System.currentTimeMillis());
                    }
                }
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    public void c() {
        HashMap hashMap;
        HashMap hashMap2;
        try {
            String networkType = this.f8728c.getNetworkType();
            if ("none".equals(networkType) || TextUtils.isEmpty(networkType) || !this.f8729d.j()) {
                return;
            }
            this.f8729d.a(System.currentTimeMillis());
            HashMap<String, Object> c4 = this.f8727b.c();
            if (c4.containsKey("status") && ResHelper.parseInt(String.valueOf(c4.get("status"))) == -200) {
                SSDKLog.b().a((String) c4.get("error"), new Object[0]);
                return;
            }
            if (c4.containsKey("timestamp")) {
                this.f8729d.a("service_time", Long.valueOf(System.currentTimeMillis() - ResHelper.parseLong(String.valueOf(c4.get("timestamp")))));
            }
            if (c4.containsKey("switchs") && (hashMap2 = (HashMap) c4.get("switchs")) != null) {
                String valueOf = String.valueOf(hashMap2.get(com.alipay.sdk.packet.d.f9795p));
                String valueOf2 = String.valueOf(hashMap2.get("share"));
                String valueOf3 = String.valueOf(hashMap2.get("auth"));
                String valueOf4 = String.valueOf(hashMap2.get("backflow"));
                String valueOf5 = String.valueOf(hashMap2.get("loginplus"));
                String valueOf6 = String.valueOf(hashMap2.get("linkcard"));
                this.f8729d.b(valueOf);
                this.f8729d.d(valueOf2);
                this.f8729d.c(valueOf3);
                this.f8729d.a(valueOf4);
                this.f8729d.e(valueOf5);
                this.f8729d.f(valueOf6);
            }
            if (!c4.containsKey("serpaths") || (hashMap = (HashMap) c4.get("serpaths")) == null) {
                return;
            }
            String valueOf7 = String.valueOf(hashMap.get("defhost"));
            String valueOf8 = String.valueOf(hashMap.get("defport"));
            if (!TextUtils.isEmpty(valueOf7) && !TextUtils.isEmpty(valueOf8)) {
                if (!"443".equals(valueOf8) && !"80".equals(valueOf8)) {
                    c cVar = this.f8727b;
                    cVar.b(MobSDK.checkRequestUrl(valueOf7) + ":" + valueOf8);
                }
                this.f8727b.b(MobSDK.checkRequestUrl(valueOf7));
            }
            HashMap<String, String> hashMap3 = new HashMap<>();
            if (hashMap.containsKey("assigns")) {
                HashMap hashMap4 = (HashMap) hashMap.get("assigns");
                if (hashMap4 != null && hashMap4.size() != 0) {
                    for (String str : hashMap4.keySet()) {
                        HashMap hashMap5 = (HashMap) hashMap4.get(str);
                        String valueOf9 = String.valueOf(hashMap5.get(com.alipay.sdk.cons.c.f9731f));
                        String valueOf10 = String.valueOf(hashMap5.get("port"));
                        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(valueOf9) && !TextUtils.isEmpty(valueOf10)) {
                            hashMap3.put(str, "http://" + valueOf9 + ":" + valueOf10);
                        }
                    }
                    this.f8727b.a(hashMap3);
                    return;
                }
                this.f8727b.a((HashMap<String, String>) null);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    public HashMap<String, Object> f() {
        if (!this.f8729d.j() && this.f8729d.l()) {
            return new HashMap<>();
        }
        try {
            HashMap<String, Object> d4 = this.f8727b.d();
            this.f8729d.d(true);
            return d4;
        } catch (Throwable th) {
            this.f8729d.d(false);
            SSDKLog.b().a(th);
            return new HashMap<>();
        }
    }

    public void a(String str) {
        if (this.f8727b == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f8727b.a(str);
    }

    public void a(cn.sharesdk.framework.a.b.c cVar) {
        try {
            if (this.f8729d.j()) {
                if (cVar instanceof cn.sharesdk.framework.a.b.b) {
                    a((cn.sharesdk.framework.a.b.b) cVar);
                } else if (cVar instanceof cn.sharesdk.framework.a.b.f) {
                    a((cn.sharesdk.framework.a.b.f) cVar);
                }
                if (!this.f8729d.c()) {
                    cVar.f8757l = null;
                }
                long b4 = this.f8729d.b();
                if (b4 == 0) {
                    b4 = this.f8727b.b();
                }
                cVar.f8750e = System.currentTimeMillis() - b4;
                this.f8727b.a(cVar);
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    public void d() {
        boolean a4;
        try {
            String networkType = this.f8728c.getNetworkType();
            if ("none".equals(networkType) || TextUtils.isEmpty(networkType) || !this.f8729d.j()) {
                return;
            }
            ArrayList<cn.sharesdk.framework.a.a.c> e4 = this.f8727b.e();
            for (int i2 = 0; i2 < e4.size(); i2++) {
                cn.sharesdk.framework.a.a.c cVar = e4.get(i2);
                if (cVar.f8734b.size() == 1) {
                    a4 = a(cVar.f8733a, false);
                } else {
                    a4 = a(e(cVar.f8733a), true);
                }
                if (a4) {
                    this.f8727b.a(cVar.f8734b);
                }
            }
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }

    public HashMap<String, Object> e() {
        try {
            return this.f8727b.f();
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return new HashMap<>();
        }
    }

    public String b(String str) {
        if (this.f8729d.j()) {
            try {
                return a(str, b.BEFORE_SHARE);
            } catch (Throwable th) {
                SSDKLog.b().a(th);
                return null;
            }
        }
        return null;
    }

    private void a(cn.sharesdk.framework.a.b.b bVar) throws Throwable {
        boolean d4 = this.f8729d.d();
        String str = bVar.f8748c;
        if (d4 && !TextUtils.isEmpty(str)) {
            bVar.f8748c = Data.Base64AES(str, bVar.f8751f.substring(0, 16));
            return;
        }
        bVar.f8749d = null;
        bVar.f8748c = null;
    }

    private void a(cn.sharesdk.framework.a.b.f fVar) throws Throwable {
        ArrayList<Bitmap> arrayList;
        ArrayList<String> arrayList2;
        int f4 = this.f8729d.f();
        boolean d4 = this.f8729d.d();
        f.a aVar = fVar.f8771d;
        if (f4 == 1) {
            int size = (aVar == null || (arrayList2 = aVar.f8778e) == null) ? 0 : arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                String a4 = a(aVar.f8778e.get(i2), b.FINISH_SHARE);
                if (!TextUtils.isEmpty(a4)) {
                    aVar.f8777d.add(a4);
                }
            }
            int size2 = (aVar == null || (arrayList = aVar.f8779f) == null) ? 0 : arrayList.size();
            for (int i4 = 0; i4 < size2; i4++) {
                String a5 = a(aVar.f8779f.get(i4), b.FINISH_SHARE);
                if (!TextUtils.isEmpty(a5)) {
                    aVar.f8777d.add(a5);
                }
            }
        } else {
            fVar.f8771d = null;
        }
        if (d4) {
            return;
        }
        fVar.f8772m = null;
    }

    private String a(String str, b bVar) throws Throwable {
        double ceil;
        if (!TextUtils.isEmpty(str) && new File(str).exists()) {
            String networkType = this.f8728c.getNetworkType();
            if (!"none".equals(networkType) && !TextUtils.isEmpty(networkType)) {
                Bitmap.CompressFormat bmpFormat = BitmapHelper.getBmpFormat(str);
                float f4 = bVar == b.BEFORE_SHARE ? 600.0f : 200.0f;
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(str, options);
                options.inJustDecodeBounds = false;
                int i2 = options.outWidth;
                int i4 = options.outHeight;
                if (i2 >= i4 && i4 > f4) {
                    ceil = Math.ceil(i4 / f4);
                } else if (i2 < i4 && i2 > f4) {
                    ceil = Math.ceil(i2 / f4);
                } else {
                    return d(str);
                }
                int i5 = (int) ceil;
                if (i5 <= 0) {
                    i5 = 1;
                }
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = i5;
                options2.inPurgeable = true;
                options2.inInputShareable = true;
                Bitmap decodeFile = BitmapFactory.decodeFile(str, options2);
                decodeFile.getHeight();
                decodeFile.getWidth();
                File createTempFile = File.createTempFile("bm_tmp2", g0.f27568a + bmpFormat.name().toLowerCase());
                FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                decodeFile.compress(bmpFormat, 80, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                return d(createTempFile.getAbsolutePath());
            }
        }
        return null;
    }

    public HashMap<String, Object> c(String str) {
        try {
            return this.f8727b.d(str);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return null;
        }
    }

    private String a(Bitmap bitmap, b bVar) throws Throwable {
        File createTempFile = File.createTempFile("bm_tmp", ".png");
        FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
        fileOutputStream.flush();
        fileOutputStream.close();
        return a(createTempFile.getAbsolutePath(), bVar);
    }

    private boolean a(String str, boolean z3) throws Throwable {
        return this.f8727b.a(str, z3);
    }

    public String a(String str, int i2, boolean z3, String str2) {
        String a4;
        try {
            if (this.f8729d.j() && this.f8729d.e()) {
                String networkType = this.f8728c.getNetworkType();
                if (!"none".equals(networkType) && !TextUtils.isEmpty(networkType)) {
                    if (z3 && (a4 = a(str, "<a[^>]*?href[\\s]*=[\\s]*[\"']?([^'\">]+?)['\"]?>", i2, str2)) != null && !a4.equals(str)) {
                        return a4;
                    }
                    String a5 = a(str, "(http://|https://){1}[\\w\\.\\-/:\\?&%=,;\\[\\]\\{\\}`~!@#\\$\\^\\*\\(\\)_\\+\\\\\\|]+", i2, str2);
                    if (a5 != null) {
                        if (!a5.equals(str)) {
                            return a5;
                        }
                    }
                }
            }
            return str;
        } catch (Throwable th) {
            SSDKLog.b().a(th);
            return str;
        }
    }

    private String a(String str, String str2, int i2, String str3) throws Throwable {
        HashMap<String, Object> a4;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Pattern compile = Pattern.compile(str2);
        Matcher matcher = compile.matcher(str);
        while (matcher.find()) {
            String group = matcher.group();
            if (group != null && group.length() > 0) {
                arrayList.add(group);
            }
        }
        if (arrayList.size() != 0 && (a4 = this.f8727b.a(str, arrayList, i2, str3)) != null && a4.size() > 0 && a4.containsKey("data")) {
            HashMap hashMap = new HashMap();
            Iterator it2 = ((ArrayList) a4.get("data")).iterator();
            while (it2.hasNext()) {
                HashMap hashMap2 = (HashMap) it2.next();
                hashMap.put(String.valueOf(hashMap2.get("source")), String.valueOf(hashMap2.get("surl")));
            }
            Matcher matcher2 = compile.matcher(str);
            StringBuilder sb = new StringBuilder();
            int i4 = 0;
            while (matcher2.find()) {
                sb.append(str.substring(i4, matcher2.start()));
                sb.append((String) hashMap.get(matcher2.group()));
                i4 = matcher2.end();
            }
            sb.append(str.substring(i4, str.length()));
            String sb2 = sb.toString();
            SSDKLog.b().c("> SERVER_SHORT_LINK_URL content after replace link ===  %s", sb2);
            return sb2;
        }
        return str;
    }

    public String a(Bitmap bitmap) {
        if (this.f8729d.j()) {
            try {
                return a(bitmap, b.BEFORE_SHARE);
            } catch (Throwable th) {
                SSDKLog.b().a(th);
                return null;
            }
        }
        return null;
    }

    public void a(HashMap<String, Object> hashMap) {
        try {
            this.f8727b.b(hashMap);
        } catch (Throwable th) {
            SSDKLog.b().a(th);
        }
    }
}
