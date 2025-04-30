package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import androidx.recyclerview.widget.RecyclerView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ViewInfoStore {

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f7340c = false;
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final SimpleArrayMap<RecyclerView.ViewHolder, InfoRecord> f7341a = new SimpleArrayMap<>();
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final LongSparseArray<RecyclerView.ViewHolder> f7342b = new LongSparseArray<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class InfoRecord {

        /* renamed from: d  reason: collision with root package name */
        static final int f7343d = 1;

        /* renamed from: e  reason: collision with root package name */
        static final int f7344e = 2;

        /* renamed from: f  reason: collision with root package name */
        static final int f7345f = 4;

        /* renamed from: g  reason: collision with root package name */
        static final int f7346g = 8;

        /* renamed from: h  reason: collision with root package name */
        static final int f7347h = 3;

        /* renamed from: i  reason: collision with root package name */
        static final int f7348i = 12;

        /* renamed from: j  reason: collision with root package name */
        static final int f7349j = 14;

        /* renamed from: k  reason: collision with root package name */
        static Pools.Pool<InfoRecord> f7350k = new Pools.SimplePool(20);

        /* renamed from: a  reason: collision with root package name */
        int f7351a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        RecyclerView.ItemAnimator.ItemHolderInfo f7352b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        RecyclerView.ItemAnimator.ItemHolderInfo f7353c;

        private InfoRecord() {
        }

        static void a() {
            do {
            } while (f7350k.acquire() != null);
        }

        static InfoRecord b() {
            InfoRecord acquire = f7350k.acquire();
            return acquire == null ? new InfoRecord() : acquire;
        }

        static void c(InfoRecord infoRecord) {
            infoRecord.f7351a = 0;
            infoRecord.f7352b = null;
            infoRecord.f7353c = null;
            f7350k.release(infoRecord);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface ProcessCallback {
        void processAppeared(RecyclerView.ViewHolder viewHolder, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void processDisappeared(RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @Nullable RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void processPersistent(RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo, @NonNull RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo2);

        void unused(RecyclerView.ViewHolder viewHolder);
    }

    private RecyclerView.ItemAnimator.ItemHolderInfo k(RecyclerView.ViewHolder viewHolder, int i2) {
        InfoRecord valueAt;
        RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo;
        int indexOfKey = this.f7341a.indexOfKey(viewHolder);
        if (indexOfKey >= 0 && (valueAt = this.f7341a.valueAt(indexOfKey)) != null) {
            int i4 = valueAt.f7351a;
            if ((i4 & i2) != 0) {
                int i5 = (i2 ^ (-1)) & i4;
                valueAt.f7351a = i5;
                if (i2 == 4) {
                    itemHolderInfo = valueAt.f7352b;
                } else if (i2 == 8) {
                    itemHolderInfo = valueAt.f7353c;
                } else {
                    throw new IllegalArgumentException("Must provide flag PRE or POST");
                }
                if ((i5 & 12) == 0) {
                    this.f7341a.removeAt(indexOfKey);
                    InfoRecord.c(valueAt);
                }
                return itemHolderInfo;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.f7341a.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = InfoRecord.b();
            this.f7341a.put(viewHolder, infoRecord);
        }
        infoRecord.f7351a |= 2;
        infoRecord.f7352b = itemHolderInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.f7341a.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = InfoRecord.b();
            this.f7341a.put(viewHolder, infoRecord);
        }
        infoRecord.f7351a |= 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(long j4, RecyclerView.ViewHolder viewHolder) {
        this.f7342b.put(j4, viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.f7341a.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = InfoRecord.b();
            this.f7341a.put(viewHolder, infoRecord);
        }
        infoRecord.f7353c = itemHolderInfo;
        infoRecord.f7351a |= 8;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(RecyclerView.ViewHolder viewHolder, RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo) {
        InfoRecord infoRecord = this.f7341a.get(viewHolder);
        if (infoRecord == null) {
            infoRecord = InfoRecord.b();
            this.f7341a.put(viewHolder, infoRecord);
        }
        infoRecord.f7352b = itemHolderInfo;
        infoRecord.f7351a |= 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        this.f7341a.clear();
        this.f7342b.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecyclerView.ViewHolder g(long j4) {
        return this.f7342b.get(j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.f7341a.get(viewHolder);
        return (infoRecord == null || (infoRecord.f7351a & 1) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.f7341a.get(viewHolder);
        return (infoRecord == null || (infoRecord.f7351a & 4) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        InfoRecord.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public RecyclerView.ItemAnimator.ItemHolderInfo l(RecyclerView.ViewHolder viewHolder) {
        return k(viewHolder, 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public RecyclerView.ItemAnimator.ItemHolderInfo m(RecyclerView.ViewHolder viewHolder) {
        return k(viewHolder, 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(ProcessCallback processCallback) {
        for (int size = this.f7341a.size() - 1; size >= 0; size--) {
            RecyclerView.ViewHolder keyAt = this.f7341a.keyAt(size);
            InfoRecord removeAt = this.f7341a.removeAt(size);
            int i2 = removeAt.f7351a;
            if ((i2 & 3) == 3) {
                processCallback.unused(keyAt);
            } else if ((i2 & 1) != 0) {
                RecyclerView.ItemAnimator.ItemHolderInfo itemHolderInfo = removeAt.f7352b;
                if (itemHolderInfo == null) {
                    processCallback.unused(keyAt);
                } else {
                    processCallback.processDisappeared(keyAt, itemHolderInfo, removeAt.f7353c);
                }
            } else if ((i2 & 14) == 14) {
                processCallback.processAppeared(keyAt, removeAt.f7352b, removeAt.f7353c);
            } else if ((i2 & 12) == 12) {
                processCallback.processPersistent(keyAt, removeAt.f7352b, removeAt.f7353c);
            } else if ((i2 & 4) != 0) {
                processCallback.processDisappeared(keyAt, removeAt.f7352b, null);
            } else if ((i2 & 8) != 0) {
                processCallback.processAppeared(keyAt, removeAt.f7352b, removeAt.f7353c);
            }
            InfoRecord.c(removeAt);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(RecyclerView.ViewHolder viewHolder) {
        InfoRecord infoRecord = this.f7341a.get(viewHolder);
        if (infoRecord == null) {
            return;
        }
        infoRecord.f7351a &= -2;
    }

    public void onViewDetached(RecyclerView.ViewHolder viewHolder) {
        o(viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p(RecyclerView.ViewHolder viewHolder) {
        int size = this.f7342b.size() - 1;
        while (true) {
            if (size < 0) {
                break;
            } else if (viewHolder == this.f7342b.valueAt(size)) {
                this.f7342b.removeAt(size);
                break;
            } else {
                size--;
            }
        }
        InfoRecord remove = this.f7341a.remove(viewHolder);
        if (remove != null) {
            InfoRecord.c(remove);
        }
    }
}
