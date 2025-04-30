package g1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.android.app.common.db.tables.Notice;
/* compiled from: NoticeManager.java */
/* loaded from: classes.dex */
public class i extends b<Notice> {

    /* renamed from: b  reason: collision with root package name */
    private static i f65672b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<Notice, Integer> f65673c;

    private i() {
        super(f65673c);
    }

    public static i n() {
        if (f65672b == null) {
            f65673c = e.d(null).c().N();
            f65672b = new i();
        }
        return f65672b;
    }
}
