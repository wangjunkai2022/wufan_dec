package androidx.legacy.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.SparseArray;
@Deprecated
/* loaded from: classes.dex */
public abstract class WakefulBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6174a = "androidx.contentpager.content.wakelockid";

    /* renamed from: b  reason: collision with root package name */
    private static final SparseArray<PowerManager.WakeLock> f6175b = new SparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    private static int f6176c = 1;

    public static boolean completeWakefulIntent(Intent intent) {
        int intExtra = intent.getIntExtra(f6174a, 0);
        if (intExtra == 0) {
            return false;
        }
        SparseArray<PowerManager.WakeLock> sparseArray = f6175b;
        synchronized (sparseArray) {
            PowerManager.WakeLock wakeLock = sparseArray.get(intExtra);
            if (wakeLock != null) {
                wakeLock.release();
                sparseArray.remove(intExtra);
                return true;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("No active wake lock id #");
            sb.append(intExtra);
            return true;
        }
    }

    public static ComponentName startWakefulService(Context context, Intent intent) {
        SparseArray<PowerManager.WakeLock> sparseArray = f6175b;
        synchronized (sparseArray) {
            int i2 = f6176c;
            int i4 = i2 + 1;
            f6176c = i4;
            if (i4 <= 0) {
                f6176c = 1;
            }
            intent.putExtra(f6174a, i2);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + startService.flattenToShortString());
            newWakeLock.setReferenceCounted(false);
            newWakeLock.acquire(60000L);
            sparseArray.put(i2, newWakeLock);
            return startService;
        }
    }
}
