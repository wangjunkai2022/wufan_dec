package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.CategoryRecordTable;
/* compiled from: CategoryRecordTableManager.java */
/* loaded from: classes3.dex */
public class f extends g1.b<CategoryRecordTable> {

    /* renamed from: b  reason: collision with root package name */
    private static f f72778b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<CategoryRecordTable, Integer> f72779c;

    private f() {
        super(f72779c);
    }

    public static f n() {
        if (f72778b == null) {
            f72779c = g1.e.d(null).c().m();
            f72778b = new f();
        }
        return f72778b;
    }
}
