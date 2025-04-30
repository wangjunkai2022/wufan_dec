package g1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.LocalCourse;
import java.util.HashMap;
import java.util.List;
/* compiled from: LocalCourseManager.java */
/* loaded from: classes.dex */
public class h extends b<LocalCourse> {

    /* renamed from: b  reason: collision with root package name */
    private static h f65670b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<LocalCourse, Integer> f65671c;

    private h() {
        super(f65671c);
    }

    public static h o() {
        if (f65670b == null) {
            f65671c = e.d(null).c().L();
            f65670b = new h();
        }
        return f65670b;
    }

    public List<LocalCourse> n(String str) {
        HashMap hashMap = new HashMap(0);
        hashMap.put("courseId", str);
        return h(hashMap);
    }
}
