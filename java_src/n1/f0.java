package n1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.Where;
import com.join.mgps.db.tables.AppBeanMainTable;
import com.join.mgps.db.tables.AppBeanTable;
import com.join.mgps.db.tables.DownloadUrlTable;
import com.join.mgps.db.tables.ModleBeanTable;
import com.join.mgps.db.tables.RecomDatabeanTable;
import com.join.mgps.db.tables.TipBeanTable;
import java.util.HashMap;
import java.util.List;
/* compiled from: RecomDatabeanTableManager.java */
/* loaded from: classes3.dex */
public class f0 extends g1.b<RecomDatabeanTable> {

    /* renamed from: b  reason: collision with root package name */
    private static f0 f72780b;

    /* renamed from: c  reason: collision with root package name */
    private static RuntimeExceptionDao<RecomDatabeanTable, Integer> f72781c;

    private f0() {
        super(f72781c);
    }

    private int o(int i2) {
        DeleteBuilder<RecomDatabeanTable, Integer> deleteBuilder = f72781c.deleteBuilder();
        Where<RecomDatabeanTable, Integer> where = deleteBuilder.where();
        try {
            where.eq("dataFrom", Integer.valueOf(i2));
            deleteBuilder.setWhere(where);
            return f72781c.delete(deleteBuilder.prepare());
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    public static f0 p() {
        if (f72780b == null) {
            f72781c = g1.e.d(null).c().S();
            f72780b = new f0();
        }
        return f72780b;
    }

    public void n(int i2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("dataFrom", Integer.valueOf(i2));
            List<RecomDatabeanTable> h4 = f72780b.h(hashMap);
            o(i2);
            for (int i4 = 0; i4 < h4.size(); i4++) {
                RecomDatabeanTable recomDatabeanTable = h4.get(i4);
                ModleBeanTable main = recomDatabeanTable.getMain();
                if (main != null) {
                    c0.n().delete((c0) main);
                }
                for (AppBeanMainTable appBeanMainTable : recomDatabeanTable.getSub().getWrappedIterable()) {
                    a.n().delete((a) appBeanMainTable);
                    AppBeanTable game_info = appBeanMainTable.getGame_info();
                    if (game_info != null) {
                        b.n().delete((b) game_info);
                        if (game_info.getTag_info() != null) {
                            for (TipBeanTable tipBeanTable : game_info.getTag_info().getWrappedIterable()) {
                                k0.n().delete((k0) tipBeanTable);
                            }
                        }
                        if (game_info.getTp_down_url() != null) {
                            for (DownloadUrlTable downloadUrlTable : game_info.getTp_down_url().getWrappedIterable()) {
                                l.n().delete((l) downloadUrlTable);
                            }
                        }
                    }
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
