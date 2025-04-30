package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.StatisticTable;
/* compiled from: StatisticTableManager.java */
/* loaded from: classes3.dex */
public class j0 extends g1.b<StatisticTable> {

    /* renamed from: b  reason: collision with root package name */
    private static j0 f72796b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<StatisticTable, Integer> f72797c;

    private j0() {
        super(f72797c);
    }

    public static j0 n() {
        if (f72796b == null) {
            f72797c = g1.e.d(null).c().Y();
            f72796b = new j0();
        }
        return f72796b;
    }
}
