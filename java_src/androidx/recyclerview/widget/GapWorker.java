package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import androidx.core.os.TraceCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class GapWorker implements Runnable {

    /* renamed from: e  reason: collision with root package name */
    static final ThreadLocal<GapWorker> f6903e = new ThreadLocal<>();

    /* renamed from: f  reason: collision with root package name */
    static Comparator<Task> f6904f = new Comparator<Task>() { // from class: androidx.recyclerview.widget.GapWorker.1
        @Override // java.util.Comparator
        public int compare(Task task, Task task2) {
            RecyclerView recyclerView = task.view;
            if ((recyclerView == null) != (task2.view == null)) {
                return recyclerView == null ? 1 : -1;
            }
            boolean z3 = task.immediate;
            if (z3 != task2.immediate) {
                return z3 ? -1 : 1;
            }
            int i2 = task2.viewVelocity - task.viewVelocity;
            if (i2 != 0) {
                return i2;
            }
            int i4 = task.distanceToItem - task2.distanceToItem;
            if (i4 != 0) {
                return i4;
            }
            return 0;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    long f6906b;

    /* renamed from: c  reason: collision with root package name */
    long f6907c;

    /* renamed from: a  reason: collision with root package name */
    ArrayList<RecyclerView> f6905a = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<Task> f6908d = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"VisibleForTests"})
    /* loaded from: classes2.dex */
    public static class LayoutPrefetchRegistryImpl implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {

        /* renamed from: a  reason: collision with root package name */
        int f6909a;

        /* renamed from: b  reason: collision with root package name */
        int f6910b;

        /* renamed from: c  reason: collision with root package name */
        int[] f6911c;

        /* renamed from: d  reason: collision with root package name */
        int f6912d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
            int[] iArr = this.f6911c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f6912d = 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager.LayoutPrefetchRegistry
        public void addPosition(int i2, int i4) {
            if (i2 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i4 >= 0) {
                int i5 = this.f6912d * 2;
                int[] iArr = this.f6911c;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.f6911c = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i5 >= iArr.length) {
                    int[] iArr3 = new int[i5 * 2];
                    this.f6911c = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.f6911c;
                iArr4[i5] = i2;
                iArr4[i5 + 1] = i4;
                this.f6912d++;
                return;
            }
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }

        void b(RecyclerView recyclerView, boolean z3) {
            this.f6912d = 0;
            int[] iArr = this.f6911c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.f7112m;
            if (recyclerView.f7111l == null || layoutManager == null || !layoutManager.isItemPrefetchEnabled()) {
                return;
            }
            if (z3) {
                if (!recyclerView.f7103d.n()) {
                    layoutManager.collectInitialPrefetchPositions(recyclerView.f7111l.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                layoutManager.collectAdjacentPrefetchPositions(this.f6909a, this.f6910b, recyclerView.H0, this);
            }
            int i2 = this.f6912d;
            if (i2 > layoutManager.mPrefetchMaxCountObserved) {
                layoutManager.mPrefetchMaxCountObserved = i2;
                layoutManager.mPrefetchMaxObservedInInitialPrefetch = z3;
                recyclerView.f7101b.E();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean c(int i2) {
            if (this.f6911c != null) {
                int i4 = this.f6912d * 2;
                for (int i5 = 0; i5 < i4; i5 += 2) {
                    if (this.f6911c[i5] == i2) {
                        return true;
                    }
                }
            }
            return false;
        }

        void d(int i2, int i4) {
            this.f6909a = i2;
            this.f6910b = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Task {
        public int distanceToItem;
        public boolean immediate;
        public int position;
        public RecyclerView view;
        public int viewVelocity;

        Task() {
        }

        public void clear() {
            this.immediate = false;
            this.viewVelocity = 0;
            this.distanceToItem = 0;
            this.view = null;
            this.position = 0;
        }
    }

    private void a() {
        Task task;
        int size = this.f6905a.size();
        int i2 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            RecyclerView recyclerView = this.f6905a.get(i4);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.G0.b(recyclerView, false);
                i2 += recyclerView.G0.f6912d;
            }
        }
        this.f6908d.ensureCapacity(i2);
        int i5 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            RecyclerView recyclerView2 = this.f6905a.get(i6);
            if (recyclerView2.getWindowVisibility() == 0) {
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView2.G0;
                int abs = Math.abs(layoutPrefetchRegistryImpl.f6909a) + Math.abs(layoutPrefetchRegistryImpl.f6910b);
                for (int i7 = 0; i7 < layoutPrefetchRegistryImpl.f6912d * 2; i7 += 2) {
                    if (i5 >= this.f6908d.size()) {
                        task = new Task();
                        this.f6908d.add(task);
                    } else {
                        task = this.f6908d.get(i5);
                    }
                    int[] iArr = layoutPrefetchRegistryImpl.f6911c;
                    int i8 = iArr[i7 + 1];
                    task.immediate = i8 <= abs;
                    task.viewVelocity = abs;
                    task.distanceToItem = i8;
                    task.view = recyclerView2;
                    task.position = iArr[i7];
                    i5++;
                }
            }
        }
        Collections.sort(this.f6908d, f6904f);
    }

    private void b(Task task, long j4) {
        RecyclerView.ViewHolder h4 = h(task.view, task.position, task.immediate ? Long.MAX_VALUE : j4);
        if (h4 == null || h4.mNestedRecyclerView == null || !h4.isBound() || h4.isInvalid()) {
            return;
        }
        g(h4.mNestedRecyclerView.get(), j4);
    }

    private void c(long j4) {
        for (int i2 = 0; i2 < this.f6908d.size(); i2++) {
            Task task = this.f6908d.get(i2);
            if (task.view == null) {
                return;
            }
            b(task, j4);
            task.clear();
        }
    }

    static boolean d(RecyclerView recyclerView, int i2) {
        int j4 = recyclerView.f7104e.j();
        for (int i4 = 0; i4 < j4; i4++) {
            RecyclerView.ViewHolder S = RecyclerView.S(recyclerView.f7104e.i(i4));
            if (S.mPosition == i2 && !S.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private void g(@Nullable RecyclerView recyclerView, long j4) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.E && recyclerView.f7104e.j() != 0) {
            recyclerView.z0();
        }
        LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.G0;
        layoutPrefetchRegistryImpl.b(recyclerView, true);
        if (layoutPrefetchRegistryImpl.f6912d != 0) {
            try {
                TraceCompat.beginSection("RV Nested Prefetch");
                recyclerView.H0.b(recyclerView.f7111l);
                for (int i2 = 0; i2 < layoutPrefetchRegistryImpl.f6912d * 2; i2 += 2) {
                    h(recyclerView, layoutPrefetchRegistryImpl.f6911c[i2], j4);
                }
            } finally {
                TraceCompat.endSection();
            }
        }
    }

    private RecyclerView.ViewHolder h(RecyclerView recyclerView, int i2, long j4) {
        if (d(recyclerView, i2)) {
            return null;
        }
        RecyclerView.Recycler recycler = recyclerView.f7101b;
        try {
            recyclerView.n0();
            RecyclerView.ViewHolder C = recycler.C(i2, false, j4);
            if (C != null) {
                if (C.isBound() && !C.isInvalid()) {
                    recycler.recycleView(C.itemView);
                } else {
                    recycler.a(C, false);
                }
            }
            return C;
        } finally {
            recyclerView.p0(false);
        }
    }

    public void add(RecyclerView recyclerView) {
        this.f6905a.add(recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(RecyclerView recyclerView, int i2, int i4) {
        if (recyclerView.isAttachedToWindow() && this.f6906b == 0) {
            this.f6906b = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        recyclerView.G0.d(i2, i4);
    }

    void f(long j4) {
        a();
        c(j4);
    }

    public void remove(RecyclerView recyclerView) {
        this.f6905a.remove(recyclerView);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            TraceCompat.beginSection("RV Prefetch");
            if (!this.f6905a.isEmpty()) {
                int size = this.f6905a.size();
                long j4 = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    RecyclerView recyclerView = this.f6905a.get(i2);
                    if (recyclerView.getWindowVisibility() == 0) {
                        j4 = Math.max(recyclerView.getDrawingTime(), j4);
                    }
                }
                if (j4 != 0) {
                    f(TimeUnit.MILLISECONDS.toNanos(j4) + this.f6907c);
                }
            }
        } finally {
            this.f6906b = 0L;
            TraceCompat.endSection();
        }
    }
}
