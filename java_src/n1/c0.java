package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.ModleBeanTable;
/* compiled from: ModleBeanTableManager.java */
/* loaded from: classes3.dex */
public class c0 extends g1.b<ModleBeanTable> {

    /* renamed from: b  reason: collision with root package name */
    private static c0 f72768b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<ModleBeanTable, Integer> f72769c;

    private c0() {
        super(f72769c);
    }

    public static c0 n() {
        if (f72768b == null) {
            f72769c = g1.e.d(null).c().M();
            f72768b = new c0();
        }
        return f72768b;
    }
}
