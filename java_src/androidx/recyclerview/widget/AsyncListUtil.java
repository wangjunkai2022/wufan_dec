package androidx.recyclerview.widget;

import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.WorkerThread;
import androidx.recyclerview.widget.ThreadUtil;
import androidx.recyclerview.widget.TileList;
/* loaded from: classes2.dex */
public class AsyncListUtil<T> {

    /* renamed from: s  reason: collision with root package name */
    static final String f6739s = "AsyncListUtil";

    /* renamed from: t  reason: collision with root package name */
    static final boolean f6740t = false;

    /* renamed from: a  reason: collision with root package name */
    final Class<T> f6741a;

    /* renamed from: b  reason: collision with root package name */
    final int f6742b;

    /* renamed from: c  reason: collision with root package name */
    final DataCallback<T> f6743c;

    /* renamed from: d  reason: collision with root package name */
    final ViewCallback f6744d;

    /* renamed from: e  reason: collision with root package name */
    final TileList<T> f6745e;

    /* renamed from: f  reason: collision with root package name */
    final ThreadUtil.MainThreadCallback<T> f6746f;

    /* renamed from: g  reason: collision with root package name */
    final ThreadUtil.BackgroundCallback<T> f6747g;

    /* renamed from: k  reason: collision with root package name */
    boolean f6751k;

    /* renamed from: q  reason: collision with root package name */
    private final ThreadUtil.MainThreadCallback<T> f6757q;

    /* renamed from: r  reason: collision with root package name */
    private final ThreadUtil.BackgroundCallback<T> f6758r;

    /* renamed from: h  reason: collision with root package name */
    final int[] f6748h = new int[2];

    /* renamed from: i  reason: collision with root package name */
    final int[] f6749i = new int[2];

    /* renamed from: j  reason: collision with root package name */
    final int[] f6750j = new int[2];

    /* renamed from: l  reason: collision with root package name */
    private int f6752l = 0;

    /* renamed from: m  reason: collision with root package name */
    int f6753m = 0;

    /* renamed from: n  reason: collision with root package name */
    int f6754n = 0;

    /* renamed from: o  reason: collision with root package name */
    int f6755o = 0;

    /* renamed from: p  reason: collision with root package name */
    final SparseIntArray f6756p = new SparseIntArray();

    /* loaded from: classes2.dex */
    public static abstract class DataCallback<T> {
        @WorkerThread
        public abstract void fillData(@NonNull T[] tArr, int i2, int i4);

        @WorkerThread
        public int getMaxCachedTiles() {
            return 10;
        }

        @WorkerThread
        public void recycleData(@NonNull T[] tArr, int i2) {
        }

        @WorkerThread
        public abstract int refreshData();
    }

    /* loaded from: classes2.dex */
    public static abstract class ViewCallback {
        public static final int HINT_SCROLL_ASC = 2;
        public static final int HINT_SCROLL_DESC = 1;
        public static final int HINT_SCROLL_NONE = 0;

        @UiThread
        public void extendRangeInto(@NonNull int[] iArr, @NonNull int[] iArr2, int i2) {
            int i4 = (iArr[1] - iArr[0]) + 1;
            int i5 = i4 / 2;
            iArr2[0] = iArr[0] - (i2 == 1 ? i4 : i5);
            int i6 = iArr[1];
            if (i2 != 2) {
                i4 = i5;
            }
            iArr2[1] = i6 + i4;
        }

        @UiThread
        public abstract void getItemRangeInto(@NonNull int[] iArr);

        @UiThread
        public abstract void onDataRefresh();

        @UiThread
        public abstract void onItemLoaded(int i2);
    }

