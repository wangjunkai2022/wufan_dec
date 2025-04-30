package androidx.core.content.pm;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutInfoCompatSaver;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Preconditions;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class ShortcutManagerCompat {
    public static final String EXTRA_SHORTCUT_ID = "android.intent.extra.shortcut.ID";
    public static final int FLAG_MATCH_CACHED = 8;
    public static final int FLAG_MATCH_DYNAMIC = 2;
    public static final int FLAG_MATCH_MANIFEST = 1;
    public static final int FLAG_MATCH_PINNED = 4;
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    static final String f4165a = "com.android.launcher.action.INSTALL_SHORTCUT";
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    static final String f4166b = "com.android.launcher.permission.INSTALL_SHORTCUT";

    /* renamed from: c  reason: collision with root package name */
    private static final int f4167c = 96;

    /* renamed from: d  reason: collision with root package name */
    private static final int f4168d = 48;

    /* renamed from: e  reason: collision with root package name */
    private static volatile ShortcutInfoCompatSaver<?> f4169e = null;

    /* renamed from: f  reason: collision with root package name */
    private static volatile List<ShortcutInfoChangeListener> f4170f = null;

    /* renamed from: g  reason: collision with root package name */
    private static final String f4171g = "androidx.core.content.pm.SHORTCUT_LISTENER";

    /* renamed from: h  reason: collision with root package name */
    private static final String f4172h = "androidx.core.content.pm.shortcut_listener_impl";

    @RequiresApi(25)
    /* loaded from: classes.dex */
    private static class Api25Impl {
        private Api25Impl() {
        }

        static String a(@NonNull List<ShortcutInfo> list) {
            int i2 = -1;
            String str = null;
            for (ShortcutInfo shortcutInfo : list) {
                if (shortcutInfo.getRank() > i2) {
                    str = shortcutInfo.getId();
                    i2 = shortcutInfo.getRank();
                }
            }
            return str;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ShortcutMatchFlags {
    }

    private ShortcutManagerCompat() {
    }

    @VisibleForTesting
    static boolean a(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat) {
        Bitmap decodeStream;
        IconCompat createWithBitmap;
        IconCompat iconCompat = shortcutInfoCompat.f4142i;
        if (iconCompat == null) {
            return false;
        }
        int i2 = iconCompat.mType;
        if (i2 == 6 || i2 == 4) {
            InputStream uriInputStream = iconCompat.getUriInputStream(context);
            if (uriInputStream == null || (decodeStream = BitmapFactory.decodeStream(uriInputStream)) == null) {
                return false;
            }
            if (i2 == 6) {
                createWithBitmap = IconCompat.createWithAdaptiveBitmap(decodeStream);
            } else {
                createWithBitmap = IconCompat.createWithBitmap(decodeStream);
            }
            shortcutInfoCompat.f4142i = createWithBitmap;
            return true;
        }
        return true;
    }

    public static boolean addDynamicShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 <= 29) {
            b(context, list);
        }
        if (i2 >= 25) {
            ArrayList arrayList = new ArrayList();
            for (ShortcutInfoCompat shortcutInfoCompat : list) {
                arrayList.add(shortcutInfoCompat.toShortcutInfo());
            }
            if (!((ShortcutManager) context.getSystemService(ShortcutManager.class)).addDynamicShortcuts(arrayList)) {
                return false;
            }
        }
        g(context).addShortcuts(list);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : f(context)) {
            shortcutInfoChangeListener.onShortcutAdded(list);
        }
        return true;
    }

    @VisibleForTesting
    static void b(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        for (ShortcutInfoCompat shortcutInfoCompat : new ArrayList(list)) {
            if (!a(context, shortcutInfoCompat)) {
                list.remove(shortcutInfoCompat);
            }
        }
    }

    private static int c(@NonNull Context context, boolean z3) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
        int max = Math.max(1, Build.VERSION.SDK_INT < 19 || activityManager == null || activityManager.isLowRamDevice() ? 48 : 96);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return (int) (max * ((z3 ? displayMetrics.xdpi : displayMetrics.ydpi) / 160.0f));
    }

    @NonNull
    public static Intent createShortcutResultIntent(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat) {
        Intent createShortcutResultIntent = Build.VERSION.SDK_INT >= 26 ? ((ShortcutManager) context.getSystemService(ShortcutManager.class)).createShortcutResultIntent(shortcutInfoCompat.toShortcutInfo()) : null;
        if (createShortcutResultIntent == null) {
            createShortcutResultIntent = new Intent();
        }
        return shortcutInfoCompat.a(createShortcutResultIntent);
    }

    @VisibleForTesting
    static List<ShortcutInfoChangeListener> d() {
        return f4170f;
    }

    public static void disableShortcuts(@NonNull Context context, @NonNull List<String> list, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 25) {
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).disableShortcuts(list, charSequence);
        }
        g(context).removeShortcuts(list);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : f(context)) {
            shortcutInfoChangeListener.onShortcutRemoved(list);
        }
    }

    private static String e(@NonNull List<ShortcutInfoCompat> list) {
        int i2 = -1;
        String str = null;
        for (ShortcutInfoCompat shortcutInfoCompat : list) {
            if (shortcutInfoCompat.getRank() > i2) {
                str = shortcutInfoCompat.getId();
                i2 = shortcutInfoCompat.getRank();
            }
        }
        return str;
    }

    public static void enableShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList(list.size());
            for (ShortcutInfoCompat shortcutInfoCompat : list) {
                arrayList.add(shortcutInfoCompat.f4135b);
            }
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).enableShortcuts(arrayList);
        }
        g(context).addShortcuts(list);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : f(context)) {
            shortcutInfoChangeListener.onShortcutAdded(list);
        }
    }

    private static List<ShortcutInfoChangeListener> f(Context context) {
        Bundle bundle;
        String string;
        if (f4170f == null) {
            ArrayList arrayList = new ArrayList();
            if (Build.VERSION.SDK_INT >= 21) {
                PackageManager packageManager = context.getPackageManager();
                Intent intent = new Intent(f4171g);
                intent.setPackage(context.getPackageName());
                for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 128)) {
                    ActivityInfo activityInfo = resolveInfo.activityInfo;
                    if (activityInfo != null && (bundle = activityInfo.metaData) != null && (string = bundle.getString(f4172h)) != null) {
                        try {
                            arrayList.add((ShortcutInfoChangeListener) Class.forName(string, false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context));
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            if (f4170f == null) {
                f4170f = arrayList;
            }
        }
        return f4170f;
    }

    private static ShortcutInfoCompatSaver<?> g(Context context) {
        if (f4169e == null) {
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    f4169e = (ShortcutInfoCompatSaver) Class.forName("androidx.sharetarget.ShortcutInfoCompatSaverImpl", false, ShortcutManagerCompat.class.getClassLoader()).getMethod("getInstance", Context.class).invoke(null, context);
                } catch (Exception unused) {
                }
            }
            if (f4169e == null) {
                f4169e = new ShortcutInfoCompatSaver.NoopImpl();
            }
        }
        return f4169e;
    }

    @NonNull
    public static List<ShortcutInfoCompat> getDynamicShortcuts(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            List<ShortcutInfo> dynamicShortcuts = ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getDynamicShortcuts();
            ArrayList arrayList = new ArrayList(dynamicShortcuts.size());
            for (ShortcutInfo shortcutInfo : dynamicShortcuts) {
                arrayList.add(new ShortcutInfoCompat.Builder(context, shortcutInfo).build());
            }
            return arrayList;
        }
        try {
            return g(context).getShortcuts();
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public static int getIconMaxHeight(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getIconMaxHeight();
        }
        return c(context, false);
    }

    public static int getIconMaxWidth(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getIconMaxWidth();
        }
        return c(context, true);
    }

    public static int getMaxShortcutCountPerActivity(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getMaxShortcutCountPerActivity();
        }
        return 5;
    }

    @NonNull
    public static List<ShortcutInfoCompat> getShortcuts(@NonNull Context context, int i2) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 30) {
            return ShortcutInfoCompat.c(context, ((ShortcutManager) context.getSystemService(ShortcutManager.class)).getShortcuts(i2));
        }
        if (i4 >= 25) {
            ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService(ShortcutManager.class);
            ArrayList arrayList = new ArrayList();
            if ((i2 & 1) != 0) {
                arrayList.addAll(shortcutManager.getManifestShortcuts());
            }
            if ((i2 & 2) != 0) {
                arrayList.addAll(shortcutManager.getDynamicShortcuts());
            }
            if ((i2 & 4) != 0) {
                arrayList.addAll(shortcutManager.getPinnedShortcuts());
            }
            return ShortcutInfoCompat.c(context, arrayList);
        }
        if ((i2 & 2) != 0) {
            try {
                return g(context).getShortcuts();
            } catch (Exception unused) {
            }
        }
        return Collections.emptyList();
    }

    @VisibleForTesting
    static void h(List<ShortcutInfoChangeListener> list) {
        f4170f = list;
    }

    @VisibleForTesting
    static void i(ShortcutInfoCompatSaver<Void> shortcutInfoCompatSaver) {
        f4169e = shortcutInfoCompatSaver;
    }

    public static boolean isRateLimitingActive(@NonNull Context context) {
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).isRateLimitingActive();
        }
        return getShortcuts(context, 3).size() == getMaxShortcutCountPerActivity(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isRequestPinShortcutSupported(@androidx.annotation.NonNull android.content.Context r4) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L13
            java.lang.Class<android.content.pm.ShortcutManager> r0 = android.content.pm.ShortcutManager.class
            java.lang.Object r4 = r4.getSystemService(r0)
            android.content.pm.ShortcutManager r4 = (android.content.pm.ShortcutManager) r4
            boolean r4 = r4.isRequestPinShortcutSupported()
            return r4
        L13:
            java.lang.String r0 = "com.android.launcher.permission.INSTALL_SHORTCUT"
            int r1 = androidx.core.content.ContextCompat.checkSelfPermission(r4, r0)
            r2 = 0
            if (r1 == 0) goto L1d
            return r2
        L1d:
            android.content.pm.PackageManager r4 = r4.getPackageManager()
            android.content.Intent r1 = new android.content.Intent
            java.lang.String r3 = "com.android.launcher.action.INSTALL_SHORTCUT"
            r1.<init>(r3)
            java.util.List r4 = r4.queryBroadcastReceivers(r1, r2)
            java.util.Iterator r4 = r4.iterator()
        L30:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L4e
            java.lang.Object r1 = r4.next()
            android.content.pm.ResolveInfo r1 = (android.content.pm.ResolveInfo) r1
            android.content.pm.ActivityInfo r1 = r1.activityInfo
            java.lang.String r1 = r1.permission
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 != 0) goto L4c
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L30
        L4c:
            r4 = 1
            return r4
        L4e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.pm.ShortcutManagerCompat.isRequestPinShortcutSupported(android.content.Context):boolean");
    }

    public static boolean pushDynamicShortcut(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(shortcutInfoCompat);
        int maxShortcutCountPerActivity = getMaxShortcutCountPerActivity(context);
        if (maxShortcutCountPerActivity == 0) {
            return false;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 <= 29) {
            a(context, shortcutInfoCompat);
        }
        if (i2 >= 30) {
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).pushDynamicShortcut(shortcutInfoCompat.toShortcutInfo());
        } else if (i2 >= 25) {
            ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService(ShortcutManager.class);
            if (shortcutManager.isRateLimitingActive()) {
                return false;
            }
            List<ShortcutInfo> dynamicShortcuts = shortcutManager.getDynamicShortcuts();
            if (dynamicShortcuts.size() >= maxShortcutCountPerActivity) {
                shortcutManager.removeDynamicShortcuts(Arrays.asList(Api25Impl.a(dynamicShortcuts)));
            }
            shortcutManager.addDynamicShortcuts(Arrays.asList(shortcutInfoCompat.toShortcutInfo()));
        }
        ShortcutInfoCompatSaver<?> g4 = g(context);
        try {
            List<ShortcutInfoCompat> shortcuts = g4.getShortcuts();
            if (shortcuts.size() >= maxShortcutCountPerActivity) {
                g4.removeShortcuts(Arrays.asList(e(shortcuts)));
            }
            g4.addShortcuts(Arrays.asList(shortcutInfoCompat));
            for (ShortcutInfoChangeListener shortcutInfoChangeListener : f(context)) {
                shortcutInfoChangeListener.onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            return true;
        } catch (Exception unused) {
            for (ShortcutInfoChangeListener shortcutInfoChangeListener2 : f(context)) {
                shortcutInfoChangeListener2.onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            return false;
        } catch (Throwable th) {
            for (ShortcutInfoChangeListener shortcutInfoChangeListener3 : f(context)) {
                shortcutInfoChangeListener3.onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            throw th;
        }
    }

    public static void removeAllDynamicShortcuts(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).removeAllDynamicShortcuts();
        }
        g(context).removeAllShortcuts();
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : f(context)) {
            shortcutInfoChangeListener.onAllShortcutsRemoved();
        }
    }

    public static void removeDynamicShortcuts(@NonNull Context context, @NonNull List<String> list) {
        if (Build.VERSION.SDK_INT >= 25) {
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).removeDynamicShortcuts(list);
        }
        g(context).removeShortcuts(list);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : f(context)) {
            shortcutInfoChangeListener.onShortcutRemoved(list);
        }
    }

    public static void removeLongLivedShortcuts(@NonNull Context context, @NonNull List<String> list) {
        if (Build.VERSION.SDK_INT < 30) {
            removeDynamicShortcuts(context, list);
            return;
        }
        ((ShortcutManager) context.getSystemService(ShortcutManager.class)).removeLongLivedShortcuts(list);
        g(context).removeShortcuts(list);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : f(context)) {
            shortcutInfoChangeListener.onShortcutRemoved(list);
        }
    }

    public static void reportShortcutUsed(@NonNull Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        if (Build.VERSION.SDK_INT >= 25) {
            ((ShortcutManager) context.getSystemService(ShortcutManager.class)).reportShortcutUsed(str);
        }
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : f(context)) {
            shortcutInfoChangeListener.onShortcutUsageReported(Collections.singletonList(str));
        }
    }

    public static boolean requestPinShortcut(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat, @Nullable final IntentSender intentSender) {
        if (Build.VERSION.SDK_INT >= 26) {
            return ((ShortcutManager) context.getSystemService(ShortcutManager.class)).requestPinShortcut(shortcutInfoCompat.toShortcutInfo(), intentSender);
        }
        if (isRequestPinShortcutSupported(context)) {
            Intent a4 = shortcutInfoCompat.a(new Intent("com.android.launcher.action.INSTALL_SHORTCUT"));
            if (intentSender == null) {
                context.sendBroadcast(a4);
                return true;
            }
            context.sendOrderedBroadcast(a4, null, new BroadcastReceiver() { // from class: androidx.core.content.pm.ShortcutManagerCompat.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    try {
                        intentSender.sendIntent(context2, 0, null, null, null);
                    } catch (IntentSender.SendIntentException unused) {
                    }
                }
            }, null, -1, null, null);
            return true;
        }
        return false;
    }

    public static boolean setDynamicShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(list);
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList(list.size());
            for (ShortcutInfoCompat shortcutInfoCompat : list) {
                arrayList.add(shortcutInfoCompat.toShortcutInfo());
            }
            if (!((ShortcutManager) context.getSystemService(ShortcutManager.class)).setDynamicShortcuts(arrayList)) {
                return false;
            }
        }
        g(context).removeAllShortcuts();
        g(context).addShortcuts(list);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : f(context)) {
            shortcutInfoChangeListener.onAllShortcutsRemoved();
            shortcutInfoChangeListener.onShortcutAdded(list);
        }
        return true;
    }

    public static boolean updateShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 <= 29) {
            b(context, list);
        }
        if (i2 >= 25) {
            ArrayList arrayList = new ArrayList();
            for (ShortcutInfoCompat shortcutInfoCompat : list) {
                arrayList.add(shortcutInfoCompat.toShortcutInfo());
            }
            if (!((ShortcutManager) context.getSystemService(ShortcutManager.class)).updateShortcuts(arrayList)) {
                return false;
            }
        }
        g(context).addShortcuts(list);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : f(context)) {
            shortcutInfoChangeListener.onShortcutUpdated(list);
        }
        return true;
    }
}
