package com.bytedance.pangle;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.bytedance.pangle.receiver.PluginBroadcastReceiver;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes2.dex */
public final class LocalBroadcastManager {

    /* renamed from: f  reason: collision with root package name */
    private static final Object f10041f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private static LocalBroadcastManager f10042g;

    /* renamed from: a  reason: collision with root package name */
    private final Context f10043a;

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<PluginBroadcastReceiver, ArrayList<b>> f10044b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, ArrayList<b>> f10045c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<a> f10046d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private final Handler f10047e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Intent f10049a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayList<b> f10050b;

        a(Intent intent, ArrayList<b> arrayList) {
            this.f10049a = intent;
            this.f10050b = arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final IntentFilter f10051a;

        /* renamed from: b  reason: collision with root package name */
        final PluginBroadcastReceiver f10052b;

        /* renamed from: c  reason: collision with root package name */
        boolean f10053c;

        /* renamed from: d  reason: collision with root package name */
        boolean f10054d;

        b(IntentFilter intentFilter, PluginBroadcastReceiver pluginBroadcastReceiver) {
            this.f10051a = intentFilter;
            this.f10052b = pluginBroadcastReceiver;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f10052b);
            sb.append(" filter=");
            sb.append(this.f10051a);
            if (this.f10054d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private LocalBroadcastManager(Context context) {
        this.f10043a = context;
        this.f10047e = new Handler(context.getMainLooper()) { // from class: com.bytedance.pangle.LocalBroadcastManager.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    LocalBroadcastManager.this.a();
                }
            }
        };
    }

    public static LocalBroadcastManager getInstance(Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (f10041f) {
            if (f10042g == null) {
                f10042g = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = f10042g;
        }
        return localBroadcastManager;
    }

    final void a() {
        int size;
        a[] aVarArr;
        while (true) {
            synchronized (this.f10044b) {
                size = this.f10046d.size();
                if (size <= 0) {
                    return;
                }
                aVarArr = new a[size];
                this.f10046d.toArray(aVarArr);
                this.f10046d.clear();
            }
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = aVarArr[i2];
                int size2 = aVar.f10050b.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    b bVar = aVar.f10050b.get(i4);
                    if (!bVar.f10054d) {
                        bVar.f10052b.onReceive(this.f10043a, aVar.f10049a);
                    }
                }
            }
        }
    }

    public final void registerReceiver(PluginBroadcastReceiver pluginBroadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f10044b) {
            b bVar = new b(intentFilter, pluginBroadcastReceiver);
            ArrayList<b> arrayList = this.f10044b.get(pluginBroadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.f10044b.put(pluginBroadcastReceiver, arrayList);
            }
            arrayList.add(bVar);
            for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                String action = intentFilter.getAction(i2);
                ArrayList<b> arrayList2 = this.f10045c.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f10045c.put(action, arrayList2);
                }
                arrayList2.add(bVar);
            }
        }
    }

    public final boolean sendBroadcast(Intent intent) {
        int i2;
        String str;
        ArrayList arrayList;
        ArrayList<b> arrayList2;
        String str2;
        synchronized (this.f10044b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f10043a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z3 = (intent.getFlags() & 8) != 0;
            if (z3) {
                StringBuilder sb = new StringBuilder("Resolving type ");
                sb.append(resolveTypeIfNeeded);
                sb.append(" scheme ");
                sb.append(scheme);
                sb.append(" of intent ");
                sb.append(intent);
            }
            ArrayList<b> arrayList3 = this.f10045c.get(intent.getAction());
            if (arrayList3 != null) {
                if (z3) {
                    "Action list: ".concat(String.valueOf(arrayList3));
                }
                ArrayList arrayList4 = null;
                int i4 = 0;
                while (i4 < arrayList3.size()) {
                    b bVar = arrayList3.get(i4);
                    if (z3) {
                        new StringBuilder("Matching against filter ").append(bVar.f10051a);
                    }
                    if (bVar.f10053c) {
                        i2 = i4;
                        arrayList2 = arrayList3;
                        str = action;
                        str2 = resolveTypeIfNeeded;
                        arrayList = arrayList4;
                    } else {
                        i2 = i4;
                        str = action;
                        arrayList = arrayList4;
                        arrayList2 = arrayList3;
                        str2 = resolveTypeIfNeeded;
                        int match = bVar.f10051a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                        if (match >= 0) {
                            if (z3) {
                                new StringBuilder("  Filter matched!  match=0x").append(Integer.toHexString(match));
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList4.add(bVar);
                            bVar.f10053c = true;
                            i4 = i2 + 1;
                            action = str;
                            arrayList3 = arrayList2;
                            resolveTypeIfNeeded = str2;
                        } else if (z3) {
                            "  Filter did not match: ".concat(match != -4 ? match != -3 ? match != -2 ? match != -1 ? "unknown reason" : "type" : "data" : "action" : "category");
                        }
                    }
                    arrayList4 = arrayList;
                    i4 = i2 + 1;
                    action = str;
                    arrayList3 = arrayList2;
                    resolveTypeIfNeeded = str2;
                }
                ArrayList arrayList5 = arrayList4;
                if (arrayList5 != null) {
                    for (int i5 = 0; i5 < arrayList5.size(); i5++) {
                        ((b) arrayList5.get(i5)).f10053c = false;
                    }
                    this.f10046d.add(new a(intent, arrayList5));
                    if (!this.f10047e.hasMessages(1)) {
                        this.f10047e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public final void sendBroadcastSync(Intent intent) {
        if (sendBroadcast(intent)) {
            a();
        }
    }

    public final void unregisterReceiver(PluginBroadcastReceiver pluginBroadcastReceiver) {
        synchronized (this.f10044b) {
            ArrayList<b> remove = this.f10044b.remove(pluginBroadcastReceiver);
            if (remove == null) {
                return;
            }
            for (int size = remove.size() - 1; size >= 0; size--) {
                b bVar = remove.get(size);
                bVar.f10054d = true;
                for (int i2 = 0; i2 < bVar.f10051a.countActions(); i2++) {
                    String action = bVar.f10051a.getAction(i2);
                    ArrayList<b> arrayList = this.f10045c.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            b bVar2 = arrayList.get(size2);
                            if (bVar2.f10052b == pluginBroadcastReceiver) {
                                bVar2.f10054d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f10045c.remove(action);
                        }
                    }
                }
            }
        }
    }
}
