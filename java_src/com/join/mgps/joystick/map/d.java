package com.join.mgps.joystick.map;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import android.view.KeyEvent;
import com.join.mgps.Util.r1;
import com.join.mgps.Util.t;
import com.join.mgps.Util.u;
import com.join.mgps.joystick.KeyMapActions;
import com.join.mgps.joystick.map.KeyMap;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import net.lingala.zip4j.util.e;
/* compiled from: KeyMapManager.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: d  reason: collision with root package name */
    public static KeyMap.EmuMap f50989d;

    /* renamed from: f  reason: collision with root package name */
    private static Context f50991f;

    /* renamed from: a  reason: collision with root package name */
    int[] f50992a = {0, 0, 0, 0};

    /* renamed from: b  reason: collision with root package name */
    private static String f50987b = Environment.getExternalStorageDirectory().getPath() + "/MG/config";

    /* renamed from: c  reason: collision with root package name */
    private static final String f50988c = d.class.getSimpleName();

    /* renamed from: e  reason: collision with root package name */
    static t[] f50990e = new t[4];

    public d(KeyMap.EmuMap emuMap) {
        f50987b = u.f27845d + "/MG/config";
        f(emuMap);
    }

    public static c b(int i2, KeyEvent keyEvent) {
        String str;
        String str2;
        if (f50989d == null) {
            return null;
        }
        c cVar = new c();
        if (f50990e[i2] == null) {
            return cVar;
        }
        cVar.h(keyEvent);
        t.c b4 = f50990e[i2].b(KeyMap.keySection);
        Iterator<String> it2 = b4.d().iterator();
        while (true) {
            str = "null";
            if (!it2.hasNext()) {
                str2 = "null";
                break;
            }
            str2 = it2.next();
            if (Integer.parseInt(b4.c(str2)) == keyEvent.getKeyCode()) {
                break;
            }
        }
        cVar.e(str2);
        t.c b5 = f50990e[i2].b(f50989d.section);
        Iterator<String> it3 = b5.d().iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            String next = it3.next();
            String c4 = b5.c(next);
            if (!TextUtils.isEmpty(c4) && c4.equals(str2)) {
                str = next;
                break;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("keyCode=");
        sb.append(str2);
        sb.append(" val=");
        sb.append(str);
        cVar.f(str);
        cVar.g(-1);
        return cVar;
    }

    public static Map c(String str) {
        HashMap hashMap = new HashMap();
        f(f50989d);
        t tVar = f50990e[0];
        t.c b4 = tVar.b(str);
        if (b4 != null && !e(b4)) {
            tVar.i(str);
            b4 = null;
        }
        if (b4 != null) {
            for (String str2 : b4.d()) {
                hashMap.put(str2, b4.c(str2));
            }
        }
        return hashMap;
    }

    private static File d(int i2) {
        String[] strArr = KeyMap.inifiles;
        if (strArr[i2] == null || strArr[i2].equals("")) {
            return null;
        }
        return new File(f50987b + e.F0 + strArr[i2]);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x007b, code lost:
        if (r3.equals(r1.section) != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean e(com.join.mgps.Util.t.c r3) {
        /*
            java.lang.String r3 = r3.f27834a
            java.lang.String r0 = "KEY"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto Lc
            goto L82
        Lc:
            java.lang.String r0 = "EMU_KEY_MAP"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L16
            goto L82
        L16:
            com.join.mgps.joystick.map.KeyMap$EmuMap r0 = com.join.mgps.joystick.map.KeyMap.EmuMap.getEmuMap(r3)
            com.join.mgps.joystick.map.KeyMap$EmuMap r1 = com.join.mgps.joystick.map.KeyMap.EmuMap.FBA
            java.lang.String r2 = r1.section
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L26
        L24:
            r0 = r1
            goto L7e
        L26:
            com.join.mgps.joystick.map.KeyMap$EmuMap r1 = com.join.mgps.joystick.map.KeyMap.EmuMap.FC
            java.lang.String r2 = r1.section
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L31
            goto L24
        L31:
            com.join.mgps.joystick.map.KeyMap$EmuMap r1 = com.join.mgps.joystick.map.KeyMap.EmuMap.SFC
            java.lang.String r2 = r1.section
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L3c
            goto L24
        L3c:
            com.join.mgps.joystick.map.KeyMap$EmuMap r1 = com.join.mgps.joystick.map.KeyMap.EmuMap.PSP
            java.lang.String r2 = r1.section
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L47
            goto L24
        L47:
            com.join.mgps.joystick.map.KeyMap$EmuMap r1 = com.join.mgps.joystick.map.KeyMap.EmuMap.GBA
            java.lang.String r2 = r1.section
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L52
            goto L24
        L52:
            com.join.mgps.joystick.map.KeyMap$EmuMap r1 = com.join.mgps.joystick.map.KeyMap.EmuMap.MD
            java.lang.String r2 = r1.section
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L5d
            goto L24
        L5d:
            com.join.mgps.joystick.map.KeyMap$EmuMap r1 = com.join.mgps.joystick.map.KeyMap.EmuMap.PS
            java.lang.String r2 = r1.section
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L68
            goto L24
        L68:
            com.join.mgps.joystick.map.KeyMap$EmuMap r1 = com.join.mgps.joystick.map.KeyMap.EmuMap.WSC
            java.lang.String r2 = r1.section
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L73
            goto L24
        L73:
            com.join.mgps.joystick.map.KeyMap$EmuMap r1 = com.join.mgps.joystick.map.KeyMap.EmuMap.GBC
            java.lang.String r2 = r1.section
            boolean r3 = r3.equals(r2)
            if (r3 == 0) goto L7e
            goto L24
        L7e:
            if (r0 != 0) goto L82
            r3 = 0
            return r3
        L82:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.join.mgps.joystick.map.d.e(com.join.mgps.Util.t$c):boolean");
    }

    public static synchronized void f(KeyMap.EmuMap emuMap) {
        synchronized (d.class) {
            f50987b = u.f27845d + "/MG/config";
            f50989d = emuMap;
            for (int i2 = 0; i2 < f50990e.length; i2++) {
                File d4 = d(i2);
                if (d4 != null) {
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
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                    f50990e[i2] = new t(absolutePath);
                    h(i2);
                }
            }
        }
    }

    public static synchronized void g(int i2, String str, String str2, String str3) {
        synchronized (d.class) {
            t tVar = f50990e[i2];
            tVar.g(str, str2, str3);
            tVar.j();
        }
    }

    private static void h(int i2) {
        t tVar = f50990e[i2];
        int i4 = 0;
        while (true) {
            String[] strArr = KeyMap.sections;
            if (i4 >= strArr.length) {
                return;
            }
            String str = strArr[i4];
            t.c b4 = tVar.b(str);
            if (b4 != null && !e(b4)) {
                tVar.i(str);
                b4 = null;
            }
            if (b4 == null) {
                t.c cVar = new t.c(str);
                tVar.f(cVar);
                i(cVar);
            }
            i4++;
        }
    }

    private static void i(t.c cVar) {
        String str = cVar.f27834a;
        int i2 = 0;
        if (str.equals(KeyMap.keySection)) {
            while (true) {
                String[] strArr = KeyMap.keysKey;
                if (i2 >= strArr.length) {
                    return;
                }
                cVar.e(strArr[i2], String.valueOf(KeyMap.defJoystickKeys[i2]));
                i2++;
            }
        } else if (!str.equals(KeyMap.emuKeyMapSection)) {
            KeyMap.EmuMap emuMap = KeyMap.EmuMap.getEmuMap(str);
            if (emuMap == null) {
                return;
            }
            for (Map.Entry<String, String> entry : emuMap.map.entrySet()) {
                cVar.e(entry.getKey(), entry.getValue());
            }
        } else {
            while (true) {
                String[] strArr2 = KeyMap.emuKeysKey;
                if (i2 >= strArr2.length) {
                    return;
                }
                cVar.e(strArr2[i2], String.valueOf(KeyMap.emuDefKeysValue[i2]));
                i2++;
            }
        }
    }

    public static synchronized void j() {
        synchronized (d.class) {
            int i2 = 0;
            while (true) {
                t[] tVarArr = f50990e;
                if (i2 < tVarArr.length) {
                    if (tVarArr[i2] != null) {
                        tVarArr[i2].j();
                        try {
                            k(f50991f, f50989d, d(i2).getAbsolutePath());
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                    i2++;
                }
            }
        }
    }

    private static void k(Context context, KeyMap.EmuMap emuMap, String str) throws Exception {
        try {
            KeyMapActions.class.getDeclaredMethod("saveStat", Context.class, KeyMap.EmuMap.class, String.class).invoke(null, context, emuMap, str);
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
        }
    }

    public static boolean l(int i2, Boolean... boolArr) {
        f(f50989d);
        t tVar = f50990e[i2];
        String[] strArr = KeyMap.emuKeysKey;
        boolean c4 = r1.c(tVar.c(KeyMap.emuKeyMapSection, strArr[0]), true);
        if (boolArr == null || boolArr.length == 0) {
            return c4;
        }
        boolean booleanValue = boolArr[0].booleanValue();
        g(i2, KeyMap.emuKeyMapSection, strArr[0], String.valueOf(booleanValue));
        return booleanValue;
    }

    public static void m(Context context, KeyMap.EmuMap emuMap, Map<String, String> map) {
        f50991f = context;
        f50989d = emuMap;
        if (emuMap != null) {
            n(emuMap.section, map);
        }
    }

    public static void n(String str, Map<String, String> map) {
        KeyMap.EmuMap emuMap = f50989d;
        if (emuMap != null) {
            f(emuMap);
        } else {
            f(null);
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String str2 = map.get(key);
            t[] tVarArr = f50990e;
            if (tVarArr[0] != null) {
                tVarArr[0].g(str, key, str2);
            }
        }
        j();
    }

    public static void o(Context context, KeyMap.EmuMap emuMap, Map<String, String> map) {
        f50991f = context;
        f50989d = emuMap;
        if (emuMap != null) {
            p(emuMap.section, map);
        }
    }

    public static void p(String str, Map<String, String> map) {
        KeyMap.EmuMap emuMap = f50989d;
        if (emuMap != null) {
            f(emuMap);
        } else {
            f(null);
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String str2 = map.get(key);
            t[] tVarArr = f50990e;
            if (tVarArr[0] != null) {
                tVarArr[0].g(str, str2, key);
            }
        }
        j();
    }

    public Map a() {
        KeyMap.EmuMap emuMap = f50989d;
        return emuMap == null ? new HashMap() : c(emuMap.section);
    }
}
