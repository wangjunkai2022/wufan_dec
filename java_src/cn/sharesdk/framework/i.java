package cn.sharesdk.framework;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Message;
import android.text.TextUtils;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.MobSDK;
import com.mob.commons.eventrecoder.EventRecorder;
import com.mob.tools.network.NetworkHelper;
import com.mob.tools.utils.Hashon;
import com.mob.tools.utils.ResHelper;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;
/* compiled from: ShareSDKCoreThread.java */
/* loaded from: classes2.dex */
public class i extends cn.sharesdk.framework.utils.g {

    /* renamed from: b  reason: collision with root package name */
    private a f8884b;

    /* renamed from: k  reason: collision with root package name */
    private boolean f8893k;

    /* renamed from: j  reason: collision with root package name */
    private boolean f8892j = true;

    /* renamed from: c  reason: collision with root package name */
    private HashMap<String, HashMap<String, String>> f8885c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<Platform> f8886d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private HashMap<String, Integer> f8887e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private HashMap<Integer, String> f8888f = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private HashMap<Integer, CustomPlatform> f8889g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private HashMap<Integer, HashMap<String, Object>> f8890h = new HashMap<>();

    /* renamed from: i  reason: collision with root package name */
    private HashMap<Integer, Service> f8891i = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ShareSDKCoreThread.java */
    /* loaded from: classes2.dex */
    public enum a {
        INITIALIZING,
        READY
    }

    private void j() {
        synchronized (this.f8885c) {
            this.f8885c.clear();
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            newInstance.setNamespaceAware(true);
            XmlPullParser newPullParser = newInstance.newPullParser();
            InputStream inputStream = null;
            try {
                inputStream = MobSDK.getContext().getAssets().open("ShareSDK.xml");
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
            newPullParser.setInput(inputStream, "utf-8");
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
                if (eventType == 2) {
                    String name = newPullParser.getName();
                    HashMap<String, String> hashMap = new HashMap<>();
                    int attributeCount = newPullParser.getAttributeCount();
                    for (int i2 = 0; i2 < attributeCount; i2++) {
                        hashMap.put(newPullParser.getAttributeName(i2), newPullParser.getAttributeValue(i2).trim());
                    }
                    this.f8885c.put(name, hashMap);
                }
            }
            inputStream.close();
        }
    }

    @Override // cn.sharesdk.framework.utils.g
    protected void b(Message message) {
    }

    public boolean b() {
        return h.c();
    }

    public boolean c() {
        return h.d();
    }

    @Override // cn.sharesdk.framework.utils.g
    public void d() {
        this.f8884b = a.INITIALIZING;
        SSDKLog.a();
        EventRecorder.prepare();
        j();
        super.d();
    }

    public void e(Class<? extends CustomPlatform> cls) {
        int hashCode = cls.hashCode();
        synchronized (this.f8889g) {
            this.f8889g.remove(Integer.valueOf(hashCode));
        }
    }

    public boolean f() {
        return this.f8893k;
    }

    public boolean g() {
        synchronized (this.f8890h) {
            HashMap<Integer, HashMap<String, Object>> hashMap = this.f8890h;
            return hashMap != null && hashMap.size() > 0;
        }
    }

