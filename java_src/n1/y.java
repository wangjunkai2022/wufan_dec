package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.HeadPortraitTable;
/* compiled from: HeadPortraitTableManager.java */
/* loaded from: classes3.dex */
public class y extends g1.b<HeadPortraitTable> {

    /* renamed from: b  reason: collision with root package name */
    private static y f72834b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<HeadPortraitTable, Integer> f72835c;

    private y() {
        super(f72835c);
    }

    public static y n() {
        if (f72834b == null) {
            f72835c = g1.e.d(null).c().F();
            f72834b = new y();
        }
        return f72834b;
    }
}
