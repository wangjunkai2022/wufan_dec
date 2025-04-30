package g1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Chapter;
/* compiled from: ChapterManager.java */
/* loaded from: classes.dex */
public class c extends b<Chapter> {

    /* renamed from: b  reason: collision with root package name */
    private static c f65659b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<Chapter, Integer> f65660c;

    private c() {
        super(f65660c);
    }

    public static c n() {
        if (f65659b == null) {
            f65660c = e.d(null).c().n();
            f65659b = new c();
        }
        return f65659b;
    }
}
