package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.AsyncDifferConfig;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public class AsyncListDiffer<T> {

    /* renamed from: h  reason: collision with root package name */
    private static final Executor f6722h = new MainThreadExecutor();

    /* renamed from: a  reason: collision with root package name */
    private final ListUpdateCallback f6723a;

    /* renamed from: b  reason: collision with root package name */
    final AsyncDifferConfig<T> f6724b;

    /* renamed from: c  reason: collision with root package name */
    Executor f6725c;

    /* renamed from: d  reason: collision with root package name */
    private final List<ListListener<T>> f6726d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private List<T> f6727e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private List<T> f6728f;

    /* renamed from: g  reason: collision with root package name */
    int f6729g;

    /* loaded from: classes2.dex */
    public interface ListListener<T> {
        void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2);
    }

    /* loaded from: classes2.dex */
    private static class MainThreadExecutor implements Executor {

        /* renamed from: a  reason: collision with root package name */
        final Handler f6738a = new Handler(Looper.getMainLooper());

        MainThreadExecutor() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.f6738a.post(runnable);
        }
    }

    public AsyncListDiffer(@NonNull RecyclerView.Adapter adapter, @NonNull DiffUtil.ItemCallback<T> itemCallback) {
        this(new AdapterListUpdateCallback(adapter), new AsyncDifferConfig.Builder(itemCallback).build());
    }

    private void b(@NonNull List<T> list, @Nullable Runnable runnable) {
        for (ListListener<T> listListener : this.f6726d) {
            listListener.onCurrentListChanged(list, this.f6728f);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    void a(@NonNull List<T> list, @NonNull DiffUtil.DiffResult diffResult, @Nullable Runnable runnable) {
        List<T> list2 = this.f6728f;
        this.f6727e = list;
        this.f6728f = Collections.unmodifiableList(list);
        diffResult.dispatchUpdatesTo(this.f6723a);
        b(list2, runnable);
    }

    public void addListListener(@NonNull ListListener<T> listListener) {
        this.f6726d.add(listListener);
    }

    @NonNull
    public List<T> getCurrentList() {
        return this.f6728f;
    }

    public void removeListListener(@NonNull ListListener<T> listListener) {
        this.f6726d.remove(listListener);
    }

    public void submitList(@Nullable List<T> list) {
        submitList(list, null);
    }

    public void submitList(@Nullable final List<T> list, @Nullable final Runnable runnable) {
        final int i2 = this.f6729g + 1;
        this.f6729g = i2;
        final List<T> list2 = this.f6727e;
        if (list == list2) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        List<T> list3 = this.f6728f;
        if (list == null) {
            int size = list2.size();
            this.f6727e = null;
            this.f6728f = Collections.emptyList();
            this.f6723a.onRemoved(0, size);
            b(list3, runnable);
        } else if (list2 == null) {
            this.f6727e = list;
            this.f6728f = Collections.unmodifiableList(list);
            this.f6723a.onInserted(0, list.size());
            b(list3, runnable);
        } else {
            this.f6724b.getBackgroundThreadExecutor().execute(new Runnable() { // from class: androidx.recyclerview.widget.AsyncListDiffer.1
                @Override // java.lang.Runnable
                public void run() {
                    final DiffUtil.DiffResult calculateDiff = DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: androidx.recyclerview.widget.AsyncListDiffer.1.1
                        @Override // androidx.recyclerview.widget.DiffUtil.Callback
                        public boolean areContentsTheSame(int i4, int i5) {
                            Object obj = list2.get(i4);
                            Object obj2 = list.get(i5);
                            if (obj == null || obj2 == null) {
                                if (obj == null && obj2 == null) {
                                    return true;
                                }
                                throw new AssertionError();
                            }
                            return AsyncListDiffer.this.f6724b.getDiffCallback().areContentsTheSame(obj, obj2);
                        }

                        @Override // androidx.recyclerview.widget.DiffUtil.Callback
                        public boolean areItemsTheSame(int i4, int i5) {
                            Object obj = list2.get(i4);
                            Object obj2 = list.get(i5);
                            if (obj == null || obj2 == null) {
                                return obj == null && obj2 == null;
                            }
                            return AsyncListDiffer.this.f6724b.getDiffCallback().areItemsTheSame(obj, obj2);
                        }

                        @Override // androidx.recyclerview.widget.DiffUtil.Callback
                        @Nullable
                        public Object getChangePayload(int i4, int i5) {
                            Object obj = list2.get(i4);
                            Object obj2 = list.get(i5);
                            if (obj != null && obj2 != null) {
                                return AsyncListDiffer.this.f6724b.getDiffCallback().getChangePayload(obj, obj2);
                            }
                            throw new AssertionError();
                        }

                        @Override // androidx.recyclerview.widget.DiffUtil.Callback
                        public int getNewListSize() {
                            return list.size();
                        }

                        @Override // androidx.recyclerview.widget.DiffUtil.Callback
                        public int getOldListSize() {
                            return list2.size();
                        }
                    });
                    AsyncListDiffer.this.f6725c.execute(new Runnable() { // from class: androidx.recyclerview.widget.AsyncListDiffer.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            AsyncListDiffer asyncListDiffer = AsyncListDiffer.this;
                            if (asyncListDiffer.f6729g == i2) {
                                asyncListDiffer.a(list, calculateDiff, runnable);
                            }
                        }
                    });
                }
            });
        }
    }

    public AsyncListDiffer(@NonNull ListUpdateCallback listUpdateCallback, @NonNull AsyncDifferConfig<T> asyncDifferConfig) {
        this.f6726d = new CopyOnWriteArrayList();
        this.f6728f = Collections.emptyList();
        this.f6723a = listUpdateCallback;
        this.f6724b = asyncDifferConfig;
        if (asyncDifferConfig.getMainThreadExecutor() != null) {
            this.f6725c = asyncDifferConfig.getMainThreadExecutor();
        } else {
            this.f6725c = f6722h;
        }
    }
}
