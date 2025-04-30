package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.JoystickTable;
import java.util.List;
/* compiled from: JoystickManager.java */
/* loaded from: classes3.dex */
public class a0 extends g1.b<JoystickTable> {

    /* renamed from: b  reason: collision with root package name */
    private static a0 f72760b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<JoystickTable, Integer> f72761c;

    public a0() {
        super(f72761c);
    }

    public static a0 o() {
        if (f72760b == null) {
            f72761c = g1.e.d(null).c().I();
            f72760b = new a0();
        }
        return f72760b;
    }

    public JoystickTable n(String str) {
        try {
            List<JoystickTable> query = f72761c.queryBuilder().orderBy("time", false).where().eq("mac", str).query();
            if (query == null || query.size() <= 0) {
                return null;
            }
            return query.get(0);
        } catch (Exception unused) {
            return null;
        }
    }
}