    public AsyncListUtil(@NonNull Class<T> cls, int i2, @NonNull DataCallback<T> dataCallback, @NonNull ViewCallback viewCallback) {
        ThreadUtil.MainThreadCallback<T> mainThreadCallback = new ThreadUtil.MainThreadCallback<T>() { // from class: androidx.recyclerview.widget.AsyncListUtil.1
            private boolean a(int i4) {
                return i4 == AsyncListUtil.this.f6755o;
            }

            private void b() {
                for (int i4 = 0; i4 < AsyncListUtil.this.f6745e.size(); i4++) {
                    AsyncListUtil asyncListUtil = AsyncListUtil.this;
                    asyncListUtil.f6747g.recycleTile(asyncListUtil.f6745e.getAtIndex(i4));
                }
                AsyncListUtil.this.f6745e.clear();
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void addTile(int i4, TileList.Tile<T> tile) {
                if (!a(i4)) {
                    AsyncListUtil.this.f6747g.recycleTile(tile);
                    return;
                }
                TileList.Tile<T> addOrReplace = AsyncListUtil.this.f6745e.addOrReplace(tile);
                if (addOrReplace != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("duplicate tile @");
                    sb.append(addOrReplace.mStartPosition);
                    AsyncListUtil.this.f6747g.recycleTile(addOrReplace);
                }
                int i5 = tile.mStartPosition + tile.mItemCount;
                int i6 = 0;
                while (i6 < AsyncListUtil.this.f6756p.size()) {
                    int keyAt = AsyncListUtil.this.f6756p.keyAt(i6);
                    if (tile.mStartPosition > keyAt || keyAt >= i5) {
                        i6++;
                    } else {
                        AsyncListUtil.this.f6756p.removeAt(i6);
                        AsyncListUtil.this.f6744d.onItemLoaded(keyAt);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void removeTile(int i4, int i5) {
                if (a(i4)) {
                    TileList.Tile<T> removeAtPos = AsyncListUtil.this.f6745e.removeAtPos(i5);
                    if (removeAtPos == null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("tile not found @");
                        sb.append(i5);
                        return;
                    }
                    AsyncListUtil.this.f6747g.recycleTile(removeAtPos);
                }
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.MainThreadCallback
            public void updateItemCount(int i4, int i5) {
                if (a(i4)) {
                    AsyncListUtil asyncListUtil = AsyncListUtil.this;
                    asyncListUtil.f6753m = i5;
                    asyncListUtil.f6744d.onDataRefresh();
                    AsyncListUtil asyncListUtil2 = AsyncListUtil.this;
                    asyncListUtil2.f6754n = asyncListUtil2.f6755o;
                    b();
                    AsyncListUtil asyncListUtil3 = AsyncListUtil.this;
                    asyncListUtil3.f6751k = false;
                    asyncListUtil3.c();
                }
            }
        };
        this.f6757q = mainThreadCallback;
        ThreadUtil.BackgroundCallback<T> backgroundCallback = new ThreadUtil.BackgroundCallback<T>() { // from class: androidx.recyclerview.widget.AsyncListUtil.2

            /* renamed from: a  reason: collision with root package name */
            private TileList.Tile<T> f6760a;

            /* renamed from: b  reason: collision with root package name */
            final SparseBooleanArray f6761b = new SparseBooleanArray();

            /* renamed from: c  reason: collision with root package name */
            private int f6762c;

            /* renamed from: d  reason: collision with root package name */
            private int f6763d;

            /* renamed from: e  reason: collision with root package name */
            private int f6764e;

            /* renamed from: f  reason: collision with root package name */
            private int f6765f;

            private TileList.Tile<T> a() {
                TileList.Tile<T> tile = this.f6760a;
                if (tile != null) {
                    this.f6760a = tile.f7312a;
                    return tile;
                }
                AsyncListUtil asyncListUtil = AsyncListUtil.this;
                return new TileList.Tile<>(asyncListUtil.f6741a, asyncListUtil.f6742b);
            }

            private void b(TileList.Tile<T> tile) {
                this.f6761b.put(tile.mStartPosition, true);
                AsyncListUtil.this.f6746f.addTile(this.f6762c, tile);
            }

            private void c(int i4) {
                int maxCachedTiles = AsyncListUtil.this.f6743c.getMaxCachedTiles();
                while (this.f6761b.size() >= maxCachedTiles) {
                    int keyAt = this.f6761b.keyAt(0);
                    SparseBooleanArray sparseBooleanArray = this.f6761b;
                    int keyAt2 = sparseBooleanArray.keyAt(sparseBooleanArray.size() - 1);
                    int i5 = this.f6764e - keyAt;
                    int i6 = keyAt2 - this.f6765f;
                    if (i5 > 0 && (i5 >= i6 || i4 == 2)) {
                        g(keyAt);
                    } else if (i6 <= 0) {
                        return;
                    } else {
                        if (i5 >= i6 && i4 != 1) {
                            return;
                        }
                        g(keyAt2);
                    }
                }
            }

            private int d(int i4) {
                return i4 - (i4 % AsyncListUtil.this.f6742b);
            }

            private boolean e(int i4) {
                return this.f6761b.get(i4);
            }

            private void f(String str, Object... objArr) {
                StringBuilder sb = new StringBuilder();
                sb.append("[BKGR] ");
                sb.append(String.format(str, objArr));
            }

            private void g(int i4) {
                this.f6761b.delete(i4);
                AsyncListUtil.this.f6746f.removeTile(this.f6762c, i4);
            }

            private void h(int i4, int i5, int i6, boolean z3) {
                int i7 = i4;
                while (i7 <= i5) {
                    AsyncListUtil.this.f6747g.loadTile(z3 ? (i5 + i4) - i7 : i7, i6);
                    i7 += AsyncListUtil.this.f6742b;
                }
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void loadTile(int i4, int i5) {
                if (e(i4)) {
                    return;
                }
                TileList.Tile<T> a4 = a();
                a4.mStartPosition = i4;
                int min = Math.min(AsyncListUtil.this.f6742b, this.f6763d - i4);
                a4.mItemCount = min;
                AsyncListUtil.this.f6743c.fillData(a4.mItems, a4.mStartPosition, min);
                c(i5);
                b(a4);
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void recycleTile(TileList.Tile<T> tile) {
                AsyncListUtil.this.f6743c.recycleData(tile.mItems, tile.mItemCount);
                tile.f7312a = this.f6760a;
                this.f6760a = tile;
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void refresh(int i4) {
                this.f6762c = i4;
                this.f6761b.clear();
                int refreshData = AsyncListUtil.this.f6743c.refreshData();
                this.f6763d = refreshData;
                AsyncListUtil.this.f6746f.updateItemCount(this.f6762c, refreshData);
            }

            @Override // androidx.recyclerview.widget.ThreadUtil.BackgroundCallback
            public void updateRange(int i4, int i5, int i6, int i7, int i8) {
                if (i4 > i5) {
                    return;
                }
                int d4 = d(i4);
                int d5 = d(i5);
                this.f6764e = d(i6);
                int d6 = d(i7);
                this.f6765f = d6;
                if (i8 == 1) {
                    h(this.f6764e, d5, i8, true);
                    h(d5 + AsyncListUtil.this.f6742b, this.f6765f, i8, false);
                    return;
                }
                h(d4, d6, i8, false);
                h(this.f6764e, d4 - AsyncListUtil.this.f6742b, i8, true);
            }
        };
        this.f6758r = backgroundCallback;
        this.f6741a = cls;
        this.f6742b = i2;
        this.f6743c = dataCallback;
        this.f6744d = viewCallback;
        this.f6745e = new TileList<>(i2);
        MessageThreadUtil messageThreadUtil = new MessageThreadUtil();
        this.f6746f = messageThreadUtil.getMainThreadProxy(mainThreadCallback);
        this.f6747g = messageThreadUtil.getBackgroundProxy(backgroundCallback);
        refresh();
    }

    private boolean a() {
        return this.f6755o != this.f6754n;
    }

    void b(String str, Object... objArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("[MAIN] ");
        sb.append(String.format(str, objArr));
    }

    void c() {
        this.f6744d.getItemRangeInto(this.f6748h);
        int[] iArr = this.f6748h;
        if (iArr[0] > iArr[1] || iArr[0] < 0 || iArr[1] >= this.f6753m) {
            return;
        }
        if (!this.f6751k) {
            this.f6752l = 0;
        } else {
            int i2 = iArr[0];
            int[] iArr2 = this.f6749i;
            if (i2 <= iArr2[1] && iArr2[0] <= iArr[1]) {
                if (iArr[0] < iArr2[0]) {
                    this.f6752l = 1;
                } else if (iArr[0] > iArr2[0]) {
                    this.f6752l = 2;
                }
            } else {
                this.f6752l = 0;
            }
        }
        int[] iArr3 = this.f6749i;
        iArr3[0] = iArr[0];
        iArr3[1] = iArr[1];
        this.f6744d.extendRangeInto(iArr, this.f6750j, this.f6752l);
        int[] iArr4 = this.f6750j;
        iArr4[0] = Math.min(this.f6748h[0], Math.max(iArr4[0], 0));
        int[] iArr5 = this.f6750j;
        iArr5[1] = Math.max(this.f6748h[1], Math.min(iArr5[1], this.f6753m - 1));
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.f6747g;
        int[] iArr6 = this.f6748h;
        int i4 = iArr6[0];
        int i5 = iArr6[1];
        int[] iArr7 = this.f6750j;
        backgroundCallback.updateRange(i4, i5, iArr7[0], iArr7[1], this.f6752l);
    }

    @Nullable
    public T getItem(int i2) {
        if (i2 >= 0 && i2 < this.f6753m) {
            T itemAt = this.f6745e.getItemAt(i2);
            if (itemAt == null && !a()) {
                this.f6756p.put(i2, 0);
            }
            return itemAt;
        }
        throw new IndexOutOfBoundsException(i2 + " is not within 0 and " + this.f6753m);
    }

    public int getItemCount() {
        return this.f6753m;
    }

    public void onRangeChanged() {
        if (a()) {
            return;
        }
        c();
        this.f6751k = true;
    }

    public void refresh() {
        this.f6756p.clear();
        ThreadUtil.BackgroundCallback<T> backgroundCallback = this.f6747g;
        int i2 = this.f6755o + 1;
        this.f6755o = i2;
        backgroundCallback.refresh(i2);
    }
}
