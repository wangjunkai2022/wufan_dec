package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.JPushRecordTable;
/* compiled from: JPushRecordTableManager.java */
/* loaded from: classes3.dex */
public class z extends g1.b<JPushRecordTable> {

    /* renamed from: b  reason: collision with root package name */
    private static z f72836b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<JPushRecordTable, Integer> f72837c;

    private z() {
        super(f72837c);
    }

    public static z n() {
        if (f72836b == null) {
            f72837c = g1.e.d(null).c().H();
            f72836b = new z();
        }
        return f72836b;
    }
}
