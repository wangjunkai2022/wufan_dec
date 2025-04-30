package androidx.core.graphics;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class PathUtils {
    private PathUtils() {
    }

    @NonNull
    @RequiresApi(26)
    public static Collection<PathSegment> flatten(@NonNull Path path) {
        return flatten(path, 0.5f);
    }

    @NonNull
    @RequiresApi(26)
    public static Collection<PathSegment> flatten(@NonNull Path path, @FloatRange(from = 0.0d) float f4) {
        float[] approximate = path.approximate(f4);
        int length = approximate.length / 3;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 1; i2 < length; i2++) {
            int i4 = i2 * 3;
            int i5 = (i2 - 1) * 3;
            float f5 = approximate[i4];
            float f6 = approximate[i4 + 1];
            float f7 = approximate[i4 + 2];
            float f8 = approximate[i5];
            float f9 = approximate[i5 + 1];
            float f10 = approximate[i5 + 2];
            if (f5 != f8 && (f6 != f9 || f7 != f10)) {
                arrayList.add(new PathSegment(new PointF(f9, f10), f8, new PointF(f6, f7), f5));
            }
        }
        return arrayList;
    }
}
