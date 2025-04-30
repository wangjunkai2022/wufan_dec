package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.HandShankTable;
import java.sql.SQLException;
import java.util.List;
/* compiled from: HandShankTableManager.java */
/* loaded from: classes3.dex */
public class x extends g1.b<HandShankTable> {

    /* renamed from: b  reason: collision with root package name */
    private static x f72832b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<HandShankTable, Integer> f72833c;

    private x() {
        super(f72833c);
    }

    public static x p() {
        if (f72832b == null) {
            f72833c = g1.e.d(null).c().E();
            f72832b = new x();
        }
        return f72832b;
    }

    public void n(HandShankTable handShankTable) {
        f72833c.createOrUpdate(handShankTable);
    }

    public List<HandShankTable> o() {
        List<HandShankTable> list = null;
        try {
            list = f72833c.queryBuilder().orderBy("time", false).query();
            for (int i2 = 0; i2 < list.size(); i2++) {
                HandShankTable handShankTable = list.get(i2);
                if (com.join.mgps.joystick.map.a.b().f(handShankTable.getName())) {
                    f72833c.delete((RuntimeExceptionDao<HandShankTable, Integer>) handShankTable);
                    list.remove(i2);
                }
            }
        } catch (SQLException e4) {
            e4.printStackTrace();
        }
        return list;
    }

    public boolean q(String str) {
        try {
            List<HandShankTable> query = f72833c.queryBuilder().orderBy("time", false).where().eq("address", str).query();
            if (query != null) {
                if (query.size() > 0) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
