package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.join.mgps.db.tables.VideoWatchLogTable;
/* compiled from: VideoWatchLogManager.java */
/* loaded from: classes3.dex */
public class n0 extends g1.b<VideoWatchLogTable> {

    /* renamed from: b  reason: collision with root package name */
    private static n0 f72810b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<VideoWatchLogTable, Integer> f72811c;

    private n0() {
        super(f72811c);
    }

    public static n0 n() {
        if (f72810b == null) {
            f72811c = g1.e.d(null).c().d0();
            f72810b = new n0();
        }
        return f72810b;
    }
}
