package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.FightMainTable;
/* compiled from: FightMainTableManager.java */
/* loaded from: classes3.dex */
public class r extends g1.b<FightMainTable> {

    /* renamed from: b  reason: collision with root package name */
    private static r f72820b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<FightMainTable, Integer> f72821c;

    private r() {
        super(f72821c);
    }

    public static r n() {
        if (f72820b == null) {
            f72821c = g1.e.d(null).c().z();
            f72820b = new r();
        }
        return f72820b;
    }
}
