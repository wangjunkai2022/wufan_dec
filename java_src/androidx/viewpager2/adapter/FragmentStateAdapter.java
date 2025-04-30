package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
/* loaded from: classes2.dex */
public abstract class FragmentStateAdapter extends RecyclerView.Adapter<FragmentViewHolder> implements StatefulAdapter {

    /* renamed from: i  reason: collision with root package name */
    private static final String f8081i = "f#";

    /* renamed from: j  reason: collision with root package name */
    private static final String f8082j = "s#";

    /* renamed from: k  reason: collision with root package name */
    private static final long f8083k = 10000;

    /* renamed from: a  reason: collision with root package name */
    final Lifecycle f8084a;

    /* renamed from: b  reason: collision with root package name */
    final FragmentManager f8085b;

    /* renamed from: c  reason: collision with root package name */
    final LongSparseArray<Fragment> f8086c;

    /* renamed from: d  reason: collision with root package name */
    private final LongSparseArray<Fragment.SavedState> f8087d;

    /* renamed from: e  reason: collision with root package name */
    private final LongSparseArray<Integer> f8088e;

    /* renamed from: f  reason: collision with root package name */
    private FragmentMaxLifecycleEnforcer f8089f;

    /* renamed from: g  reason: collision with root package name */
    boolean f8090g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f8091h;

