package com.mob.commons.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import com.mob.MobSDK;
import com.mob.commons.w;
import com.mob.tools.MobLog;
import com.mob.tools.utils.Data;
import com.mob.tools.utils.DeviceHelper;
import com.mob.tools.utils.ReflectHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class q extends c {

    /* loaded from: classes4.dex */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final a f52815a = new a();

        /* renamed from: b  reason: collision with root package name */
        private BroadcastReceiver f52816b;

        private a() {
            this.f52816b = null;
            try {
                this.f52816b = new BroadcastReceiver() { // from class: com.mob.commons.a.q.a.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        a.f52815a.a(context, intent);
                    }
                };
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.wifi.STATE_CHANGE");
                if (Build.VERSION.SDK_INT < 33) {
                    ReflectHelper.invokeInstanceMethod(MobSDK.getContext(), com.mob.commons.n.a("016DcgUh@eecdefEch cgfd$hVcf9h+cd3ihDcg"), new Object[]{this.f52816b, intentFilter}, new Class[]{BroadcastReceiver.class, IntentFilter.class});
                } else {
                    ReflectHelper.invokeInstanceMethod(MobSDK.getContext(), com.mob.commons.n.a("016QcgJhUeecdefSchDcgfdShTcf%h:cdSihBcg"), new Object[]{this.f52816b, intentFilter, 4}, new Class[]{BroadcastReceiver.class, IntentFilter.class, Integer.TYPE});
                }
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
            }
        }

        public static a a() {
            return f52815a;
        }

        public void a(Context context, Intent intent) {
            Parcelable parcelableExtra;
            if (intent == null) {
                return;
            }
            try {
                if (!"android.net.wifi.STATE_CHANGE".equals(intent.getAction()) || (parcelableExtra = intent.getParcelableExtra("networkInfo")) == null) {
                    return;
                }
                o.a().a(2L, q.class, new Object[]{-1, parcelableExtra}, 1);
            } catch (Throwable th) {
                MobLog.getInstance().d(th);
            }
        }
    }

    public q() {
        super(com.mob.commons.n.a("002%eccd"), 0L, com.mob.commons.n.a("005HeccdeeceRd"), 3600L);
    }

    private void n() {
        DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            String bssid = deviceHelper.getBssid();
            String ssid = deviceHelper.getSSID();
            if (!TextUtils.isEmpty(bssid)) {
                ArrayList<HashMap<String, Object>> availableWifiListOneKey = deviceHelper.getAvailableWifiListOneKey();
                if (availableWifiListOneKey != null && !availableWifiListOneKey.isEmpty()) {
                    Iterator<HashMap<String, Object>> it2 = availableWifiListOneKey.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        HashMap<String, Object> next = it2.next();
                        Object obj = next.get(com.mob.commons.n.a("005Jeidgdgdfeh"));
                        if (obj != null && String.valueOf(obj).equals(bssid)) {
                            hashMap.putAll(next);
                            break;
                        }
                    }
                    hashMap.remove(com.mob.commons.n.a("005=eidgdgdfeh"));
                    hashMap.remove(com.mob.commons.n.a("004Wdgdgdfeh"));
                }
            } else if (TextUtils.isEmpty(ssid)) {
                return;
            } else {
                if (com.mob.commons.n.a("014=gkcbcjcicjdbeccjhbefefcd9gUhc").equalsIgnoreCase(ssid)) {
                    return;
                }
            }
            Map<? extends String, ? extends Object> currentWifiInfo = deviceHelper.getCurrentWifiInfo();
            if (currentWifiInfo != null) {
                hashMap.putAll(currentWifiInfo);
            }
            hashMap.put("ssmt", ssid);
            hashMap.put("bsmt", bssid);
            a("WIMT", hashMap, true);
            TreeMap treeMap = new TreeMap();
            treeMap.put("ssmt", ssid);
            treeMap.put("bsmt", bssid);
            w.a().a(w.f53142q, Data.MD5(new JSONObject(treeMap).toString()));
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    private void o() {
        try {
            DeviceHelper deviceHelper = DeviceHelper.getInstance(MobSDK.getContext());
            String ssid = deviceHelper.getSSID();
            String bssid = deviceHelper.getBssid();
            if (TextUtils.isEmpty(bssid) && (TextUtils.isEmpty(ssid) || com.mob.commons.n.a("014^gkcbcjcicjdbeccjhbefefcdEgNhc").equalsIgnoreCase(ssid))) {
                return;
            }
            TreeMap treeMap = new TreeMap();
            treeMap.put("ssmt", ssid);
            treeMap.put("bsmt", bssid);
            String MD5 = Data.MD5(new JSONObject(treeMap).toString());
            String b4 = w.a().b(w.f53142q, (String) null);
            if (e()) {
                if (b4 == null || !b4.equals(MD5)) {
                    n();
                }
            }
        } catch (Throwable th) {
            MobLog.getInstance().w(th);
        }
    }

    @Override // com.mob.commons.a.c
    protected void a() {
        if (this.f52783a != null) {
            o();
            return;
        }
        n();
        a.a();
    }
}
