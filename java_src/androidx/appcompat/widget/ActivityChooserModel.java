package androidx.appcompat.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ActivityChooserModel extends DataSetObservable {
    public static final String DEFAULT_HISTORY_FILE_NAME = "activity_choser_model_history.xml";
    public static final int DEFAULT_HISTORY_MAX_LENGTH = 50;

    /* renamed from: n  reason: collision with root package name */
    static final boolean f847n = false;

    /* renamed from: p  reason: collision with root package name */
    static final String f849p = "historical-records";

    /* renamed from: q  reason: collision with root package name */
    static final String f850q = "historical-record";

    /* renamed from: r  reason: collision with root package name */
    static final String f851r = "activity";

    /* renamed from: s  reason: collision with root package name */
    static final String f852s = "time";

    /* renamed from: t  reason: collision with root package name */
    static final String f853t = "weight";

    /* renamed from: u  reason: collision with root package name */
    private static final int f854u = 5;

    /* renamed from: v  reason: collision with root package name */
    private static final float f855v = 1.0f;

    /* renamed from: w  reason: collision with root package name */
    private static final String f856w = ".xml";

    /* renamed from: x  reason: collision with root package name */
    private static final int f857x = -1;

    /* renamed from: d  reason: collision with root package name */
    final Context f863d;

    /* renamed from: e  reason: collision with root package name */
    final String f864e;

    /* renamed from: f  reason: collision with root package name */
    private Intent f865f;

    /* renamed from: m  reason: collision with root package name */
    private OnChooseActivityListener f872m;

    /* renamed from: o  reason: collision with root package name */
    static final String f848o = ActivityChooserModel.class.getSimpleName();

    /* renamed from: y  reason: collision with root package name */
    private static final Object f858y = new Object();

    /* renamed from: z  reason: collision with root package name */
    private static final Map<String, ActivityChooserModel> f859z = new HashMap();

    /* renamed from: a  reason: collision with root package name */
    private final Object f860a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final List<ActivityResolveInfo> f861b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final List<HistoricalRecord> f862c = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private ActivitySorter f866g = new DefaultSorter();

    /* renamed from: h  reason: collision with root package name */
    private int f867h = 50;

    /* renamed from: i  reason: collision with root package name */
    boolean f868i = true;

    /* renamed from: j  reason: collision with root package name */
    private boolean f869j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f870k = true;

    /* renamed from: l  reason: collision with root package name */
    private boolean f871l = false;

    /* loaded from: classes.dex */
    public interface ActivityChooserModelClient {
        void setActivityChooserModel(ActivityChooserModel activityChooserModel);
    }

    /* loaded from: classes.dex */
    public static final class ActivityResolveInfo implements Comparable<ActivityResolveInfo> {
        public final ResolveInfo resolveInfo;
        public float weight;

        public ActivityResolveInfo(ResolveInfo resolveInfo) {
            this.resolveInfo = resolveInfo;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return obj != null && ActivityResolveInfo.class == obj.getClass() && Float.floatToIntBits(this.weight) == Float.floatToIntBits(((ActivityResolveInfo) obj).weight);
        }

        public int hashCode() {
            return Float.floatToIntBits(this.weight) + 31;
        }

        public String toString() {
            return "[resolveInfo:" + this.resolveInfo.toString() + "; weight:" + new BigDecimal(this.weight) + "]";
        }

        @Override // java.lang.Comparable
        public int compareTo(ActivityResolveInfo activityResolveInfo) {
            return Float.floatToIntBits(activityResolveInfo.weight) - Float.floatToIntBits(this.weight);
        }
    }

    /* loaded from: classes.dex */
    public interface ActivitySorter {
        void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2);
    }

    /* loaded from: classes.dex */
    private static final class DefaultSorter implements ActivitySorter {

        /* renamed from: b  reason: collision with root package name */
        private static final float f873b = 0.95f;

        /* renamed from: a  reason: collision with root package name */
        private final Map<ComponentName, ActivityResolveInfo> f874a = new HashMap();

        DefaultSorter() {
        }

        @Override // androidx.appcompat.widget.ActivityChooserModel.ActivitySorter
        public void sort(Intent intent, List<ActivityResolveInfo> list, List<HistoricalRecord> list2) {
            Map<ComponentName, ActivityResolveInfo> map = this.f874a;
            map.clear();
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                ActivityResolveInfo activityResolveInfo = list.get(i2);
                activityResolveInfo.weight = 0.0f;
                ActivityInfo activityInfo = activityResolveInfo.resolveInfo.activityInfo;
                map.put(new ComponentName(activityInfo.packageName, activityInfo.name), activityResolveInfo);
            }
            float f4 = 1.0f;
            for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
                HistoricalRecord historicalRecord = list2.get(size2);
                ActivityResolveInfo activityResolveInfo2 = map.get(historicalRecord.activity);
                if (activityResolveInfo2 != null) {
                    activityResolveInfo2.weight += historicalRecord.weight * f4;
                    f4 *= f873b;
                }
            }
            Collections.sort(list);
        }
    }

    /* loaded from: classes.dex */
    public static final class HistoricalRecord {
        public final ComponentName activity;
        public final long time;
        public final float weight;

        public HistoricalRecord(String str, long j4, float f4) {
            this(ComponentName.unflattenFromString(str), j4, f4);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && HistoricalRecord.class == obj.getClass()) {
                HistoricalRecord historicalRecord = (HistoricalRecord) obj;
                ComponentName componentName = this.activity;
                if (componentName == null) {
                    if (historicalRecord.activity != null) {
                        return false;
                    }
                } else if (!componentName.equals(historicalRecord.activity)) {
                    return false;
                }
                return this.time == historicalRecord.time && Float.floatToIntBits(this.weight) == Float.floatToIntBits(historicalRecord.weight);
            }
            return false;
        }

        public int hashCode() {
            ComponentName componentName = this.activity;
            int hashCode = componentName == null ? 0 : componentName.hashCode();
            long j4 = this.time;
            return ((((hashCode + 31) * 31) + ((int) (j4 ^ (j4 >>> 32)))) * 31) + Float.floatToIntBits(this.weight);
        }

        public String toString() {
            return "[; activity:" + this.activity + "; time:" + this.time + "; weight:" + new BigDecimal(this.weight) + "]";
        }

        public HistoricalRecord(ComponentName componentName, long j4, float f4) {
            this.activity = componentName;
            this.time = j4;
            this.weight = f4;
        }
    }

    /* loaded from: classes.dex */
    public interface OnChooseActivityListener {
        boolean onChooseActivity(ActivityChooserModel activityChooserModel, Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class PersistHistoryAsyncTask extends AsyncTask<Object, Void, Void> {
        PersistHistoryAsyncTask() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x006b, code lost:
            if (r15 != null) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x006d, code lost:
            r15.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0088, code lost:
            if (r15 == null) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x00a0, code lost:
            if (r15 == null) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x00b8, code lost:
            if (r15 == null) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00bb, code lost:
            return null;
         */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Void doInBackground(java.lang.Object... r15) {
            /*
                r14 = this;
                java.lang.String r0 = "historical-record"
                java.lang.String r1 = "historical-records"
                java.lang.String r2 = "Error writing historical record file: "
                r3 = 0
                r4 = r15[r3]
                java.util.List r4 = (java.util.List) r4
                r5 = 1
                r15 = r15[r5]
                java.lang.String r15 = (java.lang.String) r15
                r6 = 0
                androidx.appcompat.widget.ActivityChooserModel r7 = androidx.appcompat.widget.ActivityChooserModel.this     // Catch: java.io.FileNotFoundException -> Lc6
                android.content.Context r7 = r7.f863d     // Catch: java.io.FileNotFoundException -> Lc6
                java.io.FileOutputStream r15 = r7.openFileOutput(r15, r3)     // Catch: java.io.FileNotFoundException -> Lc6
                org.xmlpull.v1.XmlSerializer r7 = android.util.Xml.newSerializer()
                r7.setOutput(r15, r6)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                java.lang.String r8 = "UTF-8"
                java.lang.Boolean r9 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                r7.startDocument(r8, r9)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                r7.startTag(r6, r1)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                int r8 = r4.size()     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                r9 = 0
            L2f:
                if (r9 >= r8) goto L61
                java.lang.Object r10 = r4.remove(r3)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                androidx.appcompat.widget.ActivityChooserModel$HistoricalRecord r10 = (androidx.appcompat.widget.ActivityChooserModel.HistoricalRecord) r10     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                r7.startTag(r6, r0)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                java.lang.String r11 = "activity"
                android.content.ComponentName r12 = r10.activity     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                java.lang.String r12 = r12.flattenToString()     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                r7.attribute(r6, r11, r12)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                java.lang.String r11 = "time"
                long r12 = r10.time     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                java.lang.String r12 = java.lang.String.valueOf(r12)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                r7.attribute(r6, r11, r12)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                java.lang.String r11 = "weight"
                float r10 = r10.weight     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                java.lang.String r10 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                r7.attribute(r6, r11, r10)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                r7.endTag(r6, r0)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                int r9 = r9 + 1
                goto L2f
            L61:
                r7.endTag(r6, r1)     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                r7.endDocument()     // Catch: java.lang.Throwable -> L71 java.io.IOException -> L73 java.lang.IllegalStateException -> L8b java.lang.IllegalArgumentException -> La3
                androidx.appcompat.widget.ActivityChooserModel r0 = androidx.appcompat.widget.ActivityChooserModel.this
                r0.f868i = r5
                if (r15 == 0) goto Lbb
            L6d:
                r15.close()     // Catch: java.io.IOException -> Lbb
                goto Lbb
            L71:
                r0 = move-exception
                goto Lbc
            L73:
                java.lang.String r0 = androidx.appcompat.widget.ActivityChooserModel.f848o     // Catch: java.lang.Throwable -> L71
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71
                r0.<init>()     // Catch: java.lang.Throwable -> L71
                r0.append(r2)     // Catch: java.lang.Throwable -> L71
                androidx.appcompat.widget.ActivityChooserModel r1 = androidx.appcompat.widget.ActivityChooserModel.this     // Catch: java.lang.Throwable -> L71
                java.lang.String r1 = r1.f864e     // Catch: java.lang.Throwable -> L71
                r0.append(r1)     // Catch: java.lang.Throwable -> L71
                androidx.appcompat.widget.ActivityChooserModel r0 = androidx.appcompat.widget.ActivityChooserModel.this
                r0.f868i = r5
                if (r15 == 0) goto Lbb
                goto L6d
            L8b:
                java.lang.String r0 = androidx.appcompat.widget.ActivityChooserModel.f848o     // Catch: java.lang.Throwable -> L71
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71
                r0.<init>()     // Catch: java.lang.Throwable -> L71
                r0.append(r2)     // Catch: java.lang.Throwable -> L71
                androidx.appcompat.widget.ActivityChooserModel r1 = androidx.appcompat.widget.ActivityChooserModel.this     // Catch: java.lang.Throwable -> L71
                java.lang.String r1 = r1.f864e     // Catch: java.lang.Throwable -> L71
                r0.append(r1)     // Catch: java.lang.Throwable -> L71
                androidx.appcompat.widget.ActivityChooserModel r0 = androidx.appcompat.widget.ActivityChooserModel.this
                r0.f868i = r5
                if (r15 == 0) goto Lbb
                goto L6d
            La3:
                java.lang.String r0 = androidx.appcompat.widget.ActivityChooserModel.f848o     // Catch: java.lang.Throwable -> L71
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L71
                r0.<init>()     // Catch: java.lang.Throwable -> L71
                r0.append(r2)     // Catch: java.lang.Throwable -> L71
                androidx.appcompat.widget.ActivityChooserModel r1 = androidx.appcompat.widget.ActivityChooserModel.this     // Catch: java.lang.Throwable -> L71
                java.lang.String r1 = r1.f864e     // Catch: java.lang.Throwable -> L71
                r0.append(r1)     // Catch: java.lang.Throwable -> L71
                androidx.appcompat.widget.ActivityChooserModel r0 = androidx.appcompat.widget.ActivityChooserModel.this
                r0.f868i = r5
                if (r15 == 0) goto Lbb
                goto L6d
            Lbb:
                return r6
            Lbc:
                androidx.appcompat.widget.ActivityChooserModel r1 = androidx.appcompat.widget.ActivityChooserModel.this
                r1.f868i = r5
                if (r15 == 0) goto Lc5
                r15.close()     // Catch: java.io.IOException -> Lc5
            Lc5:
                throw r0
            Lc6:
                java.lang.String r0 = androidx.appcompat.widget.ActivityChooserModel.f848o
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                r0.append(r2)
                r0.append(r15)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActivityChooserModel.PersistHistoryAsyncTask.doInBackground(java.lang.Object[]):java.lang.Void");
        }
    }

    private ActivityChooserModel(Context context, String str) {
        this.f863d = context.getApplicationContext();
        if (!TextUtils.isEmpty(str) && !str.endsWith(f856w)) {
            this.f864e = str + f856w;
            return;
        }
        this.f864e = str;
    }

    private boolean a(HistoricalRecord historicalRecord) {
        boolean add = this.f862c.add(historicalRecord);
        if (add) {
            this.f870k = true;
            e();
            d();
            h();
            notifyChanged();
        }
        return add;
    }

    private void b() {
        boolean c4 = c() | f();
        e();
        if (c4) {
            h();
            notifyChanged();
        }
    }

    private boolean c() {
        if (!this.f871l || this.f865f == null) {
            return false;
        }
        this.f871l = false;
        this.f861b.clear();
        List<ResolveInfo> queryIntentActivities = this.f863d.getPackageManager().queryIntentActivities(this.f865f, 0);
        int size = queryIntentActivities.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f861b.add(new ActivityResolveInfo(queryIntentActivities.get(i2)));
        }
        return true;
    }

    private void d() {
        if (this.f869j) {
            if (this.f870k) {
                this.f870k = false;
                if (TextUtils.isEmpty(this.f864e)) {
                    return;
                }
                new PersistHistoryAsyncTask().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new ArrayList(this.f862c), this.f864e);
                return;
            }
            return;
        }
        throw new IllegalStateException("No preceding call to #readHistoricalData");
    }

    private void e() {
        int size = this.f862c.size() - this.f867h;
        if (size <= 0) {
            return;
        }
        this.f870k = true;
        for (int i2 = 0; i2 < size; i2++) {
            this.f862c.remove(0);
        }
    }

    private boolean f() {
        if (this.f868i && this.f870k && !TextUtils.isEmpty(this.f864e)) {
            this.f868i = false;
            this.f869j = true;
            g();
            return true;
        }
        return false;
    }

    private void g() {
        XmlPullParser newPullParser;
        try {
            FileInputStream openFileInput = this.f863d.openFileInput(this.f864e);
            try {
                try {
                    try {
                        newPullParser = Xml.newPullParser();
                        newPullParser.setInput(openFileInput, "UTF-8");
                        for (int i2 = 0; i2 != 1 && i2 != 2; i2 = newPullParser.next()) {
                        }
                    } catch (Throwable th) {
                        if (openFileInput != null) {
                            try {
                                openFileInput.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException unused2) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Error reading historical recrod file: ");
                    sb.append(this.f864e);
                    if (openFileInput == null) {
                        return;
                    }
                }
            } catch (XmlPullParserException unused3) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Error reading historical recrod file: ");
                sb2.append(this.f864e);
                if (openFileInput == null) {
                    return;
                }
            }
            if (f849p.equals(newPullParser.getName())) {
                List<HistoricalRecord> list = this.f862c;
                list.clear();
                while (true) {
                    int next = newPullParser.next();
                    if (next == 1) {
                        if (openFileInput == null) {
                            return;
                        }
                    } else if (next != 3 && next != 4) {
                        if (f850q.equals(newPullParser.getName())) {
                            list.add(new HistoricalRecord(newPullParser.getAttributeValue(null, "activity"), Long.parseLong(newPullParser.getAttributeValue(null, "time")), Float.parseFloat(newPullParser.getAttributeValue(null, f853t))));
                        } else {
                            throw new XmlPullParserException("Share records file not well-formed.");
                        }
                    }
                }
                try {
                    openFileInput.close();
                } catch (IOException unused4) {
                }
            } else {
                throw new XmlPullParserException("Share records file does not start with historical-records tag.");
            }
        } catch (FileNotFoundException unused5) {
        }
    }

    public static ActivityChooserModel get(Context context, String str) {
        ActivityChooserModel activityChooserModel;
        synchronized (f858y) {
            Map<String, ActivityChooserModel> map = f859z;
            activityChooserModel = map.get(str);
            if (activityChooserModel == null) {
                activityChooserModel = new ActivityChooserModel(context, str);
                map.put(str, activityChooserModel);
            }
        }
        return activityChooserModel;
    }

    private boolean h() {
        if (this.f866g == null || this.f865f == null || this.f861b.isEmpty() || this.f862c.isEmpty()) {
            return false;
        }
        this.f866g.sort(this.f865f, this.f861b, Collections.unmodifiableList(this.f862c));
        return true;
    }

    public Intent chooseActivity(int i2) {
        synchronized (this.f860a) {
            if (this.f865f == null) {
                return null;
            }
            b();
            ActivityInfo activityInfo = this.f861b.get(i2).resolveInfo.activityInfo;
            ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
            Intent intent = new Intent(this.f865f);
            intent.setComponent(componentName);
            if (this.f872m != null) {
                if (this.f872m.onChooseActivity(this, new Intent(intent))) {
                    return null;
                }
            }
            a(new HistoricalRecord(componentName, System.currentTimeMillis(), 1.0f));
            return intent;
        }
    }

    public ResolveInfo getActivity(int i2) {
        ResolveInfo resolveInfo;
        synchronized (this.f860a) {
            b();
            resolveInfo = this.f861b.get(i2).resolveInfo;
        }
        return resolveInfo;
    }

    public int getActivityCount() {
        int size;
        synchronized (this.f860a) {
            b();
            size = this.f861b.size();
        }
        return size;
    }

    public int getActivityIndex(ResolveInfo resolveInfo) {
        synchronized (this.f860a) {
            b();
            List<ActivityResolveInfo> list = this.f861b;
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (list.get(i2).resolveInfo == resolveInfo) {
                    return i2;
                }
            }
            return -1;
        }
    }

    public ResolveInfo getDefaultActivity() {
        synchronized (this.f860a) {
            b();
            if (this.f861b.isEmpty()) {
                return null;
            }
            return this.f861b.get(0).resolveInfo;
        }
    }

    public int getHistoryMaxSize() {
        int i2;
        synchronized (this.f860a) {
            i2 = this.f867h;
        }
        return i2;
    }

    public int getHistorySize() {
        int size;
        synchronized (this.f860a) {
            b();
            size = this.f862c.size();
        }
        return size;
    }

    public Intent getIntent() {
        Intent intent;
        synchronized (this.f860a) {
            intent = this.f865f;
        }
        return intent;
    }

    public void setActivitySorter(ActivitySorter activitySorter) {
        synchronized (this.f860a) {
            if (this.f866g == activitySorter) {
                return;
            }
            this.f866g = activitySorter;
            if (h()) {
                notifyChanged();
            }
        }
    }

    public void setDefaultActivity(int i2) {
        synchronized (this.f860a) {
            b();
            ActivityResolveInfo activityResolveInfo = this.f861b.get(i2);
            ActivityResolveInfo activityResolveInfo2 = this.f861b.get(0);
            float f4 = activityResolveInfo2 != null ? (activityResolveInfo2.weight - activityResolveInfo.weight) + 5.0f : 1.0f;
            ActivityInfo activityInfo = activityResolveInfo.resolveInfo.activityInfo;
            a(new HistoricalRecord(new ComponentName(activityInfo.packageName, activityInfo.name), System.currentTimeMillis(), f4));
        }
    }

    public void setHistoryMaxSize(int i2) {
        synchronized (this.f860a) {
            if (this.f867h == i2) {
                return;
            }
            this.f867h = i2;
            e();
            if (h()) {
                notifyChanged();
            }
        }
    }

    public void setIntent(Intent intent) {
        synchronized (this.f860a) {
            if (this.f865f == intent) {
                return;
            }
            this.f865f = intent;
            this.f871l = true;
            b();
        }
    }

    public void setOnChooseActivityListener(OnChooseActivityListener onChooseActivityListener) {
        synchronized (this.f860a) {
            this.f872m = onChooseActivityListener;
        }
    }
}
