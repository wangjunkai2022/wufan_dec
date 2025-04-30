package g1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Live;
/* compiled from: LiveManager.java */
/* loaded from: classes.dex */
public class g extends b<Live> {

    /* renamed from: b  reason: collision with root package name */
    private static g f65668b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<Live, Integer> f65669c;

    private g() {
        super(f65669c);
    }

    public static g n() {
        if (f65668b == null) {
            f65669c = e.d(null).c().K();
            f65668b = new g();
        }
        return f65668b;
    }
}