    /* loaded from: classes2.dex */
    private static abstract class DataSetChangeObserver extends RecyclerView.AdapterDataObserver {
        private DataSetChangeObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i2, int i4) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i2, int i4) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i2, int i4, int i5) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i2, int i4) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i2, int i4, @Nullable Object obj) {
            onChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class FragmentMaxLifecycleEnforcer {

        /* renamed from: a  reason: collision with root package name */
        private ViewPager2.OnPageChangeCallback f8104a;

        /* renamed from: b  reason: collision with root package name */
        private RecyclerView.AdapterDataObserver f8105b;

        /* renamed from: c  reason: collision with root package name */
        private LifecycleEventObserver f8106c;

        /* renamed from: d  reason: collision with root package name */
        private ViewPager2 f8107d;

        /* renamed from: e  reason: collision with root package name */
        private long f8108e = -1;

        FragmentMaxLifecycleEnforcer() {
        }

        @NonNull
        private ViewPager2 a(@NonNull RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException("Expected ViewPager2 instance. Got: " + parent);
        }

        void b(@NonNull RecyclerView recyclerView) {
            this.f8107d = a(recyclerView);
            ViewPager2.OnPageChangeCallback onPageChangeCallback = new ViewPager2.OnPageChangeCallback() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.1
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageScrollStateChanged(int i2) {
                    FragmentMaxLifecycleEnforcer.this.d(false);
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageSelected(int i2) {
                    FragmentMaxLifecycleEnforcer.this.d(false);
                }
            };
            this.f8104a = onPageChangeCallback;
            this.f8107d.registerOnPageChangeCallback(onPageChangeCallback);
            DataSetChangeObserver dataSetChangeObserver = new DataSetChangeObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.2
                @Override // androidx.viewpager2.adapter.FragmentStateAdapter.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onChanged() {
                    FragmentMaxLifecycleEnforcer.this.d(true);
                }
            };
            this.f8105b = dataSetChangeObserver;
            FragmentStateAdapter.this.registerAdapterDataObserver(dataSetChangeObserver);
            LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.3
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                    FragmentMaxLifecycleEnforcer.this.d(false);
                }
            };
            this.f8106c = lifecycleEventObserver;
            FragmentStateAdapter.this.f8084a.addObserver(lifecycleEventObserver);
        }

        void c(@NonNull RecyclerView recyclerView) {
            a(recyclerView).unregisterOnPageChangeCallback(this.f8104a);
            FragmentStateAdapter.this.unregisterAdapterDataObserver(this.f8105b);
            FragmentStateAdapter.this.f8084a.removeObserver(this.f8106c);
            this.f8107d = null;
        }

        void d(boolean z3) {
            int currentItem;
            Fragment fragment;
            if (FragmentStateAdapter.this.m() || this.f8107d.getScrollState() != 0 || FragmentStateAdapter.this.f8086c.isEmpty() || FragmentStateAdapter.this.getItemCount() == 0 || (currentItem = this.f8107d.getCurrentItem()) >= FragmentStateAdapter.this.getItemCount()) {
                return;
            }
            long itemId = FragmentStateAdapter.this.getItemId(currentItem);
            if ((itemId != this.f8108e || z3) && (fragment = FragmentStateAdapter.this.f8086c.get(itemId)) != null && fragment.isAdded()) {
                this.f8108e = itemId;
                FragmentTransaction beginTransaction = FragmentStateAdapter.this.f8085b.beginTransaction();
                Fragment fragment2 = null;
                for (int i2 = 0; i2 < FragmentStateAdapter.this.f8086c.size(); i2++) {
                    long keyAt = FragmentStateAdapter.this.f8086c.keyAt(i2);
                    Fragment valueAt = FragmentStateAdapter.this.f8086c.valueAt(i2);
                    if (valueAt.isAdded()) {
                        if (keyAt != this.f8108e) {
                            beginTransaction.setMaxLifecycle(valueAt, Lifecycle.State.STARTED);
                        } else {
                            fragment2 = valueAt;
                        }
                        valueAt.setMenuVisibility(keyAt == this.f8108e);
                    }
                }
                if (fragment2 != null) {
                    beginTransaction.setMaxLifecycle(fragment2, Lifecycle.State.RESUMED);
                }
                if (beginTransaction.isEmpty()) {
                    return;
                }
                beginTransaction.commitNow();
            }
        }
    }

    public FragmentStateAdapter(@NonNull FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    @NonNull
    private static String b(@NonNull String str, long j4) {
        return str + j4;
    }

    private void c(int i2) {
        long itemId = getItemId(i2);
        if (this.f8086c.containsKey(itemId)) {
            return;
        }
        Fragment createFragment = createFragment(i2);
        createFragment.setInitialSavedState(this.f8087d.get(itemId));
        this.f8086c.put(itemId, createFragment);
    }

    private boolean e(long j4) {
        View view;
        if (this.f8088e.containsKey(j4)) {
            return true;
        }
        Fragment fragment = this.f8086c.get(j4);
        return (fragment == null || (view = fragment.getView()) == null || view.getParent() == null) ? false : true;
    }

    private static boolean f(@NonNull String str, @NonNull String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    private Long g(int i2) {
        Long l4 = null;
        for (int i4 = 0; i4 < this.f8088e.size(); i4++) {
            if (this.f8088e.valueAt(i4).intValue() == i2) {
                if (l4 == null) {
                    l4 = Long.valueOf(this.f8088e.keyAt(i4));
                } else {
                    throw new IllegalStateException("Design assumption violated: a ViewHolder can only be bound to one item at a time.");
                }
            }
        }
        return l4;
    }

    private static long h(@NonNull String str, @NonNull String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    private void j(long j4) {
        ViewParent parent;
        Fragment fragment = this.f8086c.get(j4);
        if (fragment == null) {
            return;
        }
        if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!containsItem(j4)) {
            this.f8087d.remove(j4);
        }
        if (!fragment.isAdded()) {
            this.f8086c.remove(j4);
        } else if (m()) {
            this.f8091h = true;
        } else {
            if (fragment.isAdded() && containsItem(j4)) {
                this.f8087d.put(j4, this.f8085b.saveFragmentInstanceState(fragment));
            }
            this.f8085b.beginTransaction().remove(fragment).commitNow();
            this.f8086c.remove(j4);
        }
    }

    private void k() {
        final Handler handler = new Handler(Looper.getMainLooper());
        final Runnable runnable = new Runnable() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                FragmentStateAdapter fragmentStateAdapter = FragmentStateAdapter.this;
                fragmentStateAdapter.f8090g = false;
                fragmentStateAdapter.d();
            }
        };
        this.f8084a.addObserver(new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.5
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    handler.removeCallbacks(runnable);
                    lifecycleOwner.getLifecycle().removeObserver(this);
                }
            }
        });
        handler.postDelayed(runnable, 10000L);
    }

    private void l(final Fragment fragment, @NonNull final FrameLayout frameLayout) {
        this.f8085b.registerFragmentLifecycleCallbacks(new FragmentManager.FragmentLifecycleCallbacks() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.3
            @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
            public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment2, @NonNull View view, @Nullable Bundle bundle) {
                if (fragment2 == fragment) {
                    fragmentManager.unregisterFragmentLifecycleCallbacks(this);
                    FragmentStateAdapter.this.a(view, frameLayout);
                }
            }
        }, false);
    }

    void a(@NonNull View view, @NonNull FrameLayout frameLayout) {
        if (frameLayout.getChildCount() <= 1) {
            if (view.getParent() == frameLayout) {
                return;
            }
            if (frameLayout.getChildCount() > 0) {
                frameLayout.removeAllViews();
            }
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            frameLayout.addView(view);
            return;
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    public boolean containsItem(long j4) {
        return j4 >= 0 && j4 < ((long) getItemCount());
    }

    @NonNull
    public abstract Fragment createFragment(int i2);

    void d() {
        if (!this.f8091h || m()) {
            return;
        }
        ArraySet<Long> arraySet = new ArraySet();
        for (int i2 = 0; i2 < this.f8086c.size(); i2++) {
            long keyAt = this.f8086c.keyAt(i2);
            if (!containsItem(keyAt)) {
                arraySet.add(Long.valueOf(keyAt));
                this.f8088e.remove(keyAt);
            }
        }
        if (!this.f8090g) {
            this.f8091h = false;
            for (int i4 = 0; i4 < this.f8086c.size(); i4++) {
                long keyAt2 = this.f8086c.keyAt(i4);
                if (!e(keyAt2)) {
                    arraySet.add(Long.valueOf(keyAt2));
                }
            }
        }
        for (Long l4 : arraySet) {
            j(l4.longValue());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    void i(@NonNull final FragmentViewHolder fragmentViewHolder) {
        Fragment fragment = this.f8086c.get(fragmentViewHolder.getItemId());
        if (fragment != null) {
            FrameLayout b4 = fragmentViewHolder.b();
            View view = fragment.getView();
            if (!fragment.isAdded() && view != null) {
                throw new IllegalStateException("Design assumption violated.");
            }
            if (fragment.isAdded() && view == null) {
                l(fragment, b4);
                return;
            } else if (fragment.isAdded() && view.getParent() != null) {
                if (view.getParent() != b4) {
                    a(view, b4);
                    return;
                }
                return;
            } else if (fragment.isAdded()) {
                a(view, b4);
                return;
            } else if (!m()) {
                l(fragment, b4);
                FragmentTransaction beginTransaction = this.f8085b.beginTransaction();
                beginTransaction.add(fragment, "f" + fragmentViewHolder.getItemId()).setMaxLifecycle(fragment, Lifecycle.State.STARTED).commitNow();
                this.f8089f.d(false);
                return;
            } else if (this.f8085b.isDestroyed()) {
                return;
            } else {
                this.f8084a.addObserver(new LifecycleEventObserver() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.2
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
                        if (FragmentStateAdapter.this.m()) {
                            return;
                        }
                        lifecycleOwner.getLifecycle().removeObserver(this);
                        if (ViewCompat.isAttachedToWindow(fragmentViewHolder.b())) {
                            FragmentStateAdapter.this.i(fragmentViewHolder);
                        }
                    }
                });
                return;
            }
        }
        throw new IllegalStateException("Design assumption violated.");
    }

    boolean m() {
        return this.f8085b.isStateSaved();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onAttachedToRecyclerView(@NonNull RecyclerView recyclerView) {
        Preconditions.checkArgument(this.f8089f == null);
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer();
        this.f8089f = fragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.b(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onDetachedFromRecyclerView(@NonNull RecyclerView recyclerView) {
        this.f8089f.c(recyclerView);
        this.f8089f = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(@NonNull FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final void restoreState(@NonNull Parcelable parcelable) {
        if (this.f8087d.isEmpty() && this.f8086c.isEmpty()) {
            Bundle bundle = (Bundle) parcelable;
            if (bundle.getClassLoader() == null) {
                bundle.setClassLoader(getClass().getClassLoader());
            }
            for (String str : bundle.keySet()) {
                if (f(str, f8081i)) {
                    this.f8086c.put(h(str, f8081i), this.f8085b.getFragment(bundle, str));
                } else if (f(str, f8082j)) {
                    long h4 = h(str, f8082j);
                    Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                    if (containsItem(h4)) {
                        this.f8087d.put(h4, savedState);
                    }
                } else {
                    throw new IllegalArgumentException("Unexpected key in savedState: " + str);
                }
            }
            if (this.f8086c.isEmpty()) {
                return;
            }
            this.f8091h = true;
            this.f8090g = true;
            d();
            k();
            return;
        }
        throw new IllegalStateException("Expected the adapter to be 'fresh' while restoring state.");
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    @NonNull
    public final Parcelable saveState() {
        Bundle bundle = new Bundle(this.f8086c.size() + this.f8087d.size());
        for (int i2 = 0; i2 < this.f8086c.size(); i2++) {
            long keyAt = this.f8086c.keyAt(i2);
            Fragment fragment = this.f8086c.get(keyAt);
            if (fragment != null && fragment.isAdded()) {
                this.f8085b.putFragment(bundle, b(f8081i, keyAt), fragment);
            }
        }
        for (int i4 = 0; i4 < this.f8087d.size(); i4++) {
            long keyAt2 = this.f8087d.keyAt(i4);
            if (containsItem(keyAt2)) {
                bundle.putParcelable(b(f8082j, keyAt2), this.f8087d.get(keyAt2));
            }
        }
        return bundle;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void setHasStableIds(boolean z3) {
        throw new UnsupportedOperationException("Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag.");
    }

    public FragmentStateAdapter(@NonNull Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(@NonNull final FragmentViewHolder fragmentViewHolder, int i2) {
        long itemId = fragmentViewHolder.getItemId();
        int id = fragmentViewHolder.b().getId();
        Long g4 = g(id);
        if (g4 != null && g4.longValue() != itemId) {
            j(g4.longValue());
            this.f8088e.remove(g4.longValue());
        }
        this.f8088e.put(itemId, Integer.valueOf(id));
        c(i2);
        final FrameLayout b4 = fragmentViewHolder.b();
        if (ViewCompat.isAttachedToWindow(b4)) {
            if (b4.getParent() == null) {
                b4.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.1
                    @Override // android.view.View.OnLayoutChangeListener
                    public void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                        if (b4.getParent() != null) {
                            b4.removeOnLayoutChangeListener(this);
                            FragmentStateAdapter.this.i(fragmentViewHolder);
                        }
                    }
                });
            } else {
                throw new IllegalStateException("Design assumption violated.");
            }
        }
        d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public final FragmentViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i2) {
        return FragmentViewHolder.a(viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(@NonNull FragmentViewHolder fragmentViewHolder) {
        i(fragmentViewHolder);
        d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(@NonNull FragmentViewHolder fragmentViewHolder) {
        Long g4 = g(fragmentViewHolder.b().getId());
        if (g4 != null) {
            j(g4.longValue());
            this.f8088e.remove(g4.longValue());
        }
    }

    public FragmentStateAdapter(@NonNull FragmentManager fragmentManager, @NonNull Lifecycle lifecycle) {
        this.f8086c = new LongSparseArray<>();
        this.f8087d = new LongSparseArray<>();
        this.f8088e = new LongSparseArray<>();
        this.f8090g = false;
        this.f8091h = false;
        this.f8085b = fragmentManager;
        this.f8084a = lifecycle;
        super.setHasStableIds(true);
    }
}
