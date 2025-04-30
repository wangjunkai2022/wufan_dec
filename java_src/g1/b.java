package g1;

import com.j256.ormlite.dao.RuntimeExceptionDao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: BaseManager.java */
/* loaded from: classes.dex */
public class b<E> {

    /* renamed from: a  reason: collision with root package name */
    private RuntimeExceptionDao f65658a;

    public b(RuntimeExceptionDao runtimeExceptionDao) {
        this.f65658a = runtimeExceptionDao;
    }

    public int a() {
        try {
            return this.f65658a.deleteBuilder().delete();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    public int b(Object obj) {
        return this.f65658a.deleteById(obj);
    }

    public int c(Collection collection) {
        return this.f65658a.deleteIds(collection);
    }

    public List<E> d() {
        return this.f65658a.queryForAll();
    }

    public int delete(E e4) {
        return this.f65658a.delete((RuntimeExceptionDao) e4);
    }

    public List<E> e(Map<String, Object> map, String str, boolean z3, String str2, boolean z4) {
        QueryBuilder queryBuilder = this.f65658a.queryBuilder();
        try {
            queryBuilder.orderBy(str, z3);
            queryBuilder.orderBy(str2, z4);
            Where<T, ID> where = queryBuilder.where();
            Set<Map.Entry<String, Object>> entrySet = map.entrySet();
            int i2 = 0;
            for (Map.Entry<String, Object> entry : entrySet) {
                i2++;
                if (i2 == entrySet.size()) {
                    where.eq(entry.getKey(), entry.getValue());
                } else {
                    where.eq(entry.getKey(), entry.getValue()).and();
                }
            }
            queryBuilder.setWhere(where);
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<E> f(Where where, String str, boolean z3) {
        QueryBuilder queryBuilder = this.f65658a.queryBuilder();
        try {
            queryBuilder.setWhere(where);
            queryBuilder.orderBy(str, z3);
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public E g(Object obj) {
        return (E) this.f65658a.queryForId(obj);
    }

    public List<E> h(Map<String, Object> map) {
        return this.f65658a.queryForFieldValues(map);
    }

    public List<E> i(long j4, long j5, String str, boolean z3) {
        QueryBuilder queryBuilder = this.f65658a.queryBuilder();
        try {
            queryBuilder.orderBy(str, z3);
            queryBuilder.offset(Long.valueOf(j4));
            queryBuilder.limit(Long.valueOf(j5));
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public List<E> j(Where where, long j4, long j5, String str, boolean z3) {
        QueryBuilder queryBuilder = this.f65658a.queryBuilder();
        try {
            queryBuilder.setWhere(where);
            queryBuilder.orderBy(str, z3);
            queryBuilder.offset(Long.valueOf(j4));
            queryBuilder.limit(Long.valueOf(j5));
            return queryBuilder.query();
        } catch (SQLException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public int k(E e4) {
        return this.f65658a.create(e4);
    }

    public E l(E e4) {
        return (E) this.f65658a.createIfNotExists(e4);
    }

    public E m(E e4) {
        return (E) this.f65658a.createOrUpdate(e4);
    }

    public int update(E e4) {
        return this.f65658a.update((RuntimeExceptionDao) e4);
    }

    public int delete(Collection collection) {
        return this.f65658a.delete(collection);
    }
}