    public boolean h() {
        boolean z3 = false;
        if (a.READY != this.f8884b) {
            SSDKLog.b().a("Statistics module unopened", new Object[0]);
            return false;
        }
        final cn.sharesdk.framework.a.a a4 = cn.sharesdk.framework.a.a.a();
        HashMap<String, Object> a5 = a(a4, a4.e());
        if (a5 != null && a5.size() > 0) {
            z3 = a(a5);
        }
        if (z3) {
            new Thread() { // from class: cn.sharesdk.framework.i.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        HashMap<String, Object> f4 = a4.f();
                        HashMap a6 = i.this.a(a4, f4);
                        if (a6 == null || a6.size() <= 0 || !i.this.a(a6)) {
                            return;
                        }
                        a4.a(f4);
                    } catch (Throwable th) {
                        SSDKLog.b().b(th);
                    }
                }
            }.start();
        } else {
            try {
                HashMap<String, Object> f4 = a4.f();
                HashMap<String, Object> a6 = a(a4, f4);
                if (a6 != null && a6.size() > 0 && (z3 = a(a6))) {
                    a4.a(f4);
                }
            } catch (Throwable th) {
                SSDKLog.b().b(th);
            }
        }
        return z3;
    }

    public void i() {
        try {
            ResHelper.clearCache(MobSDK.getContext());
        } catch (Throwable th) {
            SSDKLog.b().b(th);
        }
    }

    public void b(boolean z3) {
        h.b(z3);
    }

    public <T extends Service> T c(Class<T> cls) {
        T cast;
        synchronized (this.f8891i) {
            if (this.f8884b == a.INITIALIZING) {
                this.f8891i.wait();
            }
            cast = cls.cast(this.f8891i.get(Integer.valueOf(cls.hashCode())));
        }
        return cast;
    }

    public void a(Activity activity) {
        h.a(activity);
    }

    public void b(Class<? extends Service> cls) {
        synchronized (this.f8891i) {
            int hashCode = cls.hashCode();
            if (this.f8891i.containsKey(Integer.valueOf(hashCode))) {
                this.f8891i.get(Integer.valueOf(hashCode)).onUnbind();
                this.f8891i.remove(Integer.valueOf(hashCode));
            }
        }
    }

    public Activity a() {
        return h.b();
    }

    public void a(boolean z3) {
        h.a(z3);
    }

    public Platform[] e() {
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this.f8886d) {
            if (this.f8884b == a.INITIALIZING) {
                this.f8886d.wait();
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Platform> it2 = this.f8886d.iterator();
        while (it2.hasNext()) {
            Platform next = it2.next();
            if (next != null && next.b()) {
                next.a();
                arrayList.add(next);
            }
        }
        h.a(arrayList);
        for (Map.Entry<Integer, CustomPlatform> entry : this.f8889g.entrySet()) {
            CustomPlatform value = entry.getValue();
            if (value != null && value.b()) {
                arrayList.add(value);
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        int size = arrayList.size();
        Platform[] platformArr = new Platform[size];
        for (int i2 = 0; i2 < size; i2++) {
            platformArr[i2] = (Platform) arrayList.get(i2);
        }
        SSDKLog.b().c("sort list use time: %s", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
        return platformArr;
    }

    @Override // cn.sharesdk.framework.utils.g
    protected void a(Message message) {
        synchronized (this.f8891i) {
            synchronized (this.f8886d) {
                String checkRecord = EventRecorder.checkRecord(ShareSDK.SDK_TAG);
                if (!TextUtils.isEmpty(checkRecord)) {
                    cn.sharesdk.framework.a.a.a().a((HashMap<String, Object>) null);
                    SSDKLog b4 = SSDKLog.b();
                    b4.a("EventRecorder checkRecord result ==" + checkRecord);
                    i();
                }
                EventRecorder.clear();
                this.f8886d.clear();
                ArrayList<Platform> a4 = h.a();
                if (a4 != null) {
                    this.f8886d.addAll(a4);
                }
                Iterator<Platform> it2 = this.f8886d.iterator();
                while (it2.hasNext()) {
                    Platform next = it2.next();
                    this.f8888f.put(Integer.valueOf(next.getPlatformId()), next.getName());
                    this.f8887e.put(next.getName(), Integer.valueOf(next.getPlatformId()));
                }
                h.a(this.f8927a);
                a aVar = a.READY;
                this.f8884b = aVar;
                new Thread() { // from class: cn.sharesdk.framework.i.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        i.this.h();
                    }
                }.start();
                this.f8884b = aVar;
                this.f8886d.notify();
                this.f8891i.notify();
            }
        }
    }

    public void d(Class<? extends CustomPlatform> cls) {
        synchronized (this.f8889g) {
            if (this.f8889g.containsKey(Integer.valueOf(cls.hashCode()))) {
                return;
            }
            CustomPlatform newInstance = cls.newInstance();
            this.f8889g.put(Integer.valueOf(cls.hashCode()), newInstance);
            if (newInstance != null && newInstance.b()) {
                this.f8888f.put(Integer.valueOf(newInstance.getPlatformId()), newInstance.getName());
                this.f8887e.put(newInstance.getName(), Integer.valueOf(newInstance.getPlatformId()));
            }
        }
    }

    public void b(int i2) {
        NetworkHelper.readTimout = i2;
    }

    public void c(boolean z3) {
        this.f8893k = z3;
    }

    public int b(String str) {
        synchronized (this.f8886d) {
            synchronized (this.f8889g) {
                if (this.f8887e.containsKey(str)) {
                    return this.f8887e.get(str).intValue();
                }
                return 0;
            }
        }
    }

    public String c(int i2) {
        String str;
        synchronized (this.f8886d) {
            synchronized (this.f8889g) {
                str = this.f8888f.get(Integer.valueOf(i2));
            }
        }
        return str;
    }

    public String c(String str) {
        if (a.READY != this.f8884b) {
            return null;
        }
        return cn.sharesdk.framework.a.a.a().b(str);
    }

    public String b(String str, String str2) {
        synchronized (this.f8885c) {
            HashMap<String, String> hashMap = this.f8885c.get(str);
            if (hashMap == null) {
                return null;
            }
            return hashMap.get(str2);
        }
    }

    public void a(Class<? extends Service> cls) {
        synchronized (this.f8891i) {
            if (this.f8891i.containsKey(Integer.valueOf(cls.hashCode()))) {
                return;
            }
            Service newInstance = cls.newInstance();
            this.f8891i.put(Integer.valueOf(cls.hashCode()), newInstance);
            newInstance.onBind();
        }
    }

    public Platform a(String str) {
        Platform[] e4;
        if (str == null || (e4 = e()) == null) {
            return null;
        }
        for (Platform platform : e4) {
            if (str.equals(platform.getName())) {
                return platform;
            }
        }
        return null;
    }

    public void a(int i2) {
        NetworkHelper.connectionTimeout = i2;
    }

    public void a(int i2, Platform platform) {
        h.a(i2, platform);
    }

    public void a(String str, int i2) {
        h.a(str, i2);
    }

    public void a(String str, HashMap<String, Object> hashMap) {
        synchronized (this.f8885c) {
            HashMap<String, String> hashMap2 = this.f8885c.get(str);
            if (hashMap2 == null) {
                hashMap2 = new HashMap<>();
            }
            synchronized (hashMap2) {
                for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (value != null) {
                        hashMap2.put(key, String.valueOf(value));
                    }
                }
            }
            this.f8885c.put(str, hashMap2);
        }
        synchronized (this.f8886d) {
            if (this.f8884b == a.INITIALIZING) {
                this.f8886d.wait();
            }
        }
        Iterator<Platform> it2 = this.f8886d.iterator();
        while (it2.hasNext()) {
            Platform next = it2.next();
            if (next != null && next.getName().equals(str)) {
                next.a();
                return;
            }
        }
    }

    public void a(List<HashMap<String, Object>> list) {
        synchronized (this.f8885c) {
            for (HashMap<String, Object> hashMap : list) {
                String str = null;
                HashMap<String, String> hashMap2 = new HashMap<>();
                for (Map.Entry<String, Object> entry : hashMap.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (key.equals("platformName")) {
                        str = String.valueOf(entry.getValue());
                    }
                    if (value != null) {
                        hashMap2.put(key, String.valueOf(value));
                    }
                }
                this.f8885c.put(str, hashMap2);
            }
        }
        synchronized (this.f8886d) {
            if (this.f8884b == a.INITIALIZING) {
                this.f8886d.wait();
            }
        }
    }

    public void a(String str, String str2) {
        synchronized (this.f8885c) {
            this.f8885c.put(str2, this.f8885c.get(str));
        }
    }

    public void a(int i2, int i4) {
        synchronized (this.f8890h) {
            this.f8890h.put(Integer.valueOf(i4), this.f8890h.get(Integer.valueOf(i2)));
        }
    }

    public String a(int i2, String str) {
        synchronized (this.f8890h) {
            HashMap<String, Object> hashMap = this.f8890h.get(Integer.valueOf(i2));
            String str2 = null;
            if (hashMap == null) {
                return null;
            }
            Object obj = hashMap.get(str);
            if (obj != null) {
                str2 = String.valueOf(obj);
            }
            return str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, Object> a(cn.sharesdk.framework.a.a aVar, HashMap<String, Object> hashMap) {
        try {
            if (hashMap.containsKey("error")) {
                SSDKLog.b().c("ShareSDK parse sns config ==>>", new Hashon().fromHashMap(hashMap));
                return null;
            } else if (!hashMap.containsKey(com.facebook.common.util.f.f11771g)) {
                SSDKLog.b().a("ShareSDK platform config result ==>>", "SNS configuration is empty");
                return null;
            } else {
                String str = (String) hashMap.get(com.facebook.common.util.f.f11771g);
                if (str == null) {
                    return null;
                }
                return aVar.c(str);
            }
        } catch (Throwable th) {
            SSDKLog.b().b(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(HashMap<String, Object> hashMap) {
        synchronized (this.f8890h) {
            HashMap<Integer, HashMap<String, Object>> a4 = h.a(hashMap);
            if (a4 == null || a4.size() <= 0) {
                return false;
            }
            this.f8890h.clear();
            this.f8890h = a4;
            return true;
        }
    }

    public String a(String str, boolean z3, int i2, String str2) {
        return a.READY != this.f8884b ? str : cn.sharesdk.framework.a.a.a().a(str, i2, z3, str2);
    }

    public String a(Bitmap bitmap) {
        if (a.READY != this.f8884b) {
            return null;
        }
        return cn.sharesdk.framework.a.a.a().a(bitmap);
    }
}
