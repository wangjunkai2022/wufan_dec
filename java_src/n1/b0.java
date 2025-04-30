package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.join.mgps.db.tables.LatestGameFileTable;
import java.sql.SQLException;
import java.util.List;
/* compiled from: LatestGameTableManager.java */
/* loaded from: classes3.dex */
public class b0 extends g1.b<LatestGameFileTable> {

    /* renamed from: b  reason: collision with root package name */
    private static b0 f72764b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<LatestGameFileTable, Integer> f72765c;

    private b0() {
        super(f72765c);
    }

    public static b0 n() {
        if (f72764b == null) {
            f72765c = g1.e.d(null).c().J();
            f72764b = new b0();
        }
        return f72764b;
    }

    public List<LatestGameFileTable> o() {
        QueryBuilder<LatestGameFileTable, Integer> queryBuilder = f72765c.queryBuilder();
        try {
            queryBuilder.orderBy("createTime", false);
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
