package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.WarMatchAndLocalTable;
/* compiled from: WarMatchAndLocalTableManager.java */
/* loaded from: classes3.dex */
public class o0 extends g1.b<WarMatchAndLocalTable> {

    /* renamed from: b  reason: collision with root package name */
    private static o0 f72814b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<WarMatchAndLocalTable, Integer> f72815c;

    private o0() {
        super(f72815c);
    }

    public static o0 n() {
        if (f72814b == null) {
            f72815c = g1.e.d(null).c().e0();
            f72814b = new o0();
        }
        return f72814b;
    }
}
