package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.core.content.IntentCompat;
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public class AppLaunchChecker {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3745a = "android.support.AppLaunchChecker";

    /* renamed from: b  reason: collision with root package name */
    private static final String f3746b = "startedFromLauncher";

    public static boolean hasStartedFromLauncher(@NonNull Context context) {
        return context.getSharedPreferences(f3745a, 0).getBoolean(f3746b, false);
    }

    public static void onActivityCreate(@NonNull Activity activity) {
        Intent intent;
        SharedPreferences sharedPreferences = activity.getSharedPreferences(f3745a, 0);
        if (sharedPreferences.getBoolean(f3746b, false) || (intent = activity.getIntent()) == null || !"android.intent.action.MAIN".equals(intent.getAction())) {
            return;
        }
        if (intent.hasCategory("android.intent.category.LAUNCHER") || intent.hasCategory(IntentCompat.CATEGORY_LEANBACK_LAUNCHER)) {
            sharedPreferences.edit().putBoolean(f3746b, true).apply();
        }
    }
}
