package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.join.mgps.db.tables.DownloadHistoryTable;
import java.util.List;
/* compiled from: DownloadHistoryTableManager.java */
/* loaded from: classes3.dex */
public class k extends g1.b<DownloadHistoryTable> {

    /* renamed from: b  reason: collision with root package name */
    private static k f72798b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<DownloadHistoryTable, Integer> f72799c;

    private k() {
        super(f72799c);
    }

    public static k n() {
        if (f72798b == null) {
            f72799c = g1.e.d(null).c().t();
            f72798b = new k();
        }
        return f72798b;
    }

    public List<DownloadHistoryTable> o() {
        QueryBuilder<DownloadHistoryTable, Integer> queryBuilder = f72799c.queryBuilder();
        try {
            queryBuilder.orderBy("create_time", false);
            return queryBuilder.query();
        } catch (Exception unused) {
            return null;
        }
    }

    public DownloadHistoryTable p(String str) {
        List<DownloadHistoryTable> queryForEq;
        if (str == null || (queryForEq = f72799c.queryForEq("crc_link_type_val", str)) == null || queryForEq.size() <= 0) {
            return null;
        }
        return queryForEq.get(0);
    }
}
