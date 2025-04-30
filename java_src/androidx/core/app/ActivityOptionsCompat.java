package androidx.core.app;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Pair;
/* loaded from: classes.dex */
public class ActivityOptionsCompat {
    public static final String EXTRA_USAGE_TIME_REPORT = "android.activity.usage_time";
    public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = "android.usage_time_packages";

    @RequiresApi(16)
    /* loaded from: classes.dex */
    private static class ActivityOptionsCompatImpl extends ActivityOptionsCompat {

        /* renamed from: a  reason: collision with root package name */
        private final ActivityOptions f3724a;

        ActivityOptionsCompatImpl(ActivityOptions activityOptions) {
            this.f3724a = activityOptions;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public Rect getLaunchBounds() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            return this.f3724a.getLaunchBounds();
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public void requestUsageTimeReport(@NonNull PendingIntent pendingIntent) {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f3724a.requestUsageTimeReport(pendingIntent);
            }
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        @NonNull
        public ActivityOptionsCompat setLaunchBounds(@Nullable Rect rect) {
            return Build.VERSION.SDK_INT < 24 ? this : new ActivityOptionsCompatImpl(this.f3724a.setLaunchBounds(rect));
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public Bundle toBundle() {
            return this.f3724a.toBundle();
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public void update(@NonNull ActivityOptionsCompat activityOptionsCompat) {
            if (activityOptionsCompat instanceof ActivityOptionsCompatImpl) {
                this.f3724a.update(((ActivityOptionsCompatImpl) activityOptionsCompat).f3724a);
            }
        }
    }

    protected ActivityOptionsCompat() {
    }

    @NonNull
    public static ActivityOptionsCompat makeBasic() {
        if (Build.VERSION.SDK_INT >= 23) {
            return new ActivityOptionsCompatImpl(ActivityOptions.makeBasic());
        }
        return new ActivityOptionsCompat();
    }

    @NonNull
    public static ActivityOptionsCompat makeClipRevealAnimation(@NonNull View view, int i2, int i4, int i5, int i6) {
        if (Build.VERSION.SDK_INT >= 23) {
            return new ActivityOptionsCompatImpl(ActivityOptions.makeClipRevealAnimation(view, i2, i4, i5, i6));
        }
        return new ActivityOptionsCompat();
    }

    @NonNull
    public static ActivityOptionsCompat makeCustomAnimation(@NonNull Context context, int i2, int i4) {
        if (Build.VERSION.SDK_INT >= 16) {
            return new ActivityOptionsCompatImpl(ActivityOptions.makeCustomAnimation(context, i2, i4));
        }
        return new ActivityOptionsCompat();
    }

    @NonNull
    public static ActivityOptionsCompat makeScaleUpAnimation(@NonNull View view, int i2, int i4, int i5, int i6) {
        if (Build.VERSION.SDK_INT >= 16) {
            return new ActivityOptionsCompatImpl(ActivityOptions.makeScaleUpAnimation(view, i2, i4, i5, i6));
        }
        return new ActivityOptionsCompat();
    }

    @NonNull
    public static ActivityOptionsCompat makeSceneTransitionAnimation(@NonNull Activity activity, @NonNull View view, @NonNull String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(activity, view, str));
        }
        return new ActivityOptionsCompat();
    }

    @NonNull
    public static ActivityOptionsCompat makeTaskLaunchBehind() {
        if (Build.VERSION.SDK_INT >= 21) {
            return new ActivityOptionsCompatImpl(ActivityOptions.makeTaskLaunchBehind());
        }
        return new ActivityOptionsCompat();
    }

    @NonNull
    public static ActivityOptionsCompat makeThumbnailScaleUpAnimation(@NonNull View view, @NonNull Bitmap bitmap, int i2, int i4) {
        if (Build.VERSION.SDK_INT >= 16) {
            return new ActivityOptionsCompatImpl(ActivityOptions.makeThumbnailScaleUpAnimation(view, bitmap, i2, i4));
        }
        return new ActivityOptionsCompat();
    }

    @Nullable
    public Rect getLaunchBounds() {
        return null;
    }

    public void requestUsageTimeReport(@NonNull PendingIntent pendingIntent) {
    }

    @NonNull
    public ActivityOptionsCompat setLaunchBounds(@Nullable Rect rect) {
        return this;
    }

    @Nullable
    public Bundle toBundle() {
        return null;
    }

    public void update(@NonNull ActivityOptionsCompat activityOptionsCompat) {
    }

    @NonNull
    public static ActivityOptionsCompat makeSceneTransitionAnimation(@NonNull Activity activity, Pair<View, String>... pairArr) {
        if (Build.VERSION.SDK_INT >= 21) {
            android.util.Pair[] pairArr2 = null;
            if (pairArr != null) {
                pairArr2 = new android.util.Pair[pairArr.length];
                for (int i2 = 0; i2 < pairArr.length; i2++) {
                    pairArr2[i2] = android.util.Pair.create(pairArr[i2].first, pairArr[i2].second);
                }
            }
            return new ActivityOptionsCompatImpl(ActivityOptions.makeSceneTransitionAnimation(activity, pairArr2));
        }
        return new ActivityOptionsCompat();
    }
}
