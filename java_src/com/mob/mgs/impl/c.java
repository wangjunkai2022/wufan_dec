package com.mob.mgs.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.apc.b;
import com.mob.commons.authorize.DeviceAuthorizer;
import com.mob.elp.MobELP;
import com.mob.mcl.MobMCL;
import com.mob.mcl.a;
import com.mob.mgs.MobMGS;
import com.mob.tools.utils.ActivityTracker;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ReflectHelper;
import com.mob.tools.utils.ResHelper;
import com.qq.e.comm.constants.ErrorCode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4.dex */
public class c implements b.a, b.InterfaceC0237b, b.c {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f53279a = {"com.mob.intent.MOB_GUARD_SERVICE", "com.mob.intent.MOB_ID_SERVICE"};

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f53280b = {"com.mob.guard.MobGuardPullUpService", "com.mob.id.MobIDService"};

    /* renamed from: c  reason: collision with root package name */
    private static final String[] f53281c = {"com.mob.guard.MobTranPullUpActivity", "com.mob.id.MobIDActivity"};

    /* renamed from: d  reason: collision with root package name */
    private static c f53282d = new c();

    /* renamed from: e  reason: collision with root package name */
    private static AtomicBoolean f53283e = new AtomicBoolean(false);

    /* renamed from: m  reason: collision with root package name */
    private boolean f53291m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f53292n;

    /* renamed from: f  reason: collision with root package name */
    private ExecutorService f53284f = Executors.newSingleThreadExecutor();

    /* renamed from: g  reason: collision with root package name */
    private String f53285g = null;

    /* renamed from: h  reason: collision with root package name */
    private boolean f53286h = false;

    /* renamed from: i  reason: collision with root package name */
    private int f53287i = 0;

    /* renamed from: j  reason: collision with root package name */
    private int f53288j = 0;

    /* renamed from: k  reason: collision with root package name */
    private List<HashMap<String, Object>> f53289k = null;

    /* renamed from: l  reason: collision with root package name */
    private HashMap<String, Integer> f53290l = null;

    /* renamed from: o  reason: collision with root package name */
    private Context f53293o = MobSDK.getContext();

    private c() {
        ActivityTracker.getInstance(MobSDK.getContext()).addTracker(com.mob.mcl.a.a(new a.C0240a() { // from class: com.mob.mgs.impl.c.1
            @Override // com.mob.mcl.a.C0240a
            public void a() {
                if (c.this.f53291m) {
                    c.this.a((String) null, true);
                }
            }
        }));
    }

