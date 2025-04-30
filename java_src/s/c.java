package s;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;
/* loaded from: classes2.dex */
public final class c {
    public static String a(Context context, String str, String str2, String str3) {
        return context.getSharedPreferences(str, 0).getString(str2, str3);
    }

    public static void b(Context context, String str, Map<String, String> map) {
        SharedPreferences.Editor edit;
        if (map == null || (edit = context.getSharedPreferences(str, 0).edit()) == null) {
            return;
        }
        edit.clear();
        for (String str2 : map.keySet()) {
            edit.putString(str2, map.get(str2));
        }
        edit.commit();
    }

    private static void c(Context context, String str, String str2, String str3) {
        SharedPreferences.Editor edit;
        if (str3 == null || (edit = context.getSharedPreferences(str, 0).edit()) == null) {
            return;
        }
        edit.clear();
        edit.putString(str2, str3);
        edit.commit();
    }
}
