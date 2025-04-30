package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.ForumSearchRecordTable;
/* compiled from: ForumSearchRecordTableManager.java */
/* loaded from: classes3.dex */
public class s extends g1.b<ForumSearchRecordTable> {

    /* renamed from: b  reason: collision with root package name */
    private static s f72822b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<ForumSearchRecordTable, Integer> f72823c;

    private s() {
        super(f72823c);
    }

    public static s n() {
        if (f72822b == null) {
            f72823c = g1.e.d(null).c().A();
            f72822b = new s();
        }
        return f72822b;
    }
}
