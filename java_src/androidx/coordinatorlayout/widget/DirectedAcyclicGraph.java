package androidx.coordinatorlayout.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class DirectedAcyclicGraph<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Pools.Pool<ArrayList<T>> f3710a = new Pools.SimplePool(10);

    /* renamed from: b  reason: collision with root package name */
    private final SimpleArrayMap<T, ArrayList<T>> f3711b = new SimpleArrayMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<T> f3712c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<T> f3713d = new HashSet<>();

    private void a(T t3, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t3)) {
            return;
        }
        if (!hashSet.contains(t3)) {
            hashSet.add(t3);
            ArrayList<T> arrayList2 = this.f3711b.get(t3);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    a(arrayList2.get(i2), arrayList, hashSet);
                }
            }
            hashSet.remove(t3);
            arrayList.add(t3);
            return;
        }
        throw new RuntimeException("This graph contains cyclic dependencies");
    }

    @NonNull
    private ArrayList<T> b() {
        ArrayList<T> acquire = this.f3710a.acquire();
        return acquire == null ? new ArrayList<>() : acquire;
    }

    private void c(@NonNull ArrayList<T> arrayList) {
        arrayList.clear();
        this.f3710a.release(arrayList);
    }

    public void addEdge(@NonNull T t3, @NonNull T t4) {
        if (this.f3711b.containsKey(t3) && this.f3711b.containsKey(t4)) {
            ArrayList<T> arrayList = this.f3711b.get(t3);
            if (arrayList == null) {
                arrayList = b();
                this.f3711b.put(t3, arrayList);
            }
            arrayList.add(t4);
            return;
        }
        throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
    }

    public void addNode(@NonNull T t3) {
        if (this.f3711b.containsKey(t3)) {
            return;
        }
        this.f3711b.put(t3, null);
    }

    public void clear() {
        int size = this.f3711b.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList<T> valueAt = this.f3711b.valueAt(i2);
            if (valueAt != null) {
                c(valueAt);
            }
        }
        this.f3711b.clear();
    }

    public boolean contains(@NonNull T t3) {
        return this.f3711b.containsKey(t3);
    }

    int d() {
        return this.f3711b.size();
    }

    @Nullable
    public List getIncomingEdges(@NonNull T t3) {
        return this.f3711b.get(t3);
    }

    @Nullable
    public List<T> getOutgoingEdges(@NonNull T t3) {
        int size = this.f3711b.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList<T> valueAt = this.f3711b.valueAt(i2);
            if (valueAt != null && valueAt.contains(t3)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f3711b.keyAt(i2));
            }
        }
        return arrayList;
    }

    @NonNull
    public ArrayList<T> getSortedList() {
        this.f3712c.clear();
        this.f3713d.clear();
        int size = this.f3711b.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(this.f3711b.keyAt(i2), this.f3712c, this.f3713d);
        }
        return this.f3712c;
    }

    public boolean hasOutgoingEdges(@NonNull T t3) {
        int size = this.f3711b.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList<T> valueAt = this.f3711b.valueAt(i2);
            if (valueAt != null && valueAt.contains(t3)) {
                return true;
            }
        }
        return false;
    }
}
