package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.SearchRecordTable;
/* compiled from: SearchRecordTableManager.java */
/* loaded from: classes3.dex */
public class h0 extends g1.b<SearchRecordTable> {

    /* renamed from: b  reason: collision with root package name */
    private static h0 f72788b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<SearchRecordTable, Integer> f72789c;

    private h0() {
        super(f72789c);
    }

    public static h0 n() {
        if (f72788b == null) {
            f72789c = g1.e.d(null).c().W();
            f72788b = new h0();
        }
        return f72788b;
    }
}
