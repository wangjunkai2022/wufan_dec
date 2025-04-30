package androidx.media;

import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import androidx.annotation.RestrictTo;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class MediaBrowserCompatUtils {
    private MediaBrowserCompatUtils() {
    }

    public static boolean areSameOptions(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        return bundle == null ? bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1 : bundle2 == null ? bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == -1 && bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == -1 : bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) == bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1) && bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1) == bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
    }

    public static boolean hasDuplicatedItems(Bundle bundle, Bundle bundle2) {
        int i2;
        int i4;
        int i5;
        int i6 = bundle == null ? -1 : bundle.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i7 = bundle2 == null ? -1 : bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE, -1);
        int i8 = bundle == null ? -1 : bundle.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        int i9 = bundle2 == null ? -1 : bundle2.getInt(MediaBrowserCompat.EXTRA_PAGE_SIZE, -1);
        int i10 = Integer.MAX_VALUE;
        if (i6 == -1 || i8 == -1) {
            i2 = Integer.MAX_VALUE;
            i4 = 0;
        } else {
            i4 = i6 * i8;
            i2 = (i8 + i4) - 1;
        }
        if (i7 == -1 || i9 == -1) {
            i5 = 0;
        } else {
            i5 = i7 * i9;
            i10 = (i9 + i5) - 1;
        }
        return i2 >= i5 && i10 >= i4;
    }
}
