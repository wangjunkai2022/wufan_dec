package androidx.recyclerview.widget;

import androidx.core.util.Pools;
import androidx.recyclerview.widget.OpReorderer;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class AdapterHelper implements OpReorderer.Callback {

    /* renamed from: i  reason: collision with root package name */
    static final int f6692i = 0;

    /* renamed from: j  reason: collision with root package name */
    static final int f6693j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static final boolean f6694k = false;

    /* renamed from: l  reason: collision with root package name */
    private static final String f6695l = "AHT";

    /* renamed from: a  reason: collision with root package name */
    private Pools.Pool<UpdateOp> f6696a;

    /* renamed from: b  reason: collision with root package name */
    final ArrayList<UpdateOp> f6697b;

    /* renamed from: c  reason: collision with root package name */
    final ArrayList<UpdateOp> f6698c;

    /* renamed from: d  reason: collision with root package name */
    final Callback f6699d;

    /* renamed from: e  reason: collision with root package name */
    Runnable f6700e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f6701f;

    /* renamed from: g  reason: collision with root package name */
    final OpReorderer f6702g;

    /* renamed from: h  reason: collision with root package name */
    private int f6703h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface Callback {
        RecyclerView.ViewHolder findViewHolder(int i2);

        void markViewHoldersUpdated(int i2, int i4, Object obj);

        void offsetPositionsForAdd(int i2, int i4);

        void offsetPositionsForMove(int i2, int i4);

        void offsetPositionsForRemovingInvisible(int i2, int i4);

        void offsetPositionsForRemovingLaidOutOrNewView(int i2, int i4);

        void onDispatchFirstPass(UpdateOp updateOp);

        void onDispatchSecondPass(UpdateOp updateOp);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class UpdateOp {

        /* renamed from: e  reason: collision with root package name */
        static final int f6704e = 1;

        /* renamed from: f  reason: collision with root package name */
        static final int f6705f = 2;

        /* renamed from: g  reason: collision with root package name */
        static final int f6706g = 4;

        /* renamed from: h  reason: collision with root package name */
        static final int f6707h = 8;

        /* renamed from: i  reason: collision with root package name */
        static final int f6708i = 30;

        /* renamed from: a  reason: collision with root package name */
        int f6709a;

        /* renamed from: b  reason: collision with root package name */
        int f6710b;

        /* renamed from: c  reason: collision with root package name */
        Object f6711c;

        /* renamed from: d  reason: collision with root package name */
        int f6712d;

        UpdateOp(int i2, int i4, int i5, Object obj) {
            this.f6709a = i2;
            this.f6710b = i4;
            this.f6712d = i5;
            this.f6711c = obj;
        }

        String a() {
            int i2 = this.f6709a;
            return i2 != 1 ? i2 != 2 ? i2 != 4 ? i2 != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof UpdateOp) {
                UpdateOp updateOp = (UpdateOp) obj;
                int i2 = this.f6709a;
                if (i2 != updateOp.f6709a) {
                    return false;
                }
                if (i2 == 8 && Math.abs(this.f6712d - this.f6710b) == 1 && this.f6712d == updateOp.f6710b && this.f6710b == updateOp.f6712d) {
                    return true;
                }
                if (this.f6712d == updateOp.f6712d && this.f6710b == updateOp.f6710b) {
                    Object obj2 = this.f6711c;
                    if (obj2 != null) {
                        if (!obj2.equals(updateOp.f6711c)) {
                            return false;
                        }
                    } else if (updateOp.f6711c != null) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return false;
        }

        public int hashCode() {
            return (((this.f6709a * 31) + this.f6710b) * 31) + this.f6712d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f6710b + "c:" + this.f6712d + ",p:" + this.f6711c + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdapterHelper(Callback callback) {
        this(callback, false);
    }

    private void b(UpdateOp updateOp) {
        t(updateOp);
    }

    private void c(UpdateOp updateOp) {
        t(updateOp);
    }

    private void d(UpdateOp updateOp) {
        boolean z3;
        char c4;
        int i2 = updateOp.f6710b;
        int i4 = updateOp.f6712d + i2;
        char c5 = 65535;
        int i5 = i2;
        int i6 = 0;
        while (i5 < i4) {
            if (this.f6699d.findViewHolder(i5) != null || f(i5)) {
                if (c5 == 0) {
                    i(obtainUpdateOp(2, i2, i6, null));
                    z3 = true;
                } else {
                    z3 = false;
                }
                c4 = 1;
            } else {
                if (c5 == 1) {
                    t(obtainUpdateOp(2, i2, i6, null));
                    z3 = true;
                } else {
                    z3 = false;
                }
                c4 = 0;
            }
            if (z3) {
                i5 -= i6;
                i4 -= i6;
                i6 = 1;
            } else {
                i6++;
            }
            i5++;
            c5 = c4;
        }
        if (i6 != updateOp.f6712d) {
            recycleUpdateOp(updateOp);
            updateOp = obtainUpdateOp(2, i2, i6, null);
        }
        if (c5 == 0) {
            i(updateOp);
        } else {
            t(updateOp);
        }
    }

    private void e(UpdateOp updateOp) {
        int i2 = updateOp.f6710b;
        int i4 = updateOp.f6712d + i2;
        int i5 = i2;
        char c4 = 65535;
        int i6 = 0;
        while (i2 < i4) {
            if (this.f6699d.findViewHolder(i2) != null || f(i2)) {
                if (c4 == 0) {
                    i(obtainUpdateOp(4, i5, i6, updateOp.f6711c));
                    i5 = i2;
                    i6 = 0;
                }
                c4 = 1;
            } else {
                if (c4 == 1) {
                    t(obtainUpdateOp(4, i5, i6, updateOp.f6711c));
                    i5 = i2;
                    i6 = 0;
                }
                c4 = 0;
            }
            i6++;
            i2++;
        }
        if (i6 != updateOp.f6712d) {
            Object obj = updateOp.f6711c;
            recycleUpdateOp(updateOp);
            updateOp = obtainUpdateOp(4, i5, i6, obj);
        }
        if (c4 == 0) {
            i(updateOp);
        } else {
            t(updateOp);
        }
    }

    private boolean f(int i2) {
        int size = this.f6698c.size();
        for (int i4 = 0; i4 < size; i4++) {
            UpdateOp updateOp = this.f6698c.get(i4);
            int i5 = updateOp.f6709a;
            if (i5 == 8) {
                if (l(updateOp.f6712d, i4 + 1) == i2) {
                    return true;
                }
            } else if (i5 == 1) {
                int i6 = updateOp.f6710b;
                int i7 = updateOp.f6712d + i6;
                while (i6 < i7) {
                    if (l(i6, i4 + 1) == i2) {
                        return true;
                    }
                    i6++;
                }
                continue;
            } else {
                continue;
            }
        }
        return false;
    }

    private void i(UpdateOp updateOp) {
        int i2;
        int i4 = updateOp.f6709a;
        if (i4 != 1 && i4 != 8) {
            int x3 = x(updateOp.f6710b, i4);
            int i5 = updateOp.f6710b;
            int i6 = updateOp.f6709a;
            if (i6 == 2) {
                i2 = 0;
            } else if (i6 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + updateOp);
            } else {
                i2 = 1;
            }
            int i7 = 1;
            for (int i8 = 1; i8 < updateOp.f6712d; i8++) {
                int x4 = x(updateOp.f6710b + (i2 * i8), updateOp.f6709a);
                int i9 = updateOp.f6709a;
                if (i9 == 2 ? x4 == x3 : i9 == 4 && x4 == x3 + 1) {
                    i7++;
                } else {
                    UpdateOp obtainUpdateOp = obtainUpdateOp(i9, x3, i7, updateOp.f6711c);
                    j(obtainUpdateOp, i5);
                    recycleUpdateOp(obtainUpdateOp);
                    if (updateOp.f6709a == 4) {
                        i5 += i7;
                    }
                    x3 = x4;
                    i7 = 1;
                }
            }
            Object obj = updateOp.f6711c;
            recycleUpdateOp(updateOp);
            if (i7 > 0) {
                UpdateOp obtainUpdateOp2 = obtainUpdateOp(updateOp.f6709a, x3, i7, obj);
                j(obtainUpdateOp2, i5);
                recycleUpdateOp(obtainUpdateOp2);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }

    private void t(UpdateOp updateOp) {
        this.f6698c.add(updateOp);
        int i2 = updateOp.f6709a;
        if (i2 == 1) {
            this.f6699d.offsetPositionsForAdd(updateOp.f6710b, updateOp.f6712d);
        } else if (i2 == 2) {
            this.f6699d.offsetPositionsForRemovingLaidOutOrNewView(updateOp.f6710b, updateOp.f6712d);
        } else if (i2 == 4) {
            this.f6699d.markViewHoldersUpdated(updateOp.f6710b, updateOp.f6712d, updateOp.f6711c);
        } else if (i2 == 8) {
            this.f6699d.offsetPositionsForMove(updateOp.f6710b, updateOp.f6712d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + updateOp);
        }
    }

    private int x(int i2, int i4) {
        int i5;
        int i6;
        for (int size = this.f6698c.size() - 1; size >= 0; size--) {
            UpdateOp updateOp = this.f6698c.get(size);
            int i7 = updateOp.f6709a;
            if (i7 == 8) {
                int i8 = updateOp.f6710b;
                int i9 = updateOp.f6712d;
                if (i8 < i9) {
                    i6 = i8;
                    i5 = i9;
                } else {
                    i5 = i8;
                    i6 = i9;
                }
                if (i2 < i6 || i2 > i5) {
                    if (i2 < i8) {
                        if (i4 == 1) {
                            updateOp.f6710b = i8 + 1;
                            updateOp.f6712d = i9 + 1;
                        } else if (i4 == 2) {
                            updateOp.f6710b = i8 - 1;
                            updateOp.f6712d = i9 - 1;
                        }
                    }
                } else if (i6 == i8) {
                    if (i4 == 1) {
                        updateOp.f6712d = i9 + 1;
                    } else if (i4 == 2) {
                        updateOp.f6712d = i9 - 1;
                    }
                    i2++;
                } else {
                    if (i4 == 1) {
                        updateOp.f6710b = i8 + 1;
                    } else if (i4 == 2) {
                        updateOp.f6710b = i8 - 1;
                    }
                    i2--;
                }
            } else {
                int i10 = updateOp.f6710b;
                if (i10 <= i2) {
                    if (i7 == 1) {
                        i2 -= updateOp.f6712d;
                    } else if (i7 == 2) {
                        i2 += updateOp.f6712d;
                    }
                } else if (i4 == 1) {
                    updateOp.f6710b = i10 + 1;
                } else if (i4 == 2) {
                    updateOp.f6710b = i10 - 1;
                }
            }
        }
        for (int size2 = this.f6698c.size() - 1; size2 >= 0; size2--) {
            UpdateOp updateOp2 = this.f6698c.get(size2);
            if (updateOp2.f6709a == 8) {
                int i11 = updateOp2.f6712d;
                if (i11 == updateOp2.f6710b || i11 < 0) {
                    this.f6698c.remove(size2);
                    recycleUpdateOp(updateOp2);
                }
            } else if (updateOp2.f6712d <= 0) {
                this.f6698c.remove(size2);
                recycleUpdateOp(updateOp2);
            }
        }
        return i2;
    }

    AdapterHelper a(UpdateOp... updateOpArr) {
        Collections.addAll(this.f6697b, updateOpArr);
        return this;
    }

    public int applyPendingUpdatesToPosition(int i2) {
        int size = this.f6697b.size();
        for (int i4 = 0; i4 < size; i4++) {
            UpdateOp updateOp = this.f6697b.get(i4);
            int i5 = updateOp.f6709a;
            if (i5 != 1) {
                if (i5 == 2) {
                    int i6 = updateOp.f6710b;
                    if (i6 <= i2) {
                        int i7 = updateOp.f6712d;
                        if (i6 + i7 > i2) {
                            return -1;
                        }
                        i2 -= i7;
                    } else {
                        continue;
                    }
                } else if (i5 == 8) {
                    int i8 = updateOp.f6710b;
                    if (i8 == i2) {
                        i2 = updateOp.f6712d;
                    } else {
                        if (i8 < i2) {
                            i2--;
                        }
                        if (updateOp.f6712d <= i2) {
                            i2++;
                        }
                    }
                }
            } else if (updateOp.f6710b <= i2) {
                i2 += updateOp.f6712d;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        int size = this.f6698c.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f6699d.onDispatchSecondPass(this.f6698c.get(i2));
        }
        v(this.f6698c);
        this.f6703h = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        g();
        int size = this.f6697b.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = this.f6697b.get(i2);
            int i4 = updateOp.f6709a;
            if (i4 == 1) {
                this.f6699d.onDispatchSecondPass(updateOp);
                this.f6699d.offsetPositionsForAdd(updateOp.f6710b, updateOp.f6712d);
            } else if (i4 == 2) {
                this.f6699d.onDispatchSecondPass(updateOp);
                this.f6699d.offsetPositionsForRemovingInvisible(updateOp.f6710b, updateOp.f6712d);
            } else if (i4 == 4) {
                this.f6699d.onDispatchSecondPass(updateOp);
                this.f6699d.markViewHoldersUpdated(updateOp.f6710b, updateOp.f6712d, updateOp.f6711c);
            } else if (i4 == 8) {
                this.f6699d.onDispatchSecondPass(updateOp);
                this.f6699d.offsetPositionsForMove(updateOp.f6710b, updateOp.f6712d);
            }
            Runnable runnable = this.f6700e;
            if (runnable != null) {
                runnable.run();
            }
        }
        v(this.f6697b);
        this.f6703h = 0;
    }

    void j(UpdateOp updateOp, int i2) {
        this.f6699d.onDispatchFirstPass(updateOp);
        int i4 = updateOp.f6709a;
        if (i4 == 2) {
            this.f6699d.offsetPositionsForRemovingInvisible(i2, updateOp.f6712d);
        } else if (i4 == 4) {
            this.f6699d.markViewHoldersUpdated(i2, updateOp.f6712d, updateOp.f6711c);
        } else {
            throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k(int i2) {
        return l(i2, 0);
    }

    int l(int i2, int i4) {
        int size = this.f6698c.size();
        while (i4 < size) {
            UpdateOp updateOp = this.f6698c.get(i4);
            int i5 = updateOp.f6709a;
            if (i5 == 8) {
                int i6 = updateOp.f6710b;
                if (i6 == i2) {
                    i2 = updateOp.f6712d;
                } else {
                    if (i6 < i2) {
                        i2--;
                    }
                    if (updateOp.f6712d <= i2) {
                        i2++;
                    }
                }
            } else {
                int i7 = updateOp.f6710b;
                if (i7 > i2) {
                    continue;
                } else if (i5 == 2) {
                    int i8 = updateOp.f6712d;
                    if (i2 < i7 + i8) {
                        return -1;
                    }
                    i2 -= i8;
                } else if (i5 == 1) {
                    i2 += updateOp.f6712d;
                }
            }
            i4++;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m(int i2) {
        return (i2 & this.f6703h) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean n() {
        return this.f6697b.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean o() {
        return (this.f6698c.isEmpty() || this.f6697b.isEmpty()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public UpdateOp obtainUpdateOp(int i2, int i4, int i5, Object obj) {
        UpdateOp acquire = this.f6696a.acquire();
        if (acquire == null) {
            return new UpdateOp(i2, i4, i5, obj);
        }
        acquire.f6709a = i2;
        acquire.f6710b = i4;
        acquire.f6712d = i5;
        acquire.f6711c = obj;
        return acquire;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean p(int i2, int i4, Object obj) {
        if (i4 < 1) {
            return false;
        }
        this.f6697b.add(obtainUpdateOp(4, i2, i4, obj));
        this.f6703h |= 4;
        return this.f6697b.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean q(int i2, int i4) {
        if (i4 < 1) {
            return false;
        }
        this.f6697b.add(obtainUpdateOp(1, i2, i4, null));
        this.f6703h |= 1;
        return this.f6697b.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean r(int i2, int i4, int i5) {
        if (i2 == i4) {
            return false;
        }
        if (i5 == 1) {
            this.f6697b.add(obtainUpdateOp(8, i2, i4, null));
            this.f6703h |= 8;
            return this.f6697b.size() == 1;
        }
        throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
    }

    @Override // androidx.recyclerview.widget.OpReorderer.Callback
    public void recycleUpdateOp(UpdateOp updateOp) {
        if (this.f6701f) {
            return;
        }
        updateOp.f6711c = null;
        this.f6696a.release(updateOp);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean s(int i2, int i4) {
        if (i4 < 1) {
            return false;
        }
        this.f6697b.add(obtainUpdateOp(2, i2, i4, null));
        this.f6703h |= 2;
        return this.f6697b.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u() {
        this.f6702g.b(this.f6697b);
        int size = this.f6697b.size();
        for (int i2 = 0; i2 < size; i2++) {
            UpdateOp updateOp = this.f6697b.get(i2);
            int i4 = updateOp.f6709a;
            if (i4 == 1) {
                b(updateOp);
            } else if (i4 == 2) {
                d(updateOp);
            } else if (i4 == 4) {
                e(updateOp);
            } else if (i4 == 8) {
                c(updateOp);
            }
            Runnable runnable = this.f6700e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f6697b.clear();
    }

    void v(List<UpdateOp> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            recycleUpdateOp(list.get(i2));
        }
        list.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w() {
        v(this.f6697b);
        v(this.f6698c);
        this.f6703h = 0;
    }

    AdapterHelper(Callback callback, boolean z3) {
        this.f6696a = new Pools.SimplePool(30);
        this.f6697b = new ArrayList<>();
        this.f6698c = new ArrayList<>();
        this.f6703h = 0;
        this.f6699d = callback;
        this.f6701f = z3;
        this.f6702g = new OpReorderer(this);
    }
}
