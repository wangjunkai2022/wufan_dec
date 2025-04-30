package com.mob.tools.a;

import android.app.ActivityManager;
import android.app.Application;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.location.Location;
import android.net.Proxy;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.mob.MobSDK;
import com.mob.commons.o;
import com.mob.commons.r;
import com.mob.tools.MobLog;
import com.mob.tools.log.NLog;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.HashonHelper;
import com.mob.tools.utils.NtFetcher;
import com.mob.tools.utils.ReflectHelper;
import com.mob.tools.utils.ResHelper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.BlockingQueue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes4.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static b f53367b;

    /* renamed from: a  reason: collision with root package name */
    private Context f53368a;

    /* renamed from: c  reason: collision with root package name */
    private Object f53369c;

    /* renamed from: d  reason: collision with root package name */
    private long f53370d = 0;

    private b(Context context) {
        this.f53368a = context.getApplicationContext();
    }

    public static Object U() {
        return r.c();
    }

    public static Context V() {
        return r.b();
    }

    public static synchronized b a(Context context) {
        b bVar;
        synchronized (b.class) {
            if (f53367b == null && context != null) {
                f53367b = new b(context);
            }
            bVar = f53367b;
        }
        return bVar;
    }

    private boolean aZ() {
        try {
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
        if (new File(o.a("025g5fgdifg.dilg!df(eeg'ehdc ei4dhdcfgSi:dheldfOeQdj")).exists()) {
            return true;
        }
        String[] strArr = {o.a("012gh-df2d8df:gHedecdgdfedSg"), o.a("016gh(df2dMdfPg1edecdgdfed8g3fcdedk;g"), o.a("017gh.dfFdYdf*gFedecdgdfed9g[dlfcdedkXg"), o.a("006gQfgfcdedkLg"), o.a("008gNfgdc8gPfcdedk@g"), o.a("012gFfgdifg_dilgOfcdedk+g"), o.a("017gCfgdifgTdilg)fcdedk?gPel1i_dlHdg"), o.a("021gTfgdifg<dilg=fcdedk;g9fhdfdeedfgdffhTig"), o.a("016g+fgdifgDdilg6fgChg>dlfcdedkEg"), o.a("025g^fgdifgVdilgYdcfgdhPg;fdIiUhidk8iihThidhecec;dg"), o.a("013g5fgdifgKdilg3dlfcdedk_g"), o.a("013gNfgdifg0dilg>fgfcdedk8g"), o.a("012gji]dk!h_ecdhUgIfcdedk0g"), o.a("006g[dgdfdgWci"), o.a("005gh!dfYdPdf"), o.a("004ghij")};
        for (int i2 = 0; i2 < 16; i2++) {
            if (new File(strArr[i2], o.a("002Gfgdc")).exists()) {
                return true;
            }
        }
        for (int i4 = 0; i4 < 16; i4++) {
            if (new File(strArr[i4], o.a("007Sfcdcfgdifcecdl")).exists()) {
                return true;
            }
        }
        for (int i5 = 0; i5 < 16; i5++) {
            if (new File(strArr[i5], o.a("006l,dfffdefgdj")).exists()) {
                return true;
            }
        }
        return false;
    }

    private String ba() {
        try {
            String f4 = f();
            String model = DeviceHelper.getInstance(this.f53368a).getModel();
            return Data.byteToHex(Data.SHA1(((String) null) + ":" + f4 + ":" + model));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    private String bb() throws Throwable {
        HashMap<String, Object> hashMap;
        HashMap hashMap2;
        try {
            hashMap = bc();
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            hashMap = null;
        }
        if (hashMap == null || (hashMap2 = (HashMap) hashMap.get(o.a("010hijOdedg$i<egdkfhec"))) == null) {
            return null;
        }
        try {
            String str = (String) hashMap2.get("iemt");
            if (TextUtils.isEmpty(str) && Build.VERSION.SDK_INT >= 9) {
                str = (String) hashMap2.get("snmt");
            }
            return Data.byteToHex(Data.SHA1(((String) null) + ":" + str + ":" + ((String) hashMap2.get(o.a("005l;ec[hi'ed")))));
        } catch (Throwable th2) {
            MobLog.getInstance().d(th2);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0044 A[Catch: all -> 0x0064, TRY_LEAVE, TryCatch #6 {all -> 0x0081, blocks: (B:3:0x0001, B:5:0x0013, B:22:0x0050, B:24:0x005a, B:16:0x0034, B:19:0x003e, B:21:0x0044, B:18:0x003a), top: B:40:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005a A[Catch: all -> 0x0081, TRY_LEAVE, TryCatch #6 {all -> 0x0081, blocks: (B:3:0x0001, B:5:0x0013, B:22:0x0050, B:24:0x005a, B:16:0x0034, B:19:0x003e, B:21:0x0044, B:18:0x003a), top: B:40:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.HashMap<java.lang.String, java.lang.Object> bc() {
        /*
            r9 = this;
            r0 = 0
            android.content.Context r1 = r9.f53368a     // Catch: java.lang.Throwable -> L81
            java.lang.String r2 = "0140dgec;llghZfcfg(g!elRhNdcdeRh"
            java.lang.String r2 = com.mob.commons.o.a(r2)     // Catch: java.lang.Throwable -> L81
            java.io.File r1 = com.mob.tools.utils.ResHelper.getDataCacheFile(r1, r2)     // Catch: java.lang.Throwable -> L81
            boolean r2 = r1.exists()     // Catch: java.lang.Throwable -> L81
            if (r2 == 0) goto L89
            boolean r2 = r1.isFile()     // Catch: java.lang.Throwable -> L81
            if (r2 == 0) goto L89
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L2c
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L2c
            java.io.ObjectInputStream r3 = new java.io.ObjectInputStream     // Catch: java.lang.Throwable -> L2a
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L2a
            java.lang.Object r4 = r3.readObject()     // Catch: java.lang.Throwable -> L2e
            java.util.HashMap r4 = (java.util.HashMap) r4     // Catch: java.lang.Throwable -> L2e
            goto L2f
        L2a:
            r3 = r0
            goto L2e
        L2c:
            r2 = r0
            r3 = r2
        L2e:
            r4 = r0
        L2f:
            r5 = 1
            r6 = 0
            r7 = 2
            if (r4 == 0) goto L3a
            boolean r8 = r4.isEmpty()     // Catch: java.lang.Throwable -> L64
            if (r8 == 0) goto L3e
        L3a:
            java.util.HashMap r4 = r9.a(r1)     // Catch: java.lang.Throwable -> L64
        L3e:
            boolean r1 = r4.isEmpty()     // Catch: java.lang.Throwable -> L64
            if (r1 != 0) goto L5a
            java.lang.String r1 = "010hij5dedgLi]egdkfhec"
            java.lang.String r1 = com.mob.commons.o.a(r1)     // Catch: java.lang.Throwable -> L64
            java.lang.Object r1 = r4.get(r1)     // Catch: java.lang.Throwable -> L64
            java.util.HashMap r1 = (java.util.HashMap) r1     // Catch: java.lang.Throwable -> L64
            java.io.Closeable[] r4 = new java.io.Closeable[r7]     // Catch: java.lang.Throwable -> L81
            r4[r6] = r2     // Catch: java.lang.Throwable -> L81
            r4[r5] = r3     // Catch: java.lang.Throwable -> L81
            com.mob.commons.r.a(r4)     // Catch: java.lang.Throwable -> L81
            return r1
        L5a:
            java.io.Closeable[] r1 = new java.io.Closeable[r7]     // Catch: java.lang.Throwable -> L81
            r1[r6] = r2     // Catch: java.lang.Throwable -> L81
            r1[r5] = r3     // Catch: java.lang.Throwable -> L81
            com.mob.commons.r.a(r1)     // Catch: java.lang.Throwable -> L81
            goto L89
        L64:
            r1 = move-exception
            com.mob.tools.log.NLog r4 = com.mob.tools.MobLog.getInstance()     // Catch: java.lang.Throwable -> L76
            r4.w(r1)     // Catch: java.lang.Throwable -> L76
            java.io.Closeable[] r1 = new java.io.Closeable[r7]     // Catch: java.lang.Throwable -> L81
            r1[r6] = r2     // Catch: java.lang.Throwable -> L81
            r1[r5] = r3     // Catch: java.lang.Throwable -> L81
            com.mob.commons.r.a(r1)     // Catch: java.lang.Throwable -> L81
            goto L89
        L76:
            r1 = move-exception
            java.io.Closeable[] r4 = new java.io.Closeable[r7]     // Catch: java.lang.Throwable -> L81
            r4[r6] = r2     // Catch: java.lang.Throwable -> L81
            r4[r5] = r3     // Catch: java.lang.Throwable -> L81
            com.mob.commons.r.a(r4)     // Catch: java.lang.Throwable -> L81
            throw r1     // Catch: java.lang.Throwable -> L81
        L81:
            r1 = move-exception
            com.mob.tools.log.NLog r2 = com.mob.tools.MobLog.getInstance()
            r2.w(r1)
        L89:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.b.bc():java.util.HashMap");
    }

    private String bd() throws Throwable {
        Throwable th;
        ObjectInputStream objectInputStream;
        File cacheRootFile;
        File file = new File(G(), o.a("008=eh)cDdfdhTi!ehfihj"));
        if (file.exists()) {
            File file2 = new File(file, o.a("003Bel1h?dj"));
            if (file2.exists() && (cacheRootFile = ResHelper.getCacheRootFile(this.f53368a, o.a("003;elYhQdj"))) != null && file2.renameTo(cacheRootFile)) {
                file2.delete();
            }
        }
        File cacheRootFile2 = ResHelper.getCacheRootFile(this.f53368a, o.a("003Pel8hTdj"));
        String str = null;
        if (cacheRootFile2 != null && !cacheRootFile2.exists()) {
            return null;
        }
        try {
            objectInputStream = new ObjectInputStream(new FileInputStream(cacheRootFile2));
            try {
                Object readObject = objectInputStream.readObject();
                if (readObject != null && (readObject instanceof char[])) {
                    str = String.valueOf((char[]) readObject);
                }
                r.a(objectInputStream);
                return str;
            } catch (Throwable th2) {
                th = th2;
                r.a(objectInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            objectInputStream = null;
        }
    }

    private HashMap<String, String> be() {
        try {
            return (HashMap) ResHelper.readObjectFromFile(ResHelper.getDataCacheFile(this.f53368a, o.a("004+eldfdkfg")).getAbsolutePath());
        } catch (Throwable th) {
            try {
                MobLog.getInstance().w(th);
                ResHelper.getDataCacheFile(this.f53368a, o.a("004Xeldfdkfg")).delete();
            } catch (Throwable th2) {
                MobLog.getInstance().w(th2);
            }
            return null;
        }
    }

    private Object bf() {
        Object d4;
        try {
            if (this.f53369c != null && System.currentTimeMillis() - this.f53370d <= 5000) {
                return this.f53369c;
            }
            if (!f(o.a("041Gdfdk6hSdhecde0h0el_ei<dhUlSdefgfgdeecdkelejgggggdehehddggflejgeehgdddekflggejeiegflef")) || (d4 = d("phone")) == null) {
                return null;
            }
            this.f53369c = ReflectHelper.invokeInstanceMethod(d4, o.a("015NffHid.gg i)ededekecdgdf_dXdeecdk"), new Object[0]);
            this.f53370d = System.currentTimeMillis();
            return this.f53369c;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public String A() {
        return a(false);
    }

    public String B() {
        return this.f53368a.getPackageName();
    }

    public String C() {
        try {
            ApplicationInfo applicationInfo = this.f53368a.getApplicationInfo();
            String str = applicationInfo.name;
            if (str != null) {
                if (Build.VERSION.SDK_INT < 25 || str.endsWith(".*")) {
                    return str;
                }
                try {
                    ReflectHelper.importClass(str);
                } catch (Throwable unused) {
                }
            }
            int i2 = applicationInfo.labelRes;
            if (i2 > 0) {
                return this.f53368a.getString(i2);
            }
            return String.valueOf(applicationInfo.nonLocalizedLabel);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return "";
        }
    }

    public int D() {
        try {
            PackageInfo pInfo = DeviceHelper.getInstance(this.f53368a).getPInfo(B(), 0);
            if (Build.VERSION.SDK_INT >= 28) {
                return (int) pInfo.getLongVersionCode();
            }
            return pInfo.versionCode;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return 0;
        }
    }

    public String E() {
        try {
            return DeviceHelper.getInstance(this.f53368a).getPInfo(B(), 0).versionName;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return "1.0";
        }
    }

    public ArrayList<String> F() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (!o.a("005li]degcdc").equalsIgnoreCase(e())) {
            try {
                Object a4 = a(o.a("016elDiceddefgXd1icDeTdfdgdjdfffGi3fg"));
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader((InputStream) ReflectHelper.invokeInstanceMethod(a4, o.a("014Yff9idJegdkBe8dcSd[eh6dKdhHiWdfPl"), new Object[0]), "utf-8"));
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    String trim = readLine.trim();
                    if (trim.length() > 8 && trim.substring(0, 8).equalsIgnoreCase(o.a("008e=dfdgdjdfff[if"))) {
                        String trim2 = trim.substring(8).trim();
                        if (!TextUtils.isEmpty(trim2)) {
                            arrayList.add(trim2);
                        }
                    }
                }
                bufferedReader.close();
                if (a4 != null) {
                    ReflectHelper.invokeInstanceMethod(a4, o.a("007hi%fg*d?dhecdi"), new Object[0]);
                }
            } catch (Throwable unused) {
            }
        }
        return arrayList;
    }

    public String G() {
        try {
            if (Build.VERSION.SDK_INT >= 29 && this.f53368a.getApplicationInfo().targetSdkVersion >= 29 && "mounted".equals(Environment.getExternalStorageState())) {
                return this.f53368a.getExternalFilesDir(null).getAbsolutePath();
            }
            return this.f53368a.getFilesDir().getAbsolutePath();
        } catch (Throwable unused) {
            return null;
        }
    }

    public String H() throws Throwable {
        return null;
    }

    public synchronized String I() {
        String[] J;
        String str = null;
        if (com.mob.commons.b.j()) {
            if (Build.VERSION.SDK_INT < 29 && f(o.a("035BdfdkMhPdhecdeGhLel-eiOdhZl*defgfgdeecdkelgegdejfiddghhdflefgdddeheiejeigd"))) {
                Object d4 = d("phone");
                if (d4 == null) {
                    return null;
                }
                str = b(d4);
            }
            if ((str == null || str.length() < 15) && (J = J()) != null && J.length > 0 && J[0].length() >= 15) {
                str = J[0];
            }
            return str;
        }
        return null;
    }

    public synchronized String[] J() {
        String[] split;
        if (com.mob.commons.b.j()) {
            if (Build.VERSION.SDK_INT < 29 && f(o.a("0350dfdkJhYdhecdeZh$elMei'dh,l%defgfgdeecdkelgegdejfiddghhdflefgdddeheiejeigd"))) {
                String b4 = b(o.a("021PfffgNl6elfgde l7elec]ei2dhdfHd=ecdheldeQlNfgde"));
                ArrayList arrayList = new ArrayList();
                for (String str : b4.split(",")) {
                    if (!TextUtils.isEmpty(str) && !arrayList.contains(str)) {
                        arrayList.add(str);
                    }
                }
                if (arrayList.size() > 0) {
                    return (String[]) arrayList.toArray(new String[arrayList.size()]);
                }
            }
            return null;
        }
        return null;
    }

    public int K() {
        try {
            Object bf = bf();
            if (bf != null && !o.a("016Ygg9hl4dfgg1iLededekecdgdf,d%deecdk").equals(bf.getClass().getSimpleName())) {
                return ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(bf, o.a("0065ff@idUggdeWh"), new Object[0]), -1)).intValue();
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return -1;
    }

    public int L() {
        try {
            Object bf = bf();
            if (bf != null && !o.a("016?ggIhlNdfgg]i9ededekecdgdfCdMdeecdk").equals(bf.getClass().getSimpleName())) {
                return ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(bf, o.a("0063ff;id^ekdfdg"), new Object[0]), -1)).intValue();
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return -1;
    }

    public int M() {
        try {
            Object bf = bf();
            if (bf != null && !o.a("016Kgg.hlEdfgg6i<ededekecdgdf9dDdeecdk").equals(bf.getClass().getSimpleName())) {
                return ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(bf, o.a("006PffOid:ghfgdg"), new Object[0]), -1)).intValue();
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int N() {
        /*
            r4 = this;
            r0 = -1
            java.lang.Object r1 = r4.bf()     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L3f
            java.lang.String r2 = "016JggPhlKdfggZiVededekecdgdfAd2deecdk"
            java.lang.String r2 = com.mob.commons.o.a(r2)     // Catch: java.lang.Throwable -> L37
            java.lang.Class r3 = r1.getClass()     // Catch: java.lang.Throwable -> L37
            java.lang.String r3 = r3.getSimpleName()     // Catch: java.lang.Throwable -> L37
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L37
            if (r2 == 0) goto L3f
            java.lang.String r2 = "022[ffYid fjdffg_i?eh(d'dfFd]deecdkekdf_d>deHdKdc4hi"
            java.lang.String r2 = com.mob.commons.o.a(r2)     // Catch: java.lang.Throwable -> L37
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L37
            java.lang.Object r1 = com.mob.tools.utils.ReflectHelper.invokeInstanceMethod(r1, r2, r3)     // Catch: java.lang.Throwable -> L37
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L37
            java.lang.Object r1 = com.mob.tools.utils.ResHelper.forceCast(r1, r2)     // Catch: java.lang.Throwable -> L37
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L37
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L37
            goto L40
        L37:
            r1 = move-exception
            com.mob.tools.log.NLog r2 = com.mob.tools.MobLog.getInstance()
            r2.d(r1)
        L3f:
            r1 = -1
        L40:
            r2 = 2147483647(0x7fffffff, float:NaN)
            if (r1 != r2) goto L46
            goto L47
        L46:
            r0 = r1
        L47:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.b.N():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int O() {
        /*
            r4 = this;
            r0 = -1
            java.lang.Object r1 = r4.bf()     // Catch: java.lang.Throwable -> L37
            if (r1 == 0) goto L3f
            java.lang.String r2 = "016Vgg0hl=dfggFi)ededekecdgdf d deecdk"
            java.lang.String r2 = com.mob.commons.o.a(r2)     // Catch: java.lang.Throwable -> L37
            java.lang.Class r3 = r1.getClass()     // Catch: java.lang.Throwable -> L37
            java.lang.String r3 = r3.getSimpleName()     // Catch: java.lang.Throwable -> L37
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L37
            if (r2 == 0) goto L3f
            java.lang.String r2 = "023$ff1idZfjdffgEiLeh6dJdf>d*deecdkekecdkffde9d.dcXhi"
            java.lang.String r2 = com.mob.commons.o.a(r2)     // Catch: java.lang.Throwable -> L37
            r3 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L37
            java.lang.Object r1 = com.mob.tools.utils.ReflectHelper.invokeInstanceMethod(r1, r2, r3)     // Catch: java.lang.Throwable -> L37
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L37
            java.lang.Object r1 = com.mob.tools.utils.ResHelper.forceCast(r1, r2)     // Catch: java.lang.Throwable -> L37
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.lang.Throwable -> L37
            int r1 = r1.intValue()     // Catch: java.lang.Throwable -> L37
            goto L40
        L37:
            r1 = move-exception
            com.mob.tools.log.NLog r2 = com.mob.tools.MobLog.getInstance()
            r2.d(r1)
        L3f:
            r1 = -1
        L40:
            r2 = 2147483647(0x7fffffff, float:NaN)
            if (r1 != r2) goto L46
            goto L47
        L46:
            r0 = r1
        L47:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.b.O():int");
    }

    public int P() {
        try {
            Object bf = bf();
            if (bf != null && o.a("016!gg=hlUdfgg2i$ededekecdgdf7d-deecdk").equals(bf.getClass().getSimpleName())) {
                return ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(bf, o.a("0169ffOid$fjdffg-i0ehBdOdfXd$deecdkeg'h"), new Object[0]), -1)).intValue();
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return -1;
    }

    public int Q() {
        try {
            Object bf = bf();
            if (bf != null && o.a("016<ggIhl dfgg0i3ededekecdgdfPdFdeecdk").equals(bf.getClass().getSimpleName())) {
                return ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(bf, o.a("0114ffVidYehdifgZdil(egBh"), new Object[0]), -1)).intValue();
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return -1;
    }

    public int R() {
        try {
            Object bf = bf();
            if (bf != null && o.a("016Ggg^hl7dfgg,i_ededekecdgdfQd*deecdk").equals(bf.getClass().getSimpleName())) {
                return ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(bf, o.a("012+ff8id8ef8idIfdecdhdjeg'h"), new Object[0]), -1)).intValue();
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return -1;
    }

    public ArrayList<HashMap<String, Object>> S() {
        Object d4;
        List list;
        try {
            if (!f(o.a("041Zdfdk3h5dhecde)h4el+eiHdhEl1defgfgdeecdkelejgggggdehehddggflejgeehgdddekflggejeiegflef")) || aq() || (d4 = d("phone")) == null || (list = (List) ReflectHelper.invokeInstanceMethod(d4, o.a("022Rff?id)ef*i<deffTcNfcecdhdedkffggTiBededegdkfhec"), new Object[0])) == null || list.size() <= 0) {
                return null;
            }
            ArrayList<HashMap<String, Object>> arrayList = new ArrayList<>();
            for (Object obj : list) {
                int intValue = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(obj, o.a("006+ffNidNggde?h"), new Object[0]), -1)).intValue();
                int intValue2 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(obj, o.a("0067ffKid0ekdfdg"), new Object[0]), -1)).intValue();
                int intValue3 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(obj, o.a("007?ffIid*gefgfgde"), new Object[0]), -1)).intValue();
                int intValue4 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(obj, o.a("006WffUid7ghfgdg"), new Object[0]), -1)).intValue();
                int intValue5 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(obj, o.a("014?ff0idHef*id@fdecdhdjeidi'ei"), new Object[0]), -1)).intValue();
                if (intValue != -1 && intValue2 != -1) {
                    HashMap<String, Object> hashMap = new HashMap<>();
                    hashMap.put(o.a("004Idg]iGeded"), Integer.valueOf(intValue));
                    hashMap.put(o.a("003Beddfdg"), Integer.valueOf(intValue2));
                    hashMap.put(o.a("004<dhfgfgde"), Integer.valueOf(intValue3));
                    hashMap.put(o.a("003eZfgdg"), Integer.valueOf(intValue4));
                    hashMap.put(o.a("011-dkZidEfdecdhdjeidi;ei"), Integer.valueOf(intValue5));
                    arrayList.add(hashMap);
                }
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
            return null;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public String T() {
        String a4 = o.a("009]eeeffigdfkegefgdfi");
        try {
            UiModeManager uiModeManager = (UiModeManager) d("uimode");
            if (uiModeManager != null) {
                switch (uiModeManager.getCurrentModeType()) {
                    case 1:
                        a4 = o.a("0059efflddeeeg");
                        break;
                    case 2:
                        a4 = o.a("004Afigdehhj");
                        break;
                    case 3:
                        a4 = o.a("003<ggejge");
                        break;
                    case 4:
                        a4 = o.a("010Yeigdekgdgfegehegflef");
                        break;
                    case 5:
                        a4 = o.a("009Oejghghekegejefgggd");
                        break;
                    case 6:
                        a4 = o.a("005Yhcejeigghd");
                        break;
                    case 7:
                        a4 = o.a("009Lgfgehdgdejfiehgdei");
                        break;
                    default:
                        a4 = o.a("009Oeeeffigdfkegefgdfi");
                        break;
                }
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return a4;
    }

    public HashMap<String, Object> W() {
        Object d4;
        Object invokeInstanceMethod;
        try {
            if (!f(o.a("036!dfdk2hGdhecdeCh]el4ei!dh0lCdefgfgdeecdkelejgggggdehehddhcegfkegddeheiejeigd")) || (d4 = d(NetworkUtil.NETWORK_TYPE_WIFI)) == null || (invokeInstanceMethod = ReflectHelper.invokeInstanceMethod(d4, o.a("017>ffIid]ggecdkdk2i8dg!d;deecdkegdkfhec"), new Object[0])) == null) {
                return null;
            }
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("bsmt", c());
            hashMap.put("ssmt", b());
            try {
                hashMap.put(o.a("006cHdeRhhiVdk"), Boolean.valueOf(((Boolean) ReflectHelper.invokeInstanceMethod(invokeInstanceMethod, o.a("013<ff0id?hddeOhhi3dkehehegfi"), new Object[0])).booleanValue()));
            } catch (Throwable unused) {
            }
            try {
                hashMap.put("spmt", Integer.valueOf(((Integer) ReflectHelper.invokeInstanceMethod(invokeInstanceMethod, o.a("012BffGid6ekdedkdjeh*eiih"), new Object[0])).intValue()));
            } catch (Throwable unused2) {
            }
            try {
                hashMap.put(o.a("009WdkXid4fdecdhdjeg5h"), Integer.valueOf(((Integer) ReflectHelper.invokeInstanceMethod(invokeInstanceMethod, o.a("012;ffWidIef'idGfdecdhdjegLh"), new Object[0])).intValue()));
            } catch (Throwable unused3) {
            }
            try {
                hashMap.put(o.a("0051ed8iji0ed"), Integer.valueOf(((Integer) ReflectHelper.invokeInstanceMethod(invokeInstanceMethod, o.a("007BffTid:gefgfgde"), new Object[0])).intValue()));
            } catch (Throwable unused4) {
            }
            try {
                hashMap.put(o.a("0095fhdhMik;dc7i^dkdgdi"), Integer.valueOf(((Integer) ReflectHelper.invokeInstanceMethod(invokeInstanceMethod, o.a("012?ff,id fkdh;ikCdcWi*dkdgdi"), new Object[0])).intValue()));
            } catch (Throwable unused5) {
            }
            return hashMap;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public ArrayList<HashMap<String, Object>> X() {
        Object d4;
        List list;
        String[] split;
        String[] split2;
        String trim;
        try {
            if (!f(o.a("036Adfdk1hJdhecde6hDel6eiLdhHlKdefgfgdeecdkelejgggggdehehddhcegfkegddeheiejeigd")) || (d4 = d(NetworkUtil.NETWORK_TYPE_WIFI)) == null || (list = (List) ReflectHelper.invokeInstanceMethod(d4, o.a("014Zff!idSehdgdfdkge9iWfgdcedUdTfg"), new Object[0])) == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT > 27) {
                split = o.a("086TehehegfijefjehehegfijedgdfAe'dffcdeeddeWdDde5iSfgjeedKiji$edjefhdhQikPdc^i-dkdgdijedgJcAdfdkdkGi!edhcde.hdcMjedg:i'dkEdiUdhfkdh;ikGfejedg%iNdk1diMdhfkdh4ik?gljeLd]deHli0fg2d^dfKle").split(",");
                split2 = o.a("031ji^dkdcFiFefdfZliVjeicec%ei_dhdf3d:ecdhfkdhde1iXdk.h!eddiefdf)li").split(",");
            } else {
                split = "SSID,BSSID,hessid,anqpDomainId,capabilities,level,frequency,channelWidth,centerFreq0,centerFreq1,timestamp,seen,isAutoJoinCandidate,numIpConfigFailures,blackListTimestamp,untrusted,numConnection,numUsage,distanceCm,distanceSdCm,flags".split(",");
                split2 = o.a("039)fddefhdeehfgdeSh)jeHjiLdkdcQiHefdfJliOjeec0ei8dhdfXdKecdhfkdhdeXi?dk;hMeddiefdfFli").split(",");
            }
            ArrayList<HashMap<String, Object>> arrayList = new ArrayList<>();
            for (Object obj : list) {
                HashMap<String, Object> hashMap = new HashMap<>();
                int length = split.length;
                String str = null;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    try {
                        trim = split[i2].trim();
                    } catch (Throwable unused) {
                    }
                    if (o.a("004Tehehegfi").equals(trim)) {
                        String str2 = (String) ReflectHelper.getInstanceField(obj, trim);
                        if (TextUtils.isEmpty(str2)) {
                            str = str2;
                            break;
                        }
                        hashMap.put(trim, str2);
                        str = str2;
                        i2++;
                    } else {
                        if (o.a("012Jdgdf)e_dffcdeeddeFd1de7iPfg").equals(trim)) {
                            String str3 = (String) ReflectHelper.getInstanceField(obj, trim);
                            if (str3 != null && str3.contains("[IBSS]")) {
                                str = null;
                                break;
                            }
                            hashMap.put(trim, str3);
                        } else {
                            hashMap.put(trim, ReflectHelper.getInstanceField(obj, trim));
                        }
                        i2++;
                    }
                }
                if (!TextUtils.isEmpty(str)) {
                    for (String str4 : split2) {
                        try {
                            String trim2 = str4.trim();
                            Object instanceField = ReflectHelper.getInstanceField(obj, trim2);
                            hashMap.put(trim2, instanceField == null ? null : instanceField.toString());
                        } catch (Throwable unused2) {
                        }
                    }
                    try {
                        hashMap.put(o.a("021FdefggjfegkglglgidggeeieigeOi-fgCeDecdk%hiOdh"), ReflectHelper.invokeInstanceMethod(obj, o.a("018@defggjfegkglglRl8dgge]iZfgYe1ecdk,hiSdh"), new Object[0]));
                    } catch (Throwable unused3) {
                    }
                    try {
                        if (Build.VERSION.SDK_INT < 28) {
                            List list2 = (List) ReflectHelper.getInstanceField(obj, o.a("009Zdfdk@ke!ekdedk8i2fg"));
                            hashMap.put(o.a("009VdfdkGkeWekdedkPi5fg"), list2 == null ? null : new ArrayList(list2));
                        }
                    } catch (Throwable unused4) {
                    }
                    arrayList.add(hashMap);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
        return null;
    }

    public boolean Y() {
        Object d4;
        try {
            if (!f(o.a("036.dfdk)hPdhecde^h(elTeiBdhFl!defgfgdeecdkelgghdejefhkgdddhcegfkegddeheiejeigd")) || (d4 = d(NetworkUtil.NETWORK_TYPE_WIFI)) == null) {
                return false;
            }
            return ((Boolean) ReflectHelper.invokeInstanceMethod(d4, o.a("009Kfg8d+dfdh?dZehdgdfdk"), new Object[0])).booleanValue();
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0033, code lost:
        r3.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0031, code lost:
        if (r5 == null) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.HashMap<java.lang.String, java.lang.Object> Z() {
        /*
            r9 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L87
            java.lang.String r2 = "013geHdhecdg:g.dg,eRdcdedkfhec"
            java.lang.String r2 = com.mob.commons.o.a(r2)     // Catch: java.lang.Throwable -> L87
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L87
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L87
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L87
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L87
            r3.<init>()     // Catch: java.lang.Throwable -> L87
            java.lang.String r4 = "010e)dhecdg]i.fgfgecdhfg"
            java.lang.String r4 = com.mob.commons.o.a(r4)     // Catch: java.lang.Throwable -> L87
            r0.put(r4, r3)     // Catch: java.lang.Throwable -> L87
            r4 = 0
        L24:
            r5 = r4
        L25:
            java.lang.String r6 = r2.readLine()     // Catch: java.lang.Throwable -> L87
            if (r6 == 0) goto L80
            boolean r7 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L87
            if (r7 == 0) goto L37
            if (r5 == 0) goto L24
            r3.add(r5)     // Catch: java.lang.Throwable -> L87
            goto L24
        L37:
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> L87
            java.lang.String r7 = "009eWdhecdgZi7fgfgecdh"
            java.lang.String r7 = com.mob.commons.o.a(r7)     // Catch: java.lang.Throwable -> L87
            boolean r7 = r6.startsWith(r7)     // Catch: java.lang.Throwable -> L87
            if (r7 == 0) goto L51
            if (r5 == 0) goto L4c
            r3.add(r5)     // Catch: java.lang.Throwable -> L87
        L4c:
            java.util.HashMap r5 = new java.util.HashMap     // Catch: java.lang.Throwable -> L87
            r5.<init>()     // Catch: java.lang.Throwable -> L87
        L51:
            java.lang.String r7 = ":"
            java.lang.String[] r6 = r6.split(r7)     // Catch: java.lang.Throwable -> L87
            if (r6 == 0) goto L25
            int r7 = r6.length     // Catch: java.lang.Throwable -> L87
            r8 = 1
            if (r7 <= r8) goto L25
            r7 = 0
            if (r5 != 0) goto L70
            r7 = r6[r7]     // Catch: java.lang.Throwable -> L87
            java.lang.String r7 = r7.trim()     // Catch: java.lang.Throwable -> L87
            r6 = r6[r8]     // Catch: java.lang.Throwable -> L87
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> L87
            r0.put(r7, r6)     // Catch: java.lang.Throwable -> L87
            goto L25
        L70:
            r7 = r6[r7]     // Catch: java.lang.Throwable -> L87
            java.lang.String r7 = r7.trim()     // Catch: java.lang.Throwable -> L87
            r6 = r6[r8]     // Catch: java.lang.Throwable -> L87
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> L87
            r5.put(r7, r6)     // Catch: java.lang.Throwable -> L87
            goto L25
        L80:
            r2.close()     // Catch: java.lang.Throwable -> L87
            r1.close()     // Catch: java.lang.Throwable -> L87
            goto L8f
        L87:
            r1 = move-exception
            com.mob.tools.log.NLog r2 = com.mob.tools.MobLog.getInstance()
            r2.d(r1)
        L8f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.b.Z():java.util.HashMap");
    }

    public String aA() {
        try {
            return b(o.a("017-dhecelfcecdfdh%h8elVeSeddfQdSfhecdhAl"));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public int aB() {
        return NtFetcher.getInstance(this.f53368a).getDtNtType();
    }

    public String aC() {
        try {
            String string = Settings.Secure.getString(this.f53368a.getContentResolver(), "default_input_method");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return string.split(o.a("001g"))[0];
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public HashMap<String, Object> aD() {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            String aC = aC();
            hashMap.put(o.a("004Adkdf3li"), e(aC));
            hashMap.put(o.a("003eAdjff"), aC);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return hashMap;
    }

    public ArrayList<HashMap<String, Object>> aE() {
        ArrayList<HashMap<String, Object>> arrayList = new ArrayList<>();
        try {
            for (InputMethodInfo inputMethodInfo : ((InputMethodManager) d("input_method")).getInputMethodList()) {
                if (inputMethodInfo != null) {
                    HashMap<String, Object> hashMap = new HashMap<>();
                    hashMap.put(o.a("0043dkdfPli"), inputMethodInfo.loadLabel(this.f53368a.getPackageManager()));
                    hashMap.put(o.a("003eHdjff"), inputMethodInfo.getPackageName());
                    arrayList.add(hashMap);
                }
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return arrayList;
    }

    public String aF() {
        return Build.BRAND;
    }

    public boolean aG() {
        com.mob.tools.utils.e eVar;
        int i2;
        try {
            eVar = new com.mob.tools.utils.e();
            i2 = eVar.a(this.f53368a) == 1 ? 1 : 0;
            if (eVar.b(this.f53368a) == 1) {
                i2++;
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        if (i2 >= 2) {
            return true;
        }
        if (eVar.c(this.f53368a) == 1) {
            i2++;
        }
        if (i2 >= 2) {
            return true;
        }
        if (eVar.d(this.f53368a) == 1) {
            i2++;
        }
        if (i2 >= 2) {
            return true;
        }
        if (eVar.e(this.f53368a) == 1) {
            i2++;
        }
        if (i2 < 2 && i2 < 2) {
            if (eVar.f(this.f53368a) == 1) {
                i2++;
            }
            if (i2 >= 2) {
                return true;
            }
            if (eVar.g(this.f53368a) == 1) {
                i2++;
            }
            if (i2 >= 2) {
                return true;
            }
            if (eVar.a() == 1) {
                i2++;
            }
            return i2 >= 2 || i2 >= 2;
        }
        return true;
    }

    public HashMap<String, Object> aH() {
        BufferedReader bufferedReader;
        Throwable th;
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader(o.a("013geYdhecdgNglil)dedkfhec")));
                while (true) {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        String[] split = readLine.split("\\s+");
                        if (split != null && split.length > 1) {
                            String str = split[0];
                            long parseLong = Long.parseLong(split[1]) * 1024;
                            if ("MemTotal:".equals(str)) {
                                hashMap.put(o.a("015dSecWdUdfedgi9il?ecdhdiehdegcMi"), Long.valueOf(parseLong));
                            } else if (o.a("008XgiSilNfkdh iif").equals(str)) {
                                hashMap.put(o.a("014]fhdh3ii8gi5il_ecdhdiehdegcGi"), Long.valueOf(parseLong));
                            } else if (o.a("0137gi'il6ej[j!dfdeeddffced%if").equals(str)) {
                                hashMap.put(o.a("019>dfIjDdfdeeddffcedRi?gi4il3ecdhdiehdegc$i"), Long.valueOf(parseLong));
                            } else if (o.a("0072ejdgIdYdeNjif").equals(str)) {
                                hashMap.put(o.a("016]dfdg7d de2ji4giGilKecdhdiehdegcPi"), Long.valueOf(parseLong));
                            } else if ("Inactive:".equals(str)) {
                                hashMap.put(o.a("018'dedkdfdgJd]de3ji.gi]il]ecdhdiehdegcWi"), Long.valueOf(parseLong));
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            MobLog.getInstance().d(th);
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            return hashMap;
                        } catch (Throwable th3) {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Throwable th4) {
                                    MobLog.getInstance().d(th4);
                                }
                            }
                            throw th3;
                        }
                    }
                }
                bufferedReader.close();
            } catch (Throwable th5) {
                MobLog.getInstance().d(th5);
            }
        } catch (Throwable th6) {
            bufferedReader = null;
            th = th6;
        }
        return hashMap;
    }

    public boolean aI() {
        boolean z3;
        try {
            String e4 = e();
            String ag = ag();
            if (!TextUtils.isEmpty(ag) && ag.length() >= 3) {
                if (Integer.parseInt(ag.substring(1)) >= 12) {
                    z3 = true;
                    return o.a("0065dldedfec-lOde").equalsIgnoreCase(e4) && z3;
                }
            }
            z3 = false;
            if (o.a("0065dldedfec-lOde").equalsIgnoreCase(e4)) {
                return false;
            }
        } catch (Throwable th) {
            String message = th.getMessage();
            if (message == null) {
                message = "";
            }
            MobLog.getInstance().d(message, new Object[0]);
            return false;
        }
    }

    public boolean aJ() {
        return b(this.f53368a) != 0;
    }

    public String aK() {
        String str = "";
        try {
            if (Build.VERSION.SDK_INT >= 28) {
                str = Application.getProcessName();
            } else {
                Method declaredMethod = Class.forName(o.a("0267dfdk8h0dhecde2h_eldf?eeIelejdg7d@deIjQde$d@diei]cJdh8iSdfVh"), false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(null, new Object[0]);
                if (invoke instanceof String) {
                    str = (String) invoke;
                }
            }
        } catch (Throwable th) {
            NLog mobLog = MobLog.getInstance();
            mobLog.d("MobPush getProcessName: " + th, new Object[0]);
        }
        return str;
    }

    public long aL() {
        try {
            return DeviceHelper.getInstance(this.f53368a).getPInfo(B(), 0).lastUpdateTime;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return 0L;
        }
    }

    public String aM() {
        return Build.BOARD;
    }

    public String aN() {
        return Build.DEVICE;
    }

    public String aO() {
        return Build.DISPLAY;
    }

    public String aP() {
        return Build.FINGERPRINT;
    }

    public String aQ() {
        return Build.getRadioVersion();
    }

    public String aR() {
        Object obj;
        try {
            try {
                obj = DeviceHelper.invokeRuntimeExec(o.a("021RdgdfRd6icIgeWdhecdg=g fgDi?edfh1g9dgffdhecdcFe"));
                try {
                    InputStream inputStream = (InputStream) ReflectHelper.invokeInstanceMethod(obj, o.a("014)ffBid)egdkBe%dc;dYeh9d<dhEi6df%l"), new Object[0]);
                    r1 = inputStream != null ? new BufferedReader(new InputStreamReader(inputStream)).readLine() : null;
                } catch (Throwable th) {
                    th = th;
                    try {
                        MobLog.getInstance().d(th);
                        if (obj != null) {
                            ReflectHelper.invokeInstanceMethod(obj, o.a("007hi7fg0d9dhecdi"), new Object[0]);
                        }
                        return r1;
                    } catch (Throwable th2) {
                        if (obj != null) {
                            try {
                                ReflectHelper.invokeInstanceMethod(obj, o.a("007hi7fg0d9dhecdi"), new Object[0]);
                            } catch (Throwable unused) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                obj = null;
            }
            if (obj != null) {
                ReflectHelper.invokeInstanceMethod(obj, o.a("007hi7fg0d9dhecdi"), new Object[0]);
            }
        } catch (Throwable unused2) {
        }
        return r1;
    }

    public String aS() {
        try {
            Object invokeRuntimeExec = DeviceHelper.invokeRuntimeExec(o.a("0172dgdf5dJic7geEdhecdg*g<dgHeMdcdedkfhec"));
            InputStream inputStream = (InputStream) ReflectHelper.invokeInstanceMethod(invokeRuntimeExec, o.a("0142ff.idZegdk eGdc+d.ehPd,dh@iVdfQl"), new Object[0]);
            if (inputStream == null) {
                if (invokeRuntimeExec != null) {
                    ReflectHelper.invokeInstanceMethod(invokeRuntimeExec, o.a("007hi2fg5d(dhecdi"), new Object[0]);
                    return "";
                }
                return "";
            }
            StringBuffer stringBuffer = new StringBuffer();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                stringBuffer.append(readLine);
            }
            bufferedReader.close();
            String lowerCase = stringBuffer.toString().toLowerCase();
            if (invokeRuntimeExec != null) {
                try {
                    ReflectHelper.invokeInstanceMethod(invokeRuntimeExec, o.a("007hi2fg5d(dhecdi"), new Object[0]);
                } catch (Throwable unused) {
                }
            }
            return lowerCase;
        } catch (Throwable unused2) {
            return "";
        }
    }

    public String aT() {
        return com.mob.commons.b.d.c(this.f53368a);
    }

    public String aU() {
        return com.mob.commons.b.d.d(this.f53368a);
    }

    public String aV() {
        return com.mob.commons.b.d.e(this.f53368a);
    }

    public String aW() {
        return com.mob.commons.b.d.g(this.f53368a);
    }

    public String aX() {
        return com.mob.commons.b.d.f(this.f53368a);
    }

    public HashMap<String, Object> aY() {
        return com.mob.commons.b.d.a(this.f53368a);
    }

    public ArrayList<ArrayList<String>> aa() {
        ArrayList<ArrayList<String>> arrayList = new ArrayList<>();
        if (Build.VERSION.SDK_INT < 28) {
            try {
                FileReader fileReader = new FileReader(o.a("017ge?dhecdg4gdd diAgh:dhdeFjiZdhfg"));
                BufferedReader bufferedReader = new BufferedReader(fileReader);
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    } else if (!TextUtils.isEmpty(readLine)) {
                        String[] split = readLine.trim().split(" ");
                        if (split.length > 1) {
                            ArrayList<String> arrayList2 = new ArrayList<>();
                            for (String str : split) {
                                if (!TextUtils.isEmpty(str)) {
                                    arrayList2.add(str.trim());
                                }
                            }
                            arrayList.add(arrayList2);
                        }
                    }
                }
                bufferedReader.close();
                fileReader.close();
            } catch (Throwable th) {
                MobLog.getInstance().d(th.getMessage(), new Object[0]);
            }
        }
        return arrayList;
    }

    public int ab() {
        try {
            return Settings.System.getInt(this.f53368a.getContentResolver(), "screen_brightness");
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return -1;
        }
    }

    public int ac() {
        try {
            return Settings.System.getInt(this.f53368a.getContentResolver(), "screen_brightness_mode");
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return -1;
        }
    }

    public String ad() {
        String a4 = l.a(this.f53368a).a().a(o.a("0146dheceldjEi-dhdk.iOedelGkil]dc"), "0");
        return a4 == null ? "0" : a4;
    }

    public HashMap<String, HashMap<String, Long>> ae() {
        long availableBlocksLong;
        long freeBlocksLong;
        long blockCountLong;
        long blockSizeLong;
        HashMap<String, HashMap<String, Long>> hashMap = new HashMap<>();
        String[] strArr = {o.a("006^fg0hCdgdfdhVh"), o.a("004hFdfSd[df")};
        for (int i2 = 0; i2 < 2; i2++) {
            String str = strArr[i2];
            HashMap<String, Long> hashMap2 = new HashMap<>();
            hashMap2.put("available", -1L);
            hashMap2.put(o.a("004-fhdhCii"), -1L);
            hashMap2.put(o.a("005d9ecHdQdfed"), -1L);
            hashMap.put(str, hashMap2);
        }
        HashMap hashMap3 = new HashMap();
        try {
            String G = G();
            if (G != null) {
                hashMap3.put(o.a("0063fg4h9dgdfdh3h"), new StatFs(G));
            }
        } catch (Throwable unused) {
        }
        try {
            File dataDirectory = Environment.getDataDirectory();
            if (dataDirectory != null) {
                hashMap3.put(o.a("004h;dfDdNdf"), new StatFs(dataDirectory.getPath()));
            }
        } catch (Throwable unused2) {
        }
        for (Map.Entry entry : hashMap3.entrySet()) {
            StatFs statFs = (StatFs) entry.getValue();
            if (Build.VERSION.SDK_INT <= 18) {
                availableBlocksLong = statFs.getAvailableBlocks() * statFs.getBlockSize();
                freeBlocksLong = statFs.getFreeBlocks() * statFs.getBlockSize();
                blockCountLong = statFs.getBlockCount();
                blockSizeLong = statFs.getBlockSize();
            } else {
                availableBlocksLong = statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
                freeBlocksLong = statFs.getFreeBlocksLong() * statFs.getBlockSizeLong();
                blockCountLong = statFs.getBlockCountLong();
                blockSizeLong = statFs.getBlockSizeLong();
            }
            HashMap<String, Long> hashMap4 = hashMap.get(entry.getKey());
            hashMap4.put("available", Long.valueOf(availableBlocksLong));
            hashMap4.put(o.a("004:fhdh@ii"), Long.valueOf(freeBlocksLong));
            hashMap4.put(o.a("005d'ec0d+dfed"), Long.valueOf(blockCountLong * blockSizeLong));
        }
        return hashMap;
    }

    public HashMap<String, Long> af() {
        HashMap<String, Long> hashMap = new HashMap<>();
        hashMap.put("available", -1L);
        hashMap.put(o.a("005dUec3d2dfed"), -1L);
        hashMap.put(o.a("005Rdefgekecfd"), -1L);
        hashMap.put(o.a("009dc8dhSi>fg=c_eced1h"), -1L);
        try {
            Object d4 = d(o.a("008EdfdgJd de?jIde)dZdi"));
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            ReflectHelper.invokeInstanceMethod(d4, o.a("013Fff,id6gi=ilOecdhdiegdkfhec"), memoryInfo);
            hashMap.put("available", Long.valueOf(memoryInfo.availMem));
            if (Build.VERSION.SDK_INT >= 16) {
                hashMap.put(o.a("005dAec4dZdfed"), Long.valueOf(memoryInfo.totalMem));
            }
            hashMap.put(o.a("005>defgekecfd"), Long.valueOf(memoryInfo.lowMemory ? 1L : 0L));
            hashMap.put(o.a("009dc dh!i,fg1cGecedRh"), Long.valueOf(memoryInfo.threshold));
        } catch (Throwable unused) {
        }
        return hashMap;
    }

    public String ag() {
        return com.mob.tools.utils.b.a().b();
    }

    public int ah() {
        return -1;
    }

    public boolean ai() {
        BufferedReader bufferedReader;
        Throwable th;
        String[] strArr = {o.a("020SdgecMlKelRdSec3eShfec2cGdkfddcelHlCdfffdefgdj"), o.a("032hiJeldhecfcQj)eldfdk8h>dhecde5h$eldl!e?ecfg0ih?eldedkfgWdPdfeded,i3dh"), o.a("028Zecdhffel-liKecfddgdfPdXelNih!dl6e]ecfg8ih6el%l0dfdkdfffUiIdh"), o.a("027l>ec7i]elfg1c*degcdcdjdceldh$ihMdedh7i.dg;dIfg7dFecdhdfff!i")};
        for (int i2 = 0; i2 < 4; i2++) {
            if (l.a(this.f53368a).a().b(strArr[i2], 0) != null) {
                return true;
            }
        }
        try {
            throw new Exception("test");
        } catch (Throwable th2) {
            for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                if (stackTraceElement.getClassName().contains(o.a("035hiTeldhecfc5jCeldfdk0h]dhecde[hHeldlEe8ecfgGih(elhg>e*ecfgUihVfjdhde]h*ff.i"))) {
                    return true;
                }
            }
            try {
                try {
                    ClassLoader.getSystemClassLoader().loadClass(o.a("036hi;eldhecfcTjWeldfdkXhTdhecde;h?eldlTe)ecfg^ih*elhgSe_ecfg ih%hd]i=edZeiNdhfg")).newInstance();
                    try {
                        ClassLoader.getSystemClassLoader().loadClass(o.a("035hi9eldhecfc7j>eldfdkUh.dhecdeJh(eldl_eGecfg;ihHelhg!e,ecfg[ih!fjdhdeHh1ff2i")).newInstance();
                    } catch (IllegalAccessException | InstantiationException unused) {
                    }
                    return true;
                } catch (IllegalAccessException | InstantiationException unused2) {
                    return true;
                }
            } catch (Throwable unused3) {
                try {
                    bufferedReader = new BufferedReader(new FileReader(o.a("006geYdhecdg]g") + Process.myPid() + o.a("005glRdfYe;fg")));
                    boolean z3 = false;
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine != null && !z3) {
                                z3 = readLine.toLowerCase().contains(o.a("006EdlHe*ecfg,ih"));
                            } else {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e4) {
                                    MobLog.getInstance().d(e4);
                                }
                                return z3;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                MobLog.getInstance().d(th);
                                return false;
                            } finally {
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException e5) {
                                        MobLog.getInstance().d(e5);
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable th4) {
                    bufferedReader = null;
                    th = th4;
                }
            }
        }
    }

    public boolean aj() {
        return (this.f53368a.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public boolean ak() {
        boolean z3 = false;
        try {
            if (Build.VERSION.SDK_INT < 17 ? Settings.Secure.getInt(this.f53368a.getContentResolver(), "adb_enabled", 0) > 0 : Settings.Secure.getInt(this.f53368a.getContentResolver(), "adb_enabled", 0) > 0) {
                z3 = true;
            }
        } catch (Throwable unused) {
        }
        return z3;
    }

    public boolean al() {
        boolean z3 = false;
        try {
            if (Build.VERSION.SDK_INT < 17 ? Settings.Secure.getInt(this.f53368a.getContentResolver(), "development_settings_enabled", 0) > 0 : Settings.Secure.getInt(this.f53368a.getContentResolver(), "development_settings_enabled", 0) > 0) {
                z3 = true;
            }
        } catch (Throwable unused) {
        }
        return z3;
    }

    public boolean am() {
        Intent intent;
        try {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
            if (Build.VERSION.SDK_INT < 33) {
                intent = (Intent) ReflectHelper.invokeInstanceMethod(this.f53368a, o.a("016@dhTiGffdefg,diNdhge7iHdg%iNde*ji@dh"), new Object[]{null, intentFilter}, new Class[]{BroadcastReceiver.class, IntentFilter.class});
            } else {
                intent = (Intent) ReflectHelper.invokeInstanceMethod(this.f53368a, o.a("016Tdh;i.ffdefg>diJdhge!i2dgPi7de1jiZdh"), new Object[]{null, intentFilter, 4}, new Class[]{BroadcastReceiver.class, IntentFilter.class, Integer.TYPE});
            }
            return intent.getIntExtra("plugged", -1) == 2;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return false;
        }
    }

    public boolean an() {
        return false;
    }

    public boolean ao() {
        try {
            return (DeviceHelper.getInstance(this.f53368a).getPInfo(this.f53368a.getPackageName(), 1).applicationInfo.flags & 2) != 0;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return false;
        }
    }

    public boolean ap() {
        String host;
        int port;
        try {
            if (Build.VERSION.SDK_INT >= 14) {
                host = System.getProperty(o.a("014cddeHel@e<dhecdldihdecfgBd"));
                String property = System.getProperty(o.a("014cddeNel@eDdhecdldighecdhEd"));
                if (property == null) {
                    property = "-1";
                }
                try {
                    port = Integer.parseInt(property);
                } catch (Throwable unused) {
                    port = -1;
                }
            } else {
                host = Proxy.getHost(this.f53368a);
                port = Proxy.getPort(this.f53368a);
            }
            return (TextUtils.isEmpty(host) || port == -1) ? false : true;
        } catch (Throwable unused2) {
            return false;
        }
    }

    public boolean aq() {
        return (Build.VERSION.SDK_INT >= 29) && (this.f53368a.getApplicationInfo().targetSdkVersion >= 29);
    }

    public ArrayList<HashMap<String, String>> ar() {
        return null;
    }

    public String as() {
        try {
            String id = TimeZone.getDefault().getID();
            if (TextUtils.isEmpty(id)) {
                Configuration configuration = new Configuration();
                configuration.setToDefaults();
                Settings.System.getConfiguration(this.f53368a.getContentResolver(), configuration);
                Locale locale = configuration.locale;
                if (locale == null) {
                    locale = Locale.getDefault();
                }
                Calendar calendar = Calendar.getInstance(locale);
                return calendar != null ? calendar.getTimeZone().getID() : id;
            }
            return id;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public HashMap<String, Object> at() {
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            PackageManager packageManager = this.f53368a.getPackageManager();
            if (packageManager != null) {
                try {
                    hashMap.put("mbmt", Boolean.valueOf(packageManager.hasSystemFeature(o.a("026?dfdk=hYdhecde9hOelMc[dfdh<hJfddfdhHi7el!di7edUiec$ecdkdi"))));
                } catch (Throwable unused) {
                }
                try {
                    hashMap.put("wmt", Boolean.valueOf(packageManager.hasSystemFeature(o.a("021^dfdkPh'dhecde*h]elUcFdfdhIhRfddfdh?i=elfddefhde"))));
                } catch (Throwable unused2) {
                }
                try {
                    hashMap.put("gmt", Boolean.valueOf(packageManager.hasSystemFeature(o.a("029BdfdkNhJdhecde[hEel,cQdfdhLh;fddfdh?iZeledecdgdfTdYdeecdkelff4e@fg"))));
                } catch (Throwable unused3) {
                }
                try {
                    hashMap.put("nmt", Boolean.valueOf(packageManager.hasSystemFeature(o.a("020@dfdk^hBdhecde,h5el%c(dfdh-hDfddfdhTiUeldkfhdg"))));
                } catch (Throwable unused4) {
                }
                hashMap.put(o.a("003>ec,dXff"), Boolean.valueOf(packageManager.hasSystemFeature(o.a("025ZdfdkKhUdhecde)hNelXcNdfdhHh4fddfdhDi!eldcfgfcel:cHecfgJd"))));
            }
        } catch (Throwable unused5) {
        }
        return hashMap;
    }

    public HashMap<String, String> au() {
        HashMap<String, String> hashMap = new HashMap<>();
        String i2 = i(o.a("053gRfgdifgOghijOdedgZi6fgRg'fgdifg?dilgMdg*eXdc!gCdgAe_dcfeNgKdg]e6dcfhdh,ikgRfgdgdfeddedkffdddgdcdhddfhdhQik"));
        if (!TextUtils.isEmpty(i2)) {
            hashMap.put(o.a("012:dgdcdhdh3iTdkFd=ggYe$dchdgc"), i2);
        }
        String i4 = i(o.a("053gWfgdifgDghij9dedg^iGfg gMfgdifg5dilg?dgVe)dc*g@dg e.dcfeOg]dg@e9dcfhdhWikg8dgEeYdcdedkfhecddQl:dedkddfhdhBik"));
        if (!TextUtils.isEmpty(i4)) {
            hashMap.put(o.a("008l0dedkgg?ePdchdgc"), i4);
        }
        String i5 = i(o.a("053gZfgdifg(ghijFdedg4i'fg gKfgdifg2dilg4dgJeLdcZg9dgMe5dcfe9g+dg8eYdcfhdh,ikg]dg^eVdcdedkfhecddKlOdfdlddfhdhHik"));
        if (!TextUtils.isEmpty(i5)) {
            hashMap.put(o.a("008l+dfdlggIe5dchdgc"), i5);
        }
        return hashMap;
    }

    public String av() {
        try {
            return Build.VERSION.SDK_INT < 21 ? Build.CPU_ABI : Build.SUPPORTED_ABIS[0];
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public String aw() {
        try {
            return b(o.a("015Wdhecelfcdcdeed1h4elfheddfKjLecdh"));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00c7 A[Catch: all -> 0x00f6, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x00ff, blocks: (B:32:0x00bb, B:35:0x00c7), top: B:52:0x00bb }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a3 -> B:47:0x00bb). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.HashMap<java.lang.String, java.lang.Object> ax() {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.b.ax():java.util.HashMap");
    }

    public String ay() {
        try {
            return b(o.a("0204fffg:lOelYji4dhfgdeecdkelfcdffg$iOfcdfdk4h"));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public String az() {
        try {
            return b(o.a("016WdhecelGeFdhec0h+dcdg+d8elfcecdfdh7h"));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public synchronized String b() {
        String str = null;
        try {
            if (f(o.a("0362dfdk?hHdhecdeRh%elZei[dhKl:defgfgdeecdkelejgggggdehehddhcegfkegddeheiejeigd"))) {
                Object d4 = d(NetworkUtil.NETWORK_TYPE_WIFI);
                if (d4 == null) {
                    return null;
                }
                Object invokeInstanceMethod = ReflectHelper.invokeInstanceMethod(d4, o.a("017+ffIid4ggecdkdk(i(dg+d1deecdkegdkfhec"), new Object[0]);
                if (invokeInstanceMethod != null) {
                    String str2 = (String) ReflectHelper.invokeInstanceMethod(invokeInstanceMethod, o.a("007HffCid3ehehegfi"), new Object[0]);
                    if (str2 != null) {
                        str = str2.replace(m.a.f72569g, "");
                    }
                    return str;
                }
            }
        } finally {
            return null;
        }
        return null;
    }

    public synchronized String c() {
        try {
            if (f(o.a("036>dfdkEhXdhecde h>elBei9dh!lCdefgfgdeecdkelejgggggdehehddhcegfkegddeheiejeigd"))) {
                Object d4 = d(NetworkUtil.NETWORK_TYPE_WIFI);
                if (d4 == null) {
                    return null;
                }
                Object invokeInstanceMethod = ReflectHelper.invokeInstanceMethod(d4, o.a("017(ff-idJggecdkdk=i^dgDd$deecdkegdkfhec"), new Object[0]);
                if (invokeInstanceMethod != null) {
                    String str = (String) ReflectHelper.invokeInstanceMethod(invokeInstanceMethod, o.a("0083ff]idLfjehehegfi"), new Object[0]);
                    return str != null ? str : null;
                }
            }
        } finally {
            return null;
        }
        return null;
    }

    public String d() {
        String str = Build.MODEL;
        return !TextUtils.isEmpty(str) ? str.trim() : str;
    }

    public String e() {
        return Build.MANUFACTURER;
    }

    public String f() {
        String g4 = g();
        return (!TextUtils.isEmpty(g4) || Build.VERSION.SDK_INT < 9) ? g4 : i();
    }

    public synchronized String g() {
        String str;
        ObjectOutputStream objectOutputStream;
        Throwable th;
        ObjectInputStream objectInputStream;
        Throwable th2;
        String str2 = null;
        if (!com.mob.commons.b.i()) {
            return null;
        }
        Object d4 = d("phone");
        if (d4 == null) {
            return null;
        }
        try {
            str = (!f(o.a("0358dfdkChGdhecde6h3elAei9dhSl>defgfgdeecdkelgegdejfiddghhdflefgdddeheiejeigd")) || Build.VERSION.SDK_INT >= 29) ? null : a(d4);
            try {
            } catch (Throwable th3) {
                str2 = str;
                th = th3;
                MobLog.getInstance().w(th);
                str = str2;
                return str;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        if (TextUtils.isEmpty(str)) {
            String k4 = k("iemt");
            if (TextUtils.isEmpty(k4)) {
                File cacheRootFile = ResHelper.getCacheRootFile(this.f53368a, o.a("008Udgec^llgXel,hDde"));
                if (cacheRootFile.exists() && cacheRootFile.isFile()) {
                    try {
                        objectInputStream = new ObjectInputStream(new FileInputStream(cacheRootFile));
                        try {
                            Object readObject = objectInputStream.readObject();
                            if (readObject != null && (readObject instanceof char[])) {
                                k4 = String.valueOf((char[]) readObject);
                            }
                            r.a(objectInputStream);
                        } catch (Throwable th5) {
                            th2 = th5;
                            r.a(objectInputStream);
                            throw th2;
                        }
                    } catch (Throwable th6) {
                        objectInputStream = null;
                        th2 = th6;
                    }
                }
            }
            return k4;
        }
        File cacheRootFile2 = ResHelper.getCacheRootFile(this.f53368a, o.a("0088dgecEllg_elNhPde"));
        if (cacheRootFile2 != null && cacheRootFile2.exists()) {
            cacheRootFile2.delete();
        }
        try {
            objectOutputStream = new ObjectOutputStream(new FileOutputStream(cacheRootFile2));
            try {
                objectOutputStream.writeObject(str.toCharArray());
                objectOutputStream.flush();
                r.a(objectOutputStream);
                return str;
            } catch (Throwable th7) {
                th = th7;
                r.a(objectOutputStream);
                throw th;
            }
        } catch (Throwable th8) {
            objectOutputStream = null;
            th = th8;
        }
    }

    public String g(String str) {
        return null;
    }

    public synchronized String[] h() {
        Object d4;
        String[] split;
        String str;
        if (com.mob.commons.b.i()) {
            ArrayList arrayList = new ArrayList();
            try {
                d4 = d("phone");
            } catch (Throwable th) {
                MobLog.getInstance().w(th);
            }
            if (d4 == null) {
                return null;
            }
            String g4 = g();
            if (TextUtils.isEmpty(g4)) {
                g4 = "-1";
            }
            arrayList.add(g4);
            if (f(o.a("035,dfdkDh+dhecdeNh:el eiGdh;lNdefgfgdeecdkelgegdejfiddghhdflefgdddeheiejeigd")) && Build.VERSION.SDK_INT < 29) {
                for (int i2 = 0; i2 <= 5; i2++) {
                    try {
                        str = a(d4, i2);
                    } catch (Throwable unused) {
                        str = null;
                    }
                    if (TextUtils.isEmpty(str)) {
                        str = "-1";
                    }
                    arrayList.add(str);
                }
            }
            String[][] strArr = {new String[]{o.a("012Mdhdeedelfffg6lBeldeBliVde")}, new String[]{o.a("017ZdheceldhdeedelJl,dedcdeelde2li%defe"), o.a("017.dheceldhdeedelIl%dedcdeelde,liRdegl")}, new String[]{o.a("015OdheceldhdeedelecHil:eldeZli+de")}, new String[]{o.a("016Gdheceldhdeedelec9ilBeldeGli<degl"), o.a("0166dheceldhdeedelecKilTelde5liLdegk")}};
            for (int i4 = 0; i4 < 4; i4++) {
                for (String str2 : strArr[i4]) {
                    for (String str3 : b(str2).split(",")) {
                        if (!TextUtils.isEmpty(str3) && !arrayList.contains(str3)) {
                            arrayList.add(str3);
                        }
                    }
                }
            }
            if (arrayList.size() > 0) {
                return (String[]) arrayList.toArray(new String[arrayList.size()]);
            }
            return null;
        }
        return null;
    }

    public String i() {
        return null;
    }

    public String i(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            FileReader fileReader = new FileReader(str);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                String trim = readLine.trim();
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(trim);
            }
            bufferedReader.close();
            fileReader.close();
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        return sb.toString();
    }

    public String j() {
        try {
            String str = DeviceHelper.getInstance(this.f53368a).getModel() + "|" + l() + "|" + e() + "|" + r() + "|" + q();
            String A = A();
            if (A == null) {
                A = "";
            } else if (A.length() > 16) {
                A = A.substring(0, 16);
            }
            return a(str, A);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return "";
        }
    }

    public String k() {
        return DeviceHelper.getInstance(this.f53368a).getModel() + "|" + l() + "|" + e() + "|" + r() + "|" + q();
    }

    public int l() {
        return Build.VERSION.SDK_INT;
    }

    public String m() {
        try {
            return Build.VERSION.RELEASE;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String n() {
        return Locale.getDefault().getLanguage();
    }

    public String o() {
        return this.f53368a.getResources().getConfiguration().locale.getLanguage();
    }

    public String p() {
        return Locale.getDefault().getCountry();
    }

    public String q() {
        int[] screenSize = ResHelper.getScreenSize(this.f53368a);
        if (this.f53368a.getResources().getConfiguration().orientation == 1) {
            return screenSize[0] + "x" + screenSize[1];
        }
        return screenSize[1] + "x" + screenSize[0];
    }

    public String r() {
        try {
            Object d4 = d("phone");
            if (d4 == null) {
                return "-1";
            }
            String str = (String) ReflectHelper.invokeInstanceMethod(d4, o.a("014HffKid%ehde:l@fl.ei@dhdfTdCecdh"), new Object[0]);
            return TextUtils.isEmpty(str) ? "-1" : str;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return "-1";
        }
    }

    public String s() {
        Object d4 = d("phone");
        if (d4 == null) {
            return null;
        }
        try {
            if (f(o.a("035FdfdkRhVdhecdeFh)el3ei<dh;l1defgfgdeecdkelgegdejfiddghhdflefgdddeheiejeigd"))) {
                String str = (String) ReflectHelper.invokeInstanceMethod(d4, o.a("018Xff0idHehde7lHflQeiNdhdf8d5ecdhefdfOli"), new Object[0]);
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                return str;
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
        return null;
    }

    public String t() {
        return "-1";
    }

    public String u() {
        return null;
    }

    public String v() {
        try {
            return Data.MD5(DeviceHelper.getInstance(this.f53368a).getPInfo(B(), 64).signatures[0].toByteArray());
        } catch (Exception e4) {
            MobLog.getInstance().w(e4);
            return null;
        }
    }

    public String w() {
        return NtFetcher.getInstance(this.f53368a).getNtType();
    }

    public boolean x() {
        try {
            String z3 = z();
            if (!o.a("0045fddefhde").equals(z3) && !o.a("002@heff").equals(z3) && !o.a("002Ejiff").equals(z3) && !o.a("002Zjcff").equals(z3)) {
                if (!o.a("002Qgkff").equals(z3)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return false;
        }
    }

    public String y() {
        String lowerCase = w().toLowerCase();
        if (!TextUtils.isEmpty(lowerCase) && !o.a("004Fdkecdk i").equals(lowerCase)) {
            if (!lowerCase.startsWith(o.a("002Yheff")) && !lowerCase.startsWith(o.a("002)jiff")) && !lowerCase.startsWith(o.a("002Fjcff")) && !lowerCase.startsWith(o.a("002_gkff"))) {
                if (lowerCase.startsWith(o.a("004Nfddefhde"))) {
                    return o.a("004Wfddefhde");
                }
                return o.a("005XecSdci+dh");
            }
            return o.a("004%dgNi8eded");
        }
        return o.a("004Mdkecdk4i");
    }

    public String z() {
        try {
            String lowerCase = w().toLowerCase();
            if (!TextUtils.isEmpty(lowerCase) && !o.a("004^dkecdkMi").equals(lowerCase)) {
                if (lowerCase.startsWith(o.a("004>fddefhde"))) {
                    return o.a("004<fddefhde");
                }
                if (lowerCase.startsWith(o.a("002Zheff"))) {
                    return o.a("002*heff");
                }
                if (lowerCase.startsWith(o.a("002 jiff"))) {
                    return o.a("002Wjiff");
                }
                if (lowerCase.startsWith(o.a("002)jcff"))) {
                    return o.a("002Rjcff");
                }
                if (lowerCase.startsWith(o.a("0021gkff"))) {
                    return o.a("002Ygkff");
                }
                return lowerCase.startsWith(o.a("009?fceddcHid(ecec8dc")) ? o.a("009^fceddcCidOececUdc") : lowerCase;
            }
            return o.a("004.dkecdkMi");
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return o.a("004:dkecdkZi");
        }
    }

    private void l(String str) throws Throwable {
        File cacheRootFile = ResHelper.getCacheRootFile(this.f53368a, o.a("003<elRh>dj"));
        if (cacheRootFile != null && cacheRootFile.exists()) {
            cacheRootFile.delete();
        }
        ObjectOutputStream objectOutputStream = null;
        try {
            ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new FileOutputStream(cacheRootFile));
            try {
                objectOutputStream2.writeObject(str.toCharArray());
                objectOutputStream2.flush();
                r.a(objectOutputStream2);
            } catch (Throwable th) {
                th = th;
                objectOutputStream = objectOutputStream2;
                r.a(objectOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public String e(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return DeviceHelper.getInstance(this.f53368a).getPInfo(str, 1).applicationInfo.loadLabel(this.f53368a.getPackageManager()).toString();
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    private String k(String str) {
        try {
            HashMap<String, Object> bc = bc();
            if (bc != null) {
                return (String) bc.get(str);
            }
            return null;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    public boolean a() {
        String str = Build.TAGS;
        return (str != null && str.contains(o.a("009di'fgTdJhidjIi7difg"))) || aZ();
    }

    public Object d(String str) {
        try {
            return this.f53368a.getSystemService(str);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    public boolean f(String str) throws Throwable {
        int i2 = -1;
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                ReflectHelper.importClass(o.a("023^dfdk^hLdhecdeThMeldgecdkZdi1dk7d*elggecdkJdiXdlYd"));
                Integer num = (Integer) ReflectHelper.invokeInstanceMethod(this.f53368a, o.a("019Gdg>ciLdgdjehFi]edfhgh.iQdh]l)defgfgdeecdk"), str);
                if (num != null) {
                    i2 = num.intValue();
                }
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
            }
        } else {
            i2 = this.f53368a.getPackageManager().checkPermission(str, B());
        }
        return i2 == 0;
    }

    public static Object a(String str) throws Throwable {
        return ReflectHelper.invokeInstanceMethod(ReflectHelper.invokeStaticMethod(ReflectHelper.importClass(o.a("017ZhfdfZj:dfeleddfdkffelgedcdkLdWde2li")), o.a("010;ff<id:gedcdk?dLde^li"), new Object[0]), o.a("004iSdl?i%dg"), new Object[]{str}, new Class[]{String.class});
    }

    public boolean j(String str) {
        try {
            String importClass = ReflectHelper.importClass(o.a("037Fdfdk>h_dhecde,hGdleldgecdhPi(eldf@ee>elej@eeBfl%eLfggidfdkdfffDi+dhggecLleVdfFd"));
            return ((Integer) ReflectHelper.invokeStaticMethod(importClass, o.a("011JdkecKdiDghdhecdldifl6e"), this.f53368a, (String) ReflectHelper.invokeStaticMethod(importClass, o.a("014ei6dh2lLdefgfgdeecdkeiecflFe"), str), B())).intValue() == 1;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return false;
        }
    }

    public String a(String str, String str2) {
        try {
            String encodeToString = Base64.encodeToString(Data.AES128Encode(str2, str), 0);
            return encodeToString.contains("\n") ? encodeToString.replace("\n", "") : encodeToString;
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return null;
        }
    }

    public String b(String str) {
        return l.a(this.f53368a).a().a(str);
    }

    public String c(String str) {
        try {
            return Data.MD5(DeviceHelper.getInstance(this.f53368a).getPInfo(str, 64).signatures[0].toByteArray());
        } catch (Exception e4) {
            MobLog.getInstance().w(e4);
            return null;
        }
    }

    private ArrayList<HashMap<String, String>> b(boolean z3, boolean z4, boolean z5) {
        ArrayList<HashMap<String, String>> arrayList = new ArrayList<>();
        try {
            arrayList = j.a(this.f53368a, z3, z4, z5);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
        try {
            Context context = this.f53368a;
            h.a(context, DeviceHelper.getInstance(context).getAInfo().targetSdkVersion).a(this.f53368a);
        } catch (Throwable th2) {
            MobLog.getInstance().d(th2);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.ArrayList<java.util.HashMap<java.lang.String, java.lang.String>> c(boolean r13, boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.tools.a.b.c(boolean, boolean, boolean):java.util.ArrayList");
    }

    public String a(boolean z3) {
        String str;
        String str2 = null;
        try {
            str = bb();
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            str = null;
        }
        if (!z3 && (TextUtils.isEmpty(str) || str.length() < 40)) {
            str = ba();
        }
        if (!TextUtils.isEmpty(str) && str.length() >= 40) {
            return str.trim();
        }
        try {
            str2 = bd();
        } catch (Throwable th2) {
            MobLog.getInstance().w(th2);
        }
        if (!TextUtils.isEmpty(str2) && str2.length() >= 40) {
            return str2.trim();
        }
        if (TextUtils.isEmpty(str2) || str2.length() < 40) {
            str2 = a(40);
        }
        if (str2 != null) {
            try {
                str2 = str2.trim();
                l(str2);
                return str2;
            } catch (Throwable th3) {
                MobLog.getInstance().w(th3);
                return str2;
            }
        }
        return str2;
    }

    public void b(View view) {
        Object d4 = d("input_method");
        if (d4 == null) {
            return;
        }
        ((InputMethodManager) d4).toggleSoftInputFromWindow(view.getWindowToken(), 2, 0);
    }

    private synchronized String b(Object obj) {
        String str;
        try {
            str = l.a(this.f53368a).a().b();
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            str = null;
        }
        return str;
    }

    private int b(Context context) {
        try {
            String aK = aK();
            if (TextUtils.isEmpty(aK)) {
                return -1;
            }
            return aK.equals(context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).processName) ? 1 : 0;
        } catch (Throwable th) {
            NLog mobLog = MobLog.getInstance();
            mobLog.d("MobPush checkIsInMainProcess: " + th, new Object[0]);
            return -1;
        }
    }

    public String a(int i2) {
        long currentTimeMillis = System.currentTimeMillis() ^ SystemClock.elapsedRealtime();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(currentTimeMillis);
        SecureRandom secureRandom = new SecureRandom();
        for (int i4 = 0; i4 < i2; i4++) {
            if (o.a("004EdgEc=dfdh").equalsIgnoreCase(o.a(secureRandom.nextInt(2) % 2 == 0 ? "0047dgNc0dfdh" : "0036dkdcMl"))) {
                stringBuffer.insert(i4 + 1, (char) (secureRandom.nextInt(26) + 97));
            } else {
                stringBuffer.insert(stringBuffer.length(), secureRandom.nextInt(10));
            }
        }
        return stringBuffer.toString().substring(0, 40);
    }

    public boolean h(String str) {
        try {
            return DeviceHelper.getInstance(this.f53368a).getPInfo(true, str, 0) != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private HashMap<String, Object> a(File file) {
        FileChannel fileChannel;
        FileInputStream fileInputStream;
        if (file.exists()) {
            FileChannel fileChannel2 = null;
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th) {
                th = th;
                fileChannel = null;
            }
            try {
                fileChannel2 = fileInputStream.getChannel();
                ByteBuffer allocate = ByteBuffer.allocate((int) fileChannel2.size());
                while (fileChannel2.read(allocate) > 0) {
                }
                HashMap<String, Object> a4 = a(DeviceHelper.getInstance(this.f53368a).getModel(), allocate.array());
                r.a(fileChannel2, fileInputStream);
                return a4;
            } catch (Throwable th2) {
                th = th2;
                fileChannel = fileChannel2;
                fileChannel2 = fileInputStream;
                try {
                    MobLog.getInstance().d(th);
                    r.a(fileChannel, fileChannel2);
                    return new HashMap<>();
                } catch (Throwable th3) {
                    r.a(fileChannel, fileChannel2);
                    throw th3;
                }
            }
        }
        return new HashMap<>();
    }

    private HashMap<String, Object> a(String str, byte[] bArr) {
        try {
            return HashonHelper.fromJson(Data.AES128Decode(str, bArr));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return new HashMap<>();
        }
    }

    public ArrayList<HashMap<String, String>> a(boolean z3, boolean z4, boolean z5) {
        try {
            if (Build.VERSION.SDK_INT <= 25) {
                return c(z3, z4, z5);
            }
            ArrayList<HashMap<String, String>> b4 = b(z3, z4, z5);
            if (b4 != null && !b4.isEmpty()) {
                return b4;
            }
            return c(z3, z4, z5);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            return new ArrayList<>();
        }
    }

    private void a(HashMap<String, String> hashMap) {
        if (hashMap != null) {
            try {
                ResHelper.saveObjectToFile(ResHelper.getDataCacheFile(this.f53368a, o.a("004*eldfdkfg")).getAbsolutePath(), hashMap);
            } catch (Throwable th) {
                MobLog.getInstance().w(th);
            }
        }
    }

    private boolean a(PackageInfo packageInfo) {
        int i2 = packageInfo.applicationInfo.flags;
        return ((i2 & 1) == 1) || ((i2 & 128) == 1);
    }

    public void a(View view) {
        Object d4 = d("input_method");
        if (d4 == null) {
            return;
        }
        ((InputMethodManager) d4).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public Location a(int i2, int i4, boolean z3) {
        try {
            if (f(o.a("039TdfdkOhDdhecde)h)elVeiAdhGlAdefgfgdeecdkelejgggggdehehddfkegefgdddekflggejeiegflef")) || (Build.VERSION.SDK_INT >= 29 && f(o.a("045%dfdk6h7dhecde,h6elQeiCdhFlYdefgfgdeecdkelejgggggdehehddfjejgghjhkgefleeeffiddekflggejeiegflef")))) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    return com.mob.tools.utils.a.a().a(this.f53368a, i2, i4, z3);
                }
                throw new Throwable("Method 'getLocation' can not be called from Main Thread");
            }
            return null;
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }

    public void a(final Handler.Callback callback) {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.mob.tools.a.b.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    HashMap hashMap = new HashMap();
                    for (String str : intent.getExtras().keySet()) {
                        hashMap.put(str, intent.getExtras().get(str));
                    }
                    if (callback != null) {
                        Message obtain = Message.obtain();
                        obtain.obj = hashMap;
                        callback.handleMessage(obtain);
                    }
                    try {
                        ReflectHelper.invokeInstanceMethod(context, o.a("0180dcdkdhMi!ffdefg[di.dhgeGiPdg)i-deFjiFdh"), new Object[]{this}, new Class[]{BroadcastReceiver.class});
                    } catch (Throwable unused) {
                    }
                }
            };
            if (Build.VERSION.SDK_INT < 33) {
                ReflectHelper.invokeInstanceMethod(this.f53368a, o.a("016Zdh2iVffdefg6di*dhgeEi<dgMi de.jiOdh"), new Object[]{broadcastReceiver, intentFilter}, new Class[]{BroadcastReceiver.class, IntentFilter.class});
            } else {
                ReflectHelper.invokeInstanceMethod(this.f53368a, o.a("016]dhMi2ffdefgYdi(dhgeYi$dgKi de)ji@dh"), new Object[]{broadcastReceiver, intentFilter, 4}, new Class[]{BroadcastReceiver.class, IntentFilter.class, Integer.TYPE});
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            if (callback != null) {
                callback.handleMessage(Message.obtain());
            }
        }
    }

    private void a(String str, String str2, long[] jArr) {
        try {
            int indexOf = str.indexOf(str2);
            if (indexOf != -1) {
                Matcher matcher = Pattern.compile(" \\d+ ").matcher(str.substring(indexOf));
                int i2 = 0;
                while (matcher.find()) {
                    if (i2 == 0) {
                        jArr[0] = Long.parseLong(matcher.group().trim());
                    } else if (i2 == 8) {
                        jArr[1] = Long.parseLong(matcher.group().trim());
                        return;
                    }
                    i2++;
                }
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }

    public void a(BroadcastReceiver broadcastReceiver) throws Throwable {
        try {
            ReflectHelper.invokeInstanceMethod(MobSDK.getContext(), o.a("0182dcdkdh_iKffdefgEdiBdhgeViLdg4i_deCjiRdh"), new Object[]{broadcastReceiver}, new Class[]{BroadcastReceiver.class});
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }

    public void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) throws Throwable {
        try {
            if (Build.VERSION.SDK_INT < 33) {
                ReflectHelper.invokeInstanceMethod(MobSDK.getContext(), o.a("016^dhUi1ffdefg+di_dhgeFiMdgYi?deQjiRdh"), new Object[]{broadcastReceiver, intentFilter}, new Class[]{BroadcastReceiver.class, IntentFilter.class});
            } else {
                ReflectHelper.invokeInstanceMethod(MobSDK.getContext(), o.a("016[dhTi)ffdefg)diWdhge<i1dgUi0de+jiRdh"), new Object[]{broadcastReceiver, intentFilter, 4}, new Class[]{BroadcastReceiver.class, IntentFilter.class, Integer.TYPE});
            }
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }

    public void a(final BlockingQueue<Boolean> blockingQueue) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.mob.tools.a.b.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                try {
                    b.this.a((BroadcastReceiver) this);
                    if ("android.net.wifi.SCAN_RESULTS".equals(intent.getAction())) {
                        blockingQueue.put(Boolean.TRUE);
                    }
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                }
            }
        };
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
            a(broadcastReceiver, intentFilter);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
        }
    }

    private synchronized String a(Object obj) {
        String str;
        try {
            str = l.a(this.f53368a).a().a();
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            str = null;
        }
        return str;
    }

    private String a(Object obj, int i2) {
        try {
            return l.a(this.f53368a).a().a(i2);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return null;
        }
    }
}
