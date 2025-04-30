package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(16)
/* loaded from: classes.dex */
public class NotificationCompatJellybean {
    public static final String TAG = "NotificationCompat";

    /* renamed from: a  reason: collision with root package name */
    static final String f3995a = "android.support.dataRemoteInputs";

    /* renamed from: b  reason: collision with root package name */
    static final String f3996b = "android.support.allowGeneratedReplies";

    /* renamed from: c  reason: collision with root package name */
    private static final String f3997c = "icon";

    /* renamed from: d  reason: collision with root package name */
    private static final String f3998d = "title";

    /* renamed from: e  reason: collision with root package name */
    private static final String f3999e = "actionIntent";

    /* renamed from: f  reason: collision with root package name */
    private static final String f4000f = "extras";

    /* renamed from: g  reason: collision with root package name */
    private static final String f4001g = "remoteInputs";

    /* renamed from: h  reason: collision with root package name */
    private static final String f4002h = "dataOnlyRemoteInputs";

    /* renamed from: i  reason: collision with root package name */
    private static final String f4003i = "resultKey";

    /* renamed from: j  reason: collision with root package name */
    private static final String f4004j = "label";

    /* renamed from: k  reason: collision with root package name */
    private static final String f4005k = "choices";

    /* renamed from: l  reason: collision with root package name */
    private static final String f4006l = "allowFreeFormInput";

    /* renamed from: m  reason: collision with root package name */
    private static final String f4007m = "allowedDataTypes";

    /* renamed from: n  reason: collision with root package name */
    private static final String f4008n = "semanticAction";

    /* renamed from: o  reason: collision with root package name */
    private static final String f4009o = "showsUserInterface";

    /* renamed from: q  reason: collision with root package name */
    private static Field f4011q;

    /* renamed from: r  reason: collision with root package name */
    private static boolean f4012r;

    /* renamed from: t  reason: collision with root package name */
    private static Field f4014t;

    /* renamed from: u  reason: collision with root package name */
    private static Field f4015u;

    /* renamed from: v  reason: collision with root package name */
    private static Field f4016v;

    /* renamed from: w  reason: collision with root package name */
    private static Field f4017w;

    /* renamed from: x  reason: collision with root package name */
    private static boolean f4018x;

    /* renamed from: p  reason: collision with root package name */
    private static final Object f4010p = new Object();

    /* renamed from: s  reason: collision with root package name */
    private static final Object f4013s = new Object();

    private NotificationCompatJellybean() {
    }

    private static boolean a() {
        if (f4018x) {
            return false;
        }
        try {
            if (f4014t == null) {
                Class<?> cls = Class.forName("android.app.Notification$Action");
                f4015u = cls.getDeclaredField(f3997c);
                f4016v = cls.getDeclaredField("title");
                f4017w = cls.getDeclaredField(f3999e);
                Field declaredField = Notification.class.getDeclaredField("actions");
                f4014t = declaredField;
                declaredField.setAccessible(true);
            }
        } catch (ClassNotFoundException unused) {
            f4018x = true;
        } catch (NoSuchFieldException unused2) {
            f4018x = true;
        }
        return true ^ f4018x;
    }

    private static RemoteInput b(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(f4007m);
        HashSet hashSet = new HashSet();
        if (stringArrayList != null) {
            Iterator<String> it2 = stringArrayList.iterator();
            while (it2.hasNext()) {
                hashSet.add(it2.next());
            }
        }
        return new RemoteInput(bundle.getString(f4003i), bundle.getCharSequence("label"), bundle.getCharSequenceArray(f4005k), bundle.getBoolean(f4006l), 0, bundle.getBundle("extras"), hashSet);
    }