    private boolean c(String str) {
        String[] split;
        try {
            String string = Settings.Secure.getString(MobSDK.getContext().getContentResolver(), "app_lock_list");
            if (!TextUtils.isEmpty(string)) {
                for (String str2 : string.split(";")) {
                    if (str2 != null && str2.equals(str)) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private void e() {
        try {
            if (f53283e.compareAndSet(false, true)) {
                MobSDK.init(MobSDK.getContext());
                com.mob.apc.b.a(MobSDK.getContext());
                String f4 = f.a().f();
                MobELP.init(f4);
                com.mob.apc.b.a(MobMGS.MGS_TAG, this);
                com.mob.apc.b.a((b.c) this);
                com.mob.apc.b.a((b.a) this);
                MobMCL.initMCLink(MobSDK.getContext(), MobSDK.getAppkey(), f4);
                MobMCL.getSuid();
                e a4 = e.a();
                a4.a("[Guard] init guardId:" + MobMCL.getSuid() + ", time: " + MobMCL.getCreateSuidTime());
            }
        } catch (Throwable th) {
            e.a().b(th);
        }
    }

    private List<HashMap<String, String>> f() {
        Bundle bundle;
        int i2;
        ArrayList arrayList = new ArrayList();
        try {
            String packageName = MobSDK.getContext().getPackageName();
            HashSet hashSet = new HashSet();
            ArrayList<ResolveInfo> arrayList2 = new ArrayList();
            int i4 = 0;
            while (true) {
                String[] strArr = f53279a;
                if (i4 >= strArr.length) {
                    break;
                }
                ReflectHelper.importClass("android.content.Intent");
                List<ResolveInfo> queryIntentServices = DeviceHelper.getInstance(MobSDK.getContext()).queryIntentServices((Intent) ReflectHelper.newInstance("Intent", strArr[i4]), 0);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    arrayList2.addAll(queryIntentServices);
                }
                i4++;
            }
            this.f53290l = new HashMap<>();
            for (ResolveInfo resolveInfo : arrayList2) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                if (serviceInfo.exported && !packageName.equals(serviceInfo.packageName) && (bundle = DeviceHelper.getInstance(MobSDK.getContext()).getPInfo(true, resolveInfo.serviceInfo.packageName, 128).applicationInfo.metaData) != null && !bundle.isEmpty()) {
                    Object obj = bundle.get("mob_id_ver");
                    if (obj == null) {
                        obj = bundle.get("mob_guard_version");
                        i2 = 0;
                    } else {
                        i2 = 1;
                    }
                    if (obj != null && !hashSet.contains(resolveInfo.serviceInfo.packageName) && !c(resolveInfo.serviceInfo.packageName)) {
                        hashSet.add(resolveInfo.serviceInfo.packageName);
                        String valueOf = String.valueOf(obj);
                        HashMap hashMap = new HashMap();
                        hashMap.put("appPackage", resolveInfo.serviceInfo.packageName);
                        hashMap.put("targetVer", valueOf);
                        arrayList.add(hashMap);
                        this.f53290l.put(resolveInfo.serviceInfo.packageName, Integer.valueOf(i2));
                    }
                }
            }
        } catch (Throwable th) {
            e.a().b(th);
        }
        return arrayList;
    }

    private boolean g() {
        try {
            HashMap hashMap = (HashMap) d.a(f(), MobMCL.getSuid(), MobMGS.getDS());
            e a4 = e.a();
            a4.a("[Guard] getGuardListV5 response:" + hashMap);
            if (hashMap != null && !hashMap.isEmpty()) {
                this.f53285g = (String) ResHelper.forceCast(hashMap.get("workId"), null);
                this.f53286h = ((Boolean) ResHelper.forceCast(hashMap.get("syncIdState"), Boolean.FALSE)).booleanValue();
                this.f53288j = ((Integer) ResHelper.forceCast(hashMap.get("asMaster"), 0)).intValue();
                this.f53287i = ((Integer) ResHelper.forceCast(hashMap.get("pollTotal"), 0)).intValue();
                this.f53289k = (List) hashMap.get("pkgList");
                return true;
            }
        } catch (Throwable th) {
            e.a().b(th);
        }
        return false;
    }

    private void h() {
        Bundle bundle;
        e a4 = e.a();
        a4.a("[Guard] syncId upPkgList: " + this.f53289k);
        List<HashMap<String, Object>> list = this.f53289k;
        if (list == null || list.size() == 0) {
            return;
        }
        String suid = MobMCL.getSuid();
        long createSuidTime = MobMCL.getCreateSuidTime();
        String str = suid;
        for (HashMap<String, Object> hashMap : this.f53289k) {
            com.mob.apc.a aVar = null;
            String str2 = (String) ResHelper.forceCast(hashMap.get("pkg"), null);
            com.mob.apc.a aVar2 = new com.mob.apc.a();
            aVar2.f52719a = 1001;
            try {
                aVar = com.mob.apc.b.a(1, str2, MobMGS.MGS_TAG, aVar2, 5000L);
            } catch (Throwable th) {
                e.a().b(th);
            }
            e a5 = e.a();
            a5.a("[Guard] syncId getClientIDs sendAPCMessage pkg: " + str2 + ", response:" + aVar);
            if (aVar != null && (bundle = aVar.f52723e) != null) {
                String string = bundle.getString("guardId");
                long j4 = bundle.getLong("timestamp");
                if (!TextUtils.isEmpty(string) && j4 > 0 && j4 < createSuidTime) {
                    str = string;
                    createSuidTime = j4;
                }
            }
        }
        e a6 = e.a();
        a6.a("[Guard] syncId update guardId :" + str + ", oldId: " + suid);
        boolean equals = str.equals(suid) ^ true;
        if (equals) {
            MobMCL.syncSuid(str, createSuidTime);
        }
        a(str, createSuidTime);
        if (equals) {
            try {
                d.a(suid, str, this.f53285g);
            } catch (Throwable th2) {
                e.a().a(th2);
            }
        }
    }

    public void d() {
        if (this.f53286h) {
            h();
        }
    }

    public void b() throws Throwable {
        Object obj;
        e();
        if (!UpdateV5.getDS()) {
            e.a().a("DS off");
            return;
        }
        Bundle bundle = DeviceHelper.getInstance(MobSDK.getContext()).getPInfo(MobSDK.getContext().getPackageName(), 128).applicationInfo.metaData;
        String valueOf = (bundle == null || bundle.isEmpty() || (obj = bundle.get("disable_mob_a_guard")) == null) ? null : String.valueOf(obj);
        e a4 = e.a();
        a4.a("[Guard] run disable_mob_a_guard:" + valueOf);
        if ("true".equals(valueOf)) {
            return;
        }
        com.mob.commons.b.a("cd", "221111", 0L);
        boolean isClear = DeviceAuthorizer.isClear();
        e a5 = e.a();
        a5.a("[EC] isClear init: " + isClear);
        if (isClear) {
            boolean z3 = ((Integer) com.mob.commons.b.a("all", 1, 0L)).intValue() == 1;
            e a6 = e.a();
            a6.a("als on: " + z3);
            if (z3) {
                boolean g4 = g();
                e a7 = e.a();
                a7.a("[Guard] checkAndInitGuardParams:" + g4);
                if (g4) {
                    if (c()) {
                        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
                        e.a().a("[Guard] registerServerSocket");
                        a.a().a(linkedBlockingQueue);
                        boolean booleanValue = ((Boolean) linkedBlockingQueue.take()).booleanValue();
                        e a8 = e.a();
                        a8.a("[Guard] registerServerSocket: " + booleanValue);
                        if (booleanValue) {
                            a(this.f53286h, (String) null);
                            if (this.f53286h) {
                                Thread.sleep(500L);
                                h();
                                return;
                            }
                            return;
                        }
                    }
                    e.a().a("[Guard] registerClientSocket");
                    a.a().b();
                }
            }
        }
    }

    public static c a() {
        return f53282d;
    }

    private boolean d(String str) {
        Boolean bool;
        boolean booleanValue;
        boolean z3 = false;
        int i2 = -1;
        try {
        } catch (Throwable th) {
            e.a().a(th);
        }
        if (this.f53293o.equals(str)) {
            return true;
        }
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        i2 = a.a().a(str, linkedBlockingQueue);
        if (i2 == 0) {
            booleanValue = a(this.f53293o, str);
        } else {
            if (i2 == 1 && (bool = (Boolean) linkedBlockingQueue.poll(2000L, TimeUnit.MILLISECONDS)) != null) {
                booleanValue = bool.booleanValue();
            }
            e a4 = e.a();
            a4.a("checkAppLive appStatus: " + i2 + ", isLive: " + z3);
            return z3;
        }
        z3 = booleanValue;
        e a42 = e.a();
        a42.a("checkAppLive appStatus: " + i2 + ", isLive: " + z3);
        return z3;
    }

    public void a(final String str, final boolean z3) {
        this.f53284f.execute(new Runnable() { // from class: com.mob.mgs.impl.c.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(200L);
                    c.this.a(false, str);
                    if (z3) {
                        Thread.sleep(500L);
                        c.this.d();
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0144 A[Catch: all -> 0x01bc, TryCatch #0 {all -> 0x01bc, blocks: (B:3:0x000a, B:6:0x0029, B:8:0x0030, B:9:0x0036, B:12:0x0061, B:13:0x006c, B:15:0x0072, B:18:0x0098, B:21:0x00a4, B:24:0x00b1, B:27:0x00e9, B:29:0x00f1, B:37:0x0114, B:39:0x0144, B:41:0x015a, B:43:0x0163, B:45:0x016b, B:46:0x016e, B:48:0x0180, B:47:0x017b, B:32:0x0100, B:34:0x010d, B:49:0x0194, B:51:0x01b2), top: B:56:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x017b A[Catch: all -> 0x01bc, TryCatch #0 {all -> 0x01bc, blocks: (B:3:0x000a, B:6:0x0029, B:8:0x0030, B:9:0x0036, B:12:0x0061, B:13:0x006c, B:15:0x0072, B:18:0x0098, B:21:0x00a4, B:24:0x00b1, B:27:0x00e9, B:29:0x00f1, B:37:0x0114, B:39:0x0144, B:41:0x015a, B:43:0x0163, B:45:0x016b, B:46:0x016e, B:48:0x0180, B:47:0x017b, B:32:0x0100, B:34:0x010d, B:49:0x0194, B:51:0x01b2), top: B:56:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(boolean r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mob.mgs.impl.c.a(boolean, java.lang.String):void");
    }

    public boolean c() {
        return this.f53288j == 1;
    }

    public void b(String str) {
        e a4 = e.a();
        a4.a("[Guard] syncId newClientPkg : " + str + " syncIdFailed : " + this.f53292n);
        if (this.f53292n) {
            this.f53284f.execute(new Runnable() { // from class: com.mob.mgs.impl.c.3
                @Override // java.lang.Runnable
                public void run() {
                    if (c.this.f53292n) {
                        c.this.d();
                    }
                }
            });
        }
    }

    public HashMap<String, Object> b(int i2, String str) {
        return a(i2, str, this.f53285g, f.a().f());
    }

    private void a(String str, long j4) {
        this.f53292n = false;
        for (HashMap<String, Object> hashMap : this.f53289k) {
            String str2 = (String) ResHelper.forceCast(hashMap.get("pkg"), null);
            try {
                com.mob.apc.a aVar = new com.mob.apc.a();
                aVar.f52719a = 1003;
                Bundle bundle = new Bundle();
                bundle.putString("guardId", str);
                bundle.putLong("timestamp", j4);
                bundle.putString("workId", this.f53285g);
                aVar.f52723e = bundle;
                com.mob.apc.a a4 = com.mob.apc.b.a(1, str2, MobMGS.MGS_TAG, aVar, 5000L);
                e a5 = e.a();
                a5.a("[Guard] syncId updateClientIDs sendAPCMessage :" + str2 + ", response: " + a4);
            } catch (Throwable th) {
                e.a().a(th);
                this.f53292n = true;
            }
        }
    }

    @Override // com.mob.apc.b.InterfaceC0237b
    public com.mob.apc.a a(String str, com.mob.apc.a aVar, long j4) {
        Bundle bundle;
        e a4 = e.a();
        a4.a("[Guard] onAPCMessageReceive APCMessage:" + aVar + ", pkg:" + str);
        com.mob.apc.a aVar2 = new com.mob.apc.a();
        final String suid = MobMCL.getSuid();
        long createSuidTime = MobMCL.getCreateSuidTime();
        int i2 = aVar.f52719a;
        if (i2 == 1001) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("guardId", suid);
            bundle2.putLong("timestamp", createSuidTime);
            bundle2.putString("pkg", MobSDK.getContext().getPackageName());
            aVar2.f52723e = bundle2;
        } else if (i2 == 1003 && (bundle = aVar.f52723e) != null) {
            final String string = bundle.getString("guardId");
            final long j5 = bundle.getLong("timestamp");
            final String string2 = bundle.getString("workId");
            if (string != null && j5 > 0 && !suid.equals(string) && j5 < createSuidTime) {
                new h() { // from class: com.mob.mgs.impl.c.4
                    @Override // com.mob.mgs.impl.h
                    protected void a() throws Throwable {
                        MobMCL.syncSuid(string, j5);
                        d.a(suid, string, string2);
                    }
                }.start();
            }
        }
        return aVar2;
    }

    @Override // com.mob.apc.b.c
    public void a(Bundle bundle) {
        if (bundle != null) {
            Intent intent = new Intent();
            intent.putExtra("workId", bundle.getString("workId"));
            intent.putExtra("appkey", bundle.getString("appkey"));
            intent.putExtra("duid", bundle.getString("duid"));
            intent.putExtra("guardId", bundle.getString("guardId"));
            intent.putExtra("pkg", bundle.getString("pkg"));
            intent.putExtra("acServiceType", bundle.getInt("acsActType"));
        }
    }

    @Override // com.mob.apc.b.a
    public HashMap<String, Object> a(int i2, String str) {
        int i4 = i2 == 1 ? ErrorCode.INIT_ERROR : i2 == 2 ? ErrorCode.INNER_ERROR : -1;
        e a4 = e.a();
        a4.a("[requestInvokeGd]finalBusType: " + i4);
        if (i4 != -1) {
            return b(i4, str);
        }
        return new HashMap<>();
    }

    @Override // com.mob.apc.b.a
    public boolean a(String str) {
        return d(str);
    }

    private static boolean a(Context context, String str) {
        try {
            int i2 = DeviceHelper.getInstance(context).getPInfo(true, str, 0).applicationInfo.flags;
            return ((i2 & 1) == 0 && (i2 & 128) == 0) && ((i2 & 2097152) == 0);
        } catch (Throwable th) {
            e.a().b(th);
            return false;
        }
    }

    private HashMap<String, Object> a(int i2, String str, String str2, String str3) {
        e a4 = e.a();
        a4.a("[GD]busType: " + i2 + ", target: " + str + ", workId: " + str2 + ", duid: " + str3);
        HashMap<String, Object> hashMap = new HashMap<>();
        boolean a5 = a(MobSDK.getContext(), str);
        e a6 = e.a();
        StringBuilder sb = new StringBuilder();
        sb.append("[GD]target: ");
        sb.append(str);
        sb.append(", isLv: ");
        sb.append(a5);
        a6.a(sb.toString());
        if (!a5) {
            if (this.f53290l == null) {
                f();
            }
            try {
                ComponentName componentName = new ComponentName(str, f53281c[((Integer) ResHelper.forceCast(this.f53290l.get(str), 0)).intValue()]);
                Intent intent = new Intent();
                intent.addFlags(411041792);
                intent.setComponent(componentName);
                intent.putExtra("workId", str2);
                intent.putExtra("duid", str3);
                intent.putExtra("appkey", MobSDK.getAppkey());
                intent.putExtra("pkg", MobSDK.getContext().getPackageName());
                intent.putExtra("guardId", MobMCL.getSuid());
                intent.putExtra("busType", i2);
                long currentTimeMillis = System.currentTimeMillis();
                hashMap.put("startActivityTime", Long.valueOf(currentTimeMillis));
                MobSDK.getContext().startActivity(intent);
                hashMap.put("startActivityDuration", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                Thread.sleep(320L);
                boolean a7 = a(MobSDK.getContext(), str);
                e a8 = e.a();
                a8.a("[GD] stAct rst. pkg: " + str + ", lv: " + a7);
                if (a7) {
                    hashMap.put("executeResult", "success");
                } else {
                    hashMap.put("executeResult", "uncertain");
                }
            } catch (Throwable th) {
                e.a().a(th);
                e a9 = e.a();
                a9.a("[GD] stAct rst.  pkg: " + str + ", exception: " + th.getMessage());
                hashMap.put("executeResult", "fail");
            }
        }
        return hashMap;
    }
}
