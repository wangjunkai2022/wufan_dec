package g1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Course;
import java.util.HashMap;
import java.util.List;
/* compiled from: CourseManager.java */
/* loaded from: classes.dex */
public class d extends b<Course> {

    /* renamed from: b  reason: collision with root package name */
    private static d f65661b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<Course, Integer> f65662c;

    private d() {
        super(f65662c);
    }

    public static d o() {
        if (f65661b == null) {
            f65662c = e.d(null).c().r();
            f65661b = new d();
        }
        return f65661b;
    }

    public Course n(long j4) {
        HashMap hashMap = new HashMap(0);
        hashMap.put("courseId", Long.valueOf(j4));
        List<Course> h4 = h(hashMap);
        if (h4 == null || h4.size() <= 0) {
            return null;
        }
        return h4.get(0);
    }
}