    public static SparseArray<Bundle> buildActionExtrasMap(List<Bundle> list) {
        int size = list.size();
        SparseArray<Bundle> sparseArray = null;
        for (int i2 = 0; i2 < size; i2++) {
            Bundle bundle = list.get(i2);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i2, bundle);
            }
        }
        return sparseArray;
    }

    private static RemoteInput[] c(Bundle[] bundleArr) {
        if (bundleArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[bundleArr.length];
        for (int i2 = 0; i2 < bundleArr.length; i2++) {
            remoteInputArr[i2] = b(bundleArr[i2]);
        }
        return remoteInputArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static NotificationCompat.Action d(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("extras");
        return new NotificationCompat.Action(bundle.getInt(f3997c), bundle.getCharSequence("title"), (PendingIntent) bundle.getParcelable(f3999e), bundle.getBundle("extras"), c(f(bundle, f4001g)), c(f(bundle, f4002h)), bundle2 != null ? bundle2.getBoolean(f3996b, false) : false, bundle.getInt(f4008n), bundle.getBoolean(f4009o), false);
    }

    private static Object[] e(Notification notification) {
        synchronized (f4013s) {
            if (a()) {
                try {
                    return (Object[]) f4014t.get(notification);
                } catch (IllegalAccessException unused) {
                    f4018x = true;
                    return null;
                }
            }
            return null;
        }
    }

    private static Bundle[] f(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if (!(parcelableArray instanceof Bundle[]) && parcelableArray != null) {
            Bundle[] bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
            bundle.putParcelableArray(str, bundleArr);
            return bundleArr;
        }
        return (Bundle[]) parcelableArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Bundle g(NotificationCompat.Action action) {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        IconCompat iconCompat = action.getIconCompat();
        bundle2.putInt(f3997c, iconCompat != null ? iconCompat.getResId() : 0);
        bundle2.putCharSequence("title", action.getTitle());
        bundle2.putParcelable(f3999e, action.getActionIntent());
        if (action.getExtras() != null) {
            bundle = new Bundle(action.getExtras());
        } else {
            bundle = new Bundle();
        }
        bundle.putBoolean(f3996b, action.getAllowGeneratedReplies());
        bundle2.putBundle("extras", bundle);
        bundle2.putParcelableArray(f4001g, i(action.getRemoteInputs()));
        bundle2.putBoolean(f4009o, action.getShowsUserInterface());
        bundle2.putInt(f4008n, action.getSemanticAction());
        return bundle2;
    }

    public static NotificationCompat.Action getAction(Notification notification, int i2) {
        SparseArray sparseParcelableArray;
        synchronized (f4013s) {
            try {
                try {
                    Object[] e4 = e(notification);
                    if (e4 != null) {
                        Object obj = e4[i2];
                        Bundle extras = getExtras(notification);
                        return readAction(f4015u.getInt(obj), (CharSequence) f4016v.get(obj), (PendingIntent) f4017w.get(obj), (extras == null || (sparseParcelableArray = extras.getSparseParcelableArray(NotificationCompatExtras.EXTRA_ACTION_EXTRAS)) == null) ? null : (Bundle) sparseParcelableArray.get(i2));
                    }
                } catch (IllegalAccessException unused) {
                    f4018x = true;
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int getActionCount(Notification notification) {
        int length;
        synchronized (f4013s) {
            Object[] e4 = e(notification);
            length = e4 != null ? e4.length : 0;
        }
        return length;
    }

    public static Bundle getExtras(Notification notification) {
        synchronized (f4010p) {
            if (f4012r) {
                return null;
            }
            try {
                if (f4011q == null) {
                    Field declaredField = Notification.class.getDeclaredField("extras");
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        f4012r = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    f4011q = declaredField;
                }
                Bundle bundle = (Bundle) f4011q.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    f4011q.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException | NoSuchFieldException unused) {
                f4012r = true;
                return null;
            }
        }
    }

    private static Bundle h(RemoteInput remoteInput) {
        Bundle bundle = new Bundle();
        bundle.putString(f4003i, remoteInput.getResultKey());
        bundle.putCharSequence("label", remoteInput.getLabel());
        bundle.putCharSequenceArray(f4005k, remoteInput.getChoices());
        bundle.putBoolean(f4006l, remoteInput.getAllowFreeFormInput());
        bundle.putBundle("extras", remoteInput.getExtras());
        Set<String> allowedDataTypes = remoteInput.getAllowedDataTypes();
        if (allowedDataTypes != null && !allowedDataTypes.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(allowedDataTypes.size());
            for (String str : allowedDataTypes) {
                arrayList.add(str);
            }
            bundle.putStringArrayList(f4007m, arrayList);
        }
        return bundle;
    }

    private static Bundle[] i(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[remoteInputArr.length];
        for (int i2 = 0; i2 < remoteInputArr.length; i2++) {
            bundleArr[i2] = h(remoteInputArr[i2]);
        }
        return bundleArr;
    }

    public static NotificationCompat.Action readAction(int i2, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
        RemoteInput[] remoteInputArr;
        RemoteInput[] remoteInputArr2;
        boolean z3;
        if (bundle != null) {
            remoteInputArr = c(f(bundle, NotificationCompatExtras.EXTRA_REMOTE_INPUTS));
            remoteInputArr2 = c(f(bundle, f3995a));
            z3 = bundle.getBoolean(f3996b);
        } else {
            remoteInputArr = null;
            remoteInputArr2 = null;
            z3 = false;
        }
        return new NotificationCompat.Action(i2, charSequence, pendingIntent, bundle, remoteInputArr, remoteInputArr2, z3, 0, true, false);
    }

    public static Bundle writeActionAndGetExtras(Notification.Builder builder, NotificationCompat.Action action) {
        IconCompat iconCompat = action.getIconCompat();
        builder.addAction(iconCompat != null ? iconCompat.getResId() : 0, action.getTitle(), action.getActionIntent());
        Bundle bundle = new Bundle(action.getExtras());
        if (action.getRemoteInputs() != null) {
            bundle.putParcelableArray(NotificationCompatExtras.EXTRA_REMOTE_INPUTS, i(action.getRemoteInputs()));
        }
        if (action.getDataOnlyRemoteInputs() != null) {
            bundle.putParcelableArray(f3995a, i(action.getDataOnlyRemoteInputs()));
        }
        bundle.putBoolean(f3996b, action.getAllowGeneratedReplies());
        return bundle;
    }
}
