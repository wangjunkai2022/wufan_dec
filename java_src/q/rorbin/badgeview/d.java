package q.rorbin.badgeview;

import android.content.Context;
/* compiled from: DisplayUtil.java */
/* loaded from: classes5.dex */
public class d {
    public static int a(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int b(Context context, float f4) {
        return (int) ((f4 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
