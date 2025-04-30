package androidx.localbroadcastmanager.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes.dex */
public final class LocalBroadcastManager {

    /* renamed from: f  reason: collision with root package name */
    private static final String f6407f = "LocalBroadcastManager";

    /* renamed from: g  reason: collision with root package name */
    private static final boolean f6408g = false;

    /* renamed from: h  reason: collision with root package name */
    static final int f6409h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final Object f6410i = new Object();

    /* renamed from: j  reason: collision with root package name */
    private static LocalBroadcastManager f6411j;

    /* renamed from: a  reason: collision with root package name */
    private final Context f6412a;

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<BroadcastReceiver, ArrayList<ReceiverRecord>> f6413b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, ArrayList<ReceiverRecord>> f6414c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayList<BroadcastRecord> f6415d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private final Handler f6416e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class BroadcastRecord {

        /* renamed from: a  reason: collision with root package name */
        final Intent f6418a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayList<ReceiverRecord> f6419b;

        BroadcastRecord(Intent intent, ArrayList<ReceiverRecord> arrayList) {
            this.f6418a = intent;
            this.f6419b = arrayList;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class ReceiverRecord {

        /* renamed from: a  reason: collision with root package name */
        final IntentFilter f6420a;

        /* renamed from: b  reason: collision with root package name */
        final BroadcastReceiver f6421b;

        /* renamed from: c  reason: collision with root package name */
        boolean f6422c;

        /* renamed from: d  reason: collision with root package name */
        boolean f6423d;

        ReceiverRecord(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.f6420a = intentFilter;
            this.f6421b = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.f6421b);
            sb.append(" filter=");
            sb.append(this.f6420a);
            if (this.f6423d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private LocalBroadcastManager(Context context) {
        this.f6412a = context;
        this.f6416e = new Handler(context.getMainLooper()) { // from class: androidx.localbroadcastmanager.content.LocalBroadcastManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    super.handleMessage(message);
                } else {
                    LocalBroadcastManager.this.a();
                }
            }
        };
    }

    @NonNull
    public static LocalBroadcastManager getInstance(@NonNull Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (f6410i) {
            if (f6411j == null) {
                f6411j = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = f6411j;
        }
        return localBroadcastManager;
    }

    void a() {
        int size;
        BroadcastRecord[] broadcastRecordArr;
        while (true) {
            synchronized (this.f6413b) {
                size = this.f6415d.size();
                if (size <= 0) {
                    return;
                }
                broadcastRecordArr = new BroadcastRecord[size];
                this.f6415d.toArray(broadcastRecordArr);
                this.f6415d.clear();
            }
            for (int i2 = 0; i2 < size; i2++) {
                BroadcastRecord broadcastRecord = broadcastRecordArr[i2];
                int size2 = broadcastRecord.f6419b.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    ReceiverRecord receiverRecord = broadcastRecord.f6419b.get(i4);
                    if (!receiverRecord.f6423d) {
                        receiverRecord.f6421b.onReceive(this.f6412a, broadcastRecord.f6418a);
                    }
                }
            }
        }
    }

    public void registerReceiver(@NonNull BroadcastReceiver broadcastReceiver, @NonNull IntentFilter intentFilter) {
        synchronized (this.f6413b) {
            ReceiverRecord receiverRecord = new ReceiverRecord(intentFilter, broadcastReceiver);
            ArrayList<ReceiverRecord> arrayList = this.f6413b.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.f6413b.put(broadcastReceiver, arrayList);
            }
            arrayList.add(receiverRecord);
            for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                String action = intentFilter.getAction(i2);
                ArrayList<ReceiverRecord> arrayList2 = this.f6414c.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.f6414c.put(action, arrayList2);
                }
                arrayList2.add(receiverRecord);
            }
        }
    }

    public boolean sendBroadcast(@NonNull Intent intent) {
        int i2;
        String str;
        ArrayList arrayList;
        ArrayList<ReceiverRecord> arrayList2;
        String str2;
        synchronized (this.f6413b) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f6412a.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z3 = (intent.getFlags() & 8) != 0;
            if (z3) {
                StringBuilder sb = new StringBuilder();
                sb.append("Resolving type ");
                sb.append(resolveTypeIfNeeded);
                sb.append(" scheme ");
                sb.append(scheme);
                sb.append(" of intent ");
                sb.append(intent);
            }
            ArrayList<ReceiverRecord> arrayList3 = this.f6414c.get(intent.getAction());
            if (arrayList3 != null) {
                if (z3) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Action list: ");
                    sb2.append(arrayList3);
                }
                ArrayList arrayList4 = null;
                int i4 = 0;
                while (i4 < arrayList3.size()) {
                    ReceiverRecord receiverRecord = arrayList3.get(i4);
                    if (z3) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Matching against filter ");
                        sb3.append(receiverRecord.f6420a);
                    }
                    if (receiverRecord.f6422c) {
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
                        int match = receiverRecord.f6420a.match(action, resolveTypeIfNeeded, scheme, data, categories, f6407f);
                        if (match >= 0) {
                            if (z3) {
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("  Filter matched!  match=0x");
                                sb4.append(Integer.toHexString(match));
                            }
                            arrayList4 = arrayList == null ? new ArrayList() : arrayList;
                            arrayList4.add(receiverRecord);
                            receiverRecord.f6422c = true;
                            i4 = i2 + 1;
                            action = str;
                            arrayList3 = arrayList2;
                            resolveTypeIfNeeded = str2;
                        } else if (z3) {
                            String str3 = match != -4 ? match != -3 ? match != -2 ? match != -1 ? "unknown reason" : "type" : "data" : "action" : "category";
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("  Filter did not match: ");
                            sb5.append(str3);
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
                        ((ReceiverRecord) arrayList5.get(i5)).f6422c = false;
                    }
                    this.f6415d.add(new BroadcastRecord(intent, arrayList5));
                    if (!this.f6416e.hasMessages(1)) {
                        this.f6416e.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public void sendBroadcastSync(@NonNull Intent intent) {
        if (sendBroadcast(intent)) {
            a();
        }
    }

    public void unregisterReceiver(@NonNull BroadcastReceiver broadcastReceiver) {
        synchronized (this.f6413b) {
            ArrayList<ReceiverRecord> remove = this.f6413b.remove(broadcastReceiver);
            if (remove == null) {
                return;
            }
            for (int size = remove.size() - 1; size >= 0; size--) {
                ReceiverRecord receiverRecord = remove.get(size);
                receiverRecord.f6423d = true;
                for (int i2 = 0; i2 < receiverRecord.f6420a.countActions(); i2++) {
                    String action = receiverRecord.f6420a.getAction(i2);
                    ArrayList<ReceiverRecord> arrayList = this.f6414c.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            ReceiverRecord receiverRecord2 = arrayList.get(size2);
                            if (receiverRecord2.f6421b == broadcastReceiver) {
                                receiverRecord2.f6423d = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.f6414c.remove(action);
                        }
                    }
                }
            }
        }
    }
}
