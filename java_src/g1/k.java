package g1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Reference;
/* compiled from: ReferenceManager.java */
/* loaded from: classes.dex */
public class k extends b<Reference> {

    /* renamed from: b  reason: collision with root package name */
    private static k f65676b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<Reference, Integer> f65677c;

    private k() {
        super(f65677c);
    }

    public static k n() {
        if (f65676b == null) {
            f65677c = e.d(null).c().T();
            f65676b = new k();
        }
        return f65676b;
    }
}
