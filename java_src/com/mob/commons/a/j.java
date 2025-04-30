package com.mob.commons.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import com.join.mgps.receiver.BootReceiver_;
import com.mob.MobSDK;
import com.mob.commons.w;
import com.mob.tools.MobLog;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ReflectHelper;
import com.mob.tools.utils.ResHelper;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class j extends c {

    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final a f52801a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f52802b = {BootReceiver_.f51451a, "android.intent.action.PACKAGE_CHANGED", BootReceiver_.f51452b, BootReceiver_.f51454d};

        /* renamed from: c  reason: collision with root package name */
        private volatile boolean f52803c = false;

        /* renamed from: d  reason: collision with root package name */
        private final BroadcastReceiver f52804d = new BroadcastReceiver() { // from class: com.mob.commons.a.j.a.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                a.f52801a.a(context, intent);
            }
        };

        private a() {
        }

        public static a a() {
            return f52801a;
        }

        public synchronized void b() {
            if (this.f52803c) {
                return;
            }
            this.f52803c = true;
            IntentFilter intentFilter = new IntentFilter();
            int i2 = 0;
            while (true) {
                String[] strArr = f52802b;
                if (i2 >= strArr.length) {
                    break;
                }
                intentFilter.addAction(strArr[i2]);
                i2++;
            }
            intentFilter.addDataScheme(o.a("007f>egehekegggFj"));
            if (Build.VERSION.SDK_INT < 33) {
                ReflectHelper.invokeInstanceMethod(MobSDK.getContext(), o.a("016?ei*jUggefghAejBeihfDj1eh$jAefWkj;ei"), new Object[]{this.f52804d, intentFilter}, new Class[]{BroadcastReceiver.class, IntentFilter.class});
            } else {
                ReflectHelper.invokeInstanceMethod(MobSDK.getContext(), o.a("016Uei[j-ggefghQejAeihfYjUeh^j$ef_kj2ei"), new Object[]{this.f52804d, intentFilter, 4}, new Class[]{BroadcastReceiver.class, IntentFilter.class, Integer.TYPE});
            }
        }

        public synchronized void c() {
            if (this.f52803c) {
                this.f52803c = false;
                ReflectHelper.invokeInstanceMethod(MobSDK.getContext(), o.a("018XedeleiZj%ggefghNejAeihf@jYeh5jVefWkjLei"), new Object[]{this.f52804d}, new Class[]{BroadcastReceiver.class});
            }
        }

        public void a(Context context, Intent intent) {
            String action;
            if (intent != null) {
                try {
                    action = intent.getAction();
                } catch (Throwable th) {
                    MobLog.getInstance().d(th);
                    return;
                }
            } else {
                action = null;
            }
            if (a(action)) {
                com.mob.commons.b.f52819b = true;
                o.a().a(2L, j.class, new Object[]{-1, null}, 1);
            }
        }

        private boolean a(String str) {
            for (String str2 : f52802b) {
                if (str2.equals(str)) {
                    return true;
                }
            }
            return false;
        }
    }

    public j() {
        super(null, null);
    }

    private ArrayList<HashMap<String, String>> b(ArrayList<HashMap<String, String>> arrayList, ArrayList<HashMap<String, String>> arrayList2) {
        ArrayList<HashMap<String, String>> arrayList3 = new ArrayList<>();
        Iterator<HashMap<String, String>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            HashMap<String, String> next = it2.next();
            String str = next.get(o.a("003f>ekgg"));
            if (!TextUtils.isEmpty(str)) {
                boolean z3 = false;
                Iterator<HashMap<String, String>> it3 = arrayList2.iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        break;
                    } else if (str.equals(it3.next().get(o.a("003f;ekgg")))) {
                        z3 = true;
                        break;
                    }
                }
                if (!z3) {
                    arrayList3.add(next);
                }
            }
        }
        return arrayList3;
    }

    private boolean n() {
        return com.mob.commons.b.a(o.a("003'egfefe"));
    }

    private boolean o() {
        return com.mob.commons.b.a(o.a("002]efel"));
    }

    private boolean p() {
        return com.mob.commons.b.a(o.a("002Eedel"));
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        ArrayList<HashMap<String, String>> arrayList;
        boolean z3 = false;
        try {
            arrayList = DeviceHelper.getInstance(MobSDK.getContext()).getIA(false);
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
            arrayList = new ArrayList<>();
        }
        if (arrayList.isEmpty()) {
            return;
        }
        if (n()) {
            long currentTimeMillis = System.currentTimeMillis();
            w a4 = w.a();
            String str = w.f53129d;
            long b4 = a4.b(str, 0L);
            boolean a5 = a(currentTimeMillis, b4);
            if (currentTimeMillis - (((Long) a(o.a("0048egghCf1eg"), (String) 2592000L)).longValue() * 1000) >= b4 || !a5) {
                a(((Long) a(o.a("004]eg>iXfeZj"), (String) 0L)).longValue(), "ALSAMT", arrayList);
                w.a().a(str, System.currentTimeMillis());
            }
        }
        ArrayList<HashMap<String, String>> readArrayListFromFile = ResHelper.readArrayListFromFile(com.mob.commons.j.f53042f, true);
        z3 = (o() || p()) ? true : true;
        if (readArrayListFromFile.isEmpty()) {
            a(arrayList);
        } else if (z3) {
            a(readArrayListFromFile, arrayList);
        }
        if (z3) {
            a.a().b();
        } else {
            a.a().c();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mob.commons.a.c
    public boolean e() {
        return (n() || o() || p()) && m();
    }

    private void a(ArrayList<HashMap<String, String>> arrayList) {
        try {
            ResHelper.saveArrayListToFile(arrayList, com.mob.commons.j.f53042f, true);
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            try {
                ResHelper.saveArrayListToFile(arrayList, com.mob.commons.j.f53042f, true);
            } catch (Throwable unused) {
                MobLog.getInstance().d(th);
            }
        }
    }

    private boolean a(ArrayList<HashMap<String, String>> arrayList, ArrayList<HashMap<String, String>> arrayList2) {
        boolean z3;
        ArrayList<HashMap<String, String>> b4 = b(arrayList2, arrayList);
        if (b4.isEmpty() || !o()) {
            z3 = false;
        } else {
            a(0L, "ALSIMT", b4);
            z3 = true;
        }
        ArrayList<HashMap<String, String>> b5 = b(arrayList, arrayList2);
        if (!b5.isEmpty() && p()) {
            a(0L, "ALSUMT", b5);
            z3 = true;
        }
        if (z3) {
            a(arrayList2);
        }
        return true;
    }

    private boolean a(long j4, long j5) {
        if (j4 <= 0 || j5 <= 0) {
            return false;
        }
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            return simpleDateFormat.format(new Date(j4)).equals(simpleDateFormat.format(new Date(j5)));
        } catch (Throwable th) {
            MobLog.getInstance().d(th);
            return false;
        }
    }
}
