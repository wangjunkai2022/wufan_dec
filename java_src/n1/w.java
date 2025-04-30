package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.H5GameAccountDataTable;
import java.util.List;
/* compiled from: H5GameTableManager.java */
/* loaded from: classes3.dex */
public class w extends g1.b<H5GameAccountDataTable> {

    /* renamed from: b  reason: collision with root package name */
    private static w f72830b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<H5GameAccountDataTable, Integer> f72831c;

    private w() {
        super(f72831c);
    }

    public static w o() {
        if (f72830b == null) {
            f72831c = g1.e.d(null).c().f0();
            f72830b = new w();
        }
        return f72830b;
    }

    public List<H5GameAccountDataTable> n(String str) {
        List<H5GameAccountDataTable> queryForEq;
        if (str == null || "".equals(str) || (queryForEq = f72831c.queryForEq("appkey", str)) == null || queryForEq.size() == 0) {
            return null;
        }
        return queryForEq;
    }
}
