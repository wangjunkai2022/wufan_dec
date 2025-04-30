package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.mgps.db.tables.GamePaiWeiUpTaskTable;
import java.sql.SQLException;
import java.util.List;
/* compiled from: GamePaiWeiTableManager.java */
/* loaded from: classes3.dex */
public class v extends g1.b<GamePaiWeiUpTaskTable> {

    /* renamed from: b  reason: collision with root package name */
    private static v f72828b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<GamePaiWeiUpTaskTable, Integer> f72829c;

    private v() {
        super(f72829c);
    }

    public static v n() {
        if (f72828b == null) {
            f72829c = g1.e.d(null).c().D();
            f72828b = new v();
        }
        return f72828b;
    }

    public List<GamePaiWeiUpTaskTable> o(String str) {
        if (str == null) {
            return null;
        }
        return f72829c.queryForEq("userId", str);
    }

    public List<GamePaiWeiUpTaskTable> p(String str) {
        if (str == null) {
            return null;
        }
        QueryBuilder<GamePaiWeiUpTaskTable, Integer> queryBuilder = f72829c.queryBuilder();
        try {
            Where<GamePaiWeiUpTaskTable, Integer> where = queryBuilder.where();
            where.eq("userId", str).and();
            where.eq("isUped", Boolean.FALSE);
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }
}
