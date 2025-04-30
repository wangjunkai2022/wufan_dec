package g1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.ResourceShare;
/* compiled from: ResourceShareManager.java */
/* loaded from: classes.dex */
public class l extends b<ResourceShare> {

    /* renamed from: b  reason: collision with root package name */
    private static l f65678b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<ResourceShare, Integer> f65679c;

    private l() {
        super(f65679c);
    }

    public static l n() {
        if (f65678b == null) {
            f65679c = e.d(null).c().U();
            f65678b = new l();
        }
        return f65678b;
    }
}
