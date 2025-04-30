package com.join.mgps.joystick.map;

import android.os.Environment;
import com.join.mgps.Util.t;
import com.join.mgps.Util.u;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import net.lingala.zip4j.util.e;
/* compiled from: BlackListManager.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    static t f50899e;

    /* renamed from: f  reason: collision with root package name */
    private static a f50900f;

    /* renamed from: a  reason: collision with root package name */
    private String f50901a;

    /* renamed from: b  reason: collision with root package name */
    private final String f50902b = d.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private final String f50903c = "blacklist_config.ini";

    /* renamed from: d  reason: collision with root package name */
    private final String[] f50904d = {"BT_BLACK_LIST"};

    public a() {
        this.f50901a = Environment.getExternalStorageDirectory().getPath() + "/wufan91/config";
        this.f50901a = u.f27845d + "/wufan91/config";
        g();
    }

    private void a() {
        g();
        t tVar = f50899e;
        if (tVar != null) {
            tVar.i(this.f50904d[0]);
            j();
        }
    }

    public static a b() {
        if (f50900f == null) {
            f50900f = new a();
        }
        return f50900f;
    }

    private Map c(String str) {
        HashMap hashMap = new HashMap();
        g();
        t.c b4 = f50899e.b(str);
        for (String str2 : b4.d()) {
            hashMap.put(str2, b4.c(str2));
        }
        return hashMap;
    }

    private File d() {
        return new File(this.f50901a + e.F0 + "blacklist_config.ini");
    }

    private boolean e(String str) {
        return str == null || str.equals("");
    }

    private synchronized void g() {
        File d4 = d();
        if (d4 == null) {
            return;
        }
        String absolutePath = d4.getAbsolutePath();
        try {
            if (!d4.getParentFile().exists()) {
                d4.getParentFile().mkdirs();
            }
            if (d4.exists() && d4.isDirectory()) {
                d4.delete();
            }
            if (!d4.exists()) {
                d4.setReadable(true);
                d4.setWritable(true);
                d4.createNewFile();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (f50899e == null) {
            f50899e = new t(absolutePath);
        }
        f50899e.h();
    }

    private static synchronized void h(int i2, String str, String str2, String str3) {
        synchronized (a.class) {
            t tVar = f50899e;
            tVar.g(str, str2, str3);
            tVar.j();
        }
    }

    private void i() {
        t tVar = f50899e;
        int i2 = 0;
        while (true) {
            String[] strArr = this.f50904d;
            if (i2 >= strArr.length) {
                return;
            }
            String str = strArr[i2];
            if (tVar.b(str) == null) {
                tVar.f(new t.c(str));
            }
            i2++;
        }
    }

    private synchronized void j() {
        try {
            t tVar = f50899e;
            if (tVar != null) {
                tVar.j();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    private void m(String str, Map<String, String> map) {
        g();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String str2 = map.get(key);
            t tVar = f50899e;
            if (tVar != null) {
                tVar.g(str, str2, key);
            }
        }
        j();
    }

    public boolean f(String str) {
        t.c b4;
        if (e(str)) {
            return false;
        }
        g();
        t tVar = f50899e;
        if (tVar == null || (b4 = tVar.b(this.f50904d[0])) == null) {
            return false;
        }
        for (String str2 : b4.d()) {
            if (!e(str2)) {
                if (str.toLowerCase().contains(b4.c(str2).toLowerCase())) {
                    return true;
                }
            }
        }
        return false;
    }

    public void k(List<String> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        g();
        if (f50899e == null) {
            return;
        }
        a();
        for (int i2 = 0; i2 < list.size(); i2++) {
            f50899e.g(this.f50904d[0], list.get(i2), "");
        }
    }

    public void l(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        g();
        if (f50899e == null) {
            return;
        }
        a();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!e(value)) {
                f50899e.g(this.f50904d[0], key, value);
                j();
            }
        }
    }
}
