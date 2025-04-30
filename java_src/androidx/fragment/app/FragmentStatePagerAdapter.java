package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager.widget.PagerAdapter;
import java.util.ArrayList;
@Deprecated
/* loaded from: classes.dex */
public abstract class FragmentStatePagerAdapter extends PagerAdapter {
    public static final int BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT = 1;
    @Deprecated
    public static final int BEHAVIOR_SET_USER_VISIBLE_HINT = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final String f5976h = "FragmentStatePagerAdapt";

    /* renamed from: i  reason: collision with root package name */
    private static final boolean f5977i = false;

    /* renamed from: a  reason: collision with root package name */
    private final FragmentManager f5978a;

    /* renamed from: b  reason: collision with root package name */
    private final int f5979b;

    /* renamed from: c  reason: collision with root package name */
    private FragmentTransaction f5980c;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<Fragment.SavedState> f5981d;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<Fragment> f5982e;

    /* renamed from: f  reason: collision with root package name */
    private Fragment f5983f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f5984g;

    @Deprecated
    public FragmentStatePagerAdapter(@NonNull FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(@NonNull ViewGroup viewGroup, int i2, @NonNull Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f5980c == null) {
            this.f5980c = this.f5978a.beginTransaction();
        }
        while (this.f5981d.size() <= i2) {
            this.f5981d.add(null);
        }
        this.f5981d.set(i2, fragment.isAdded() ? this.f5978a.saveFragmentInstanceState(fragment) : null);
        this.f5982e.set(i2, null);
        this.f5980c.remove(fragment);
        if (fragment.equals(this.f5983f)) {
            this.f5983f = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(@NonNull ViewGroup viewGroup) {
        FragmentTransaction fragmentTransaction = this.f5980c;
        if (fragmentTransaction != null) {
            if (!this.f5984g) {
                try {
                    this.f5984g = true;
                    fragmentTransaction.commitNowAllowingStateLoss();
                } finally {
                    this.f5984g = false;
                }
            }
            this.f5980c = null;
        }
    }

    @NonNull
    public abstract Fragment getItem(int i2);

    @Override // androidx.viewpager.widget.PagerAdapter
    @NonNull
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i2) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.f5982e.size() <= i2 || (fragment = this.f5982e.get(i2)) == null) {
            if (this.f5980c == null) {
                this.f5980c = this.f5978a.beginTransaction();
            }
            Fragment item = getItem(i2);
            if (this.f5981d.size() > i2 && (savedState = this.f5981d.get(i2)) != null) {
                item.setInitialSavedState(savedState);
            }
            while (this.f5982e.size() <= i2) {
                this.f5982e.add(null);
            }
            item.setMenuVisibility(false);
            if (this.f5979b == 0) {
                item.setUserVisibleHint(false);
            }
            this.f5982e.set(i2, item);
            this.f5980c.add(viewGroup.getId(), item);
            if (this.f5979b == 1) {
                this.f5980c.setMaxLifecycle(item, Lifecycle.State.STARTED);
            }
            return item;
        }
        return fragment;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(@Nullable Parcelable parcelable, @Nullable ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f5981d.clear();
            this.f5982e.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f5981d.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment fragment = this.f5978a.getFragment(bundle, str);
                    if (fragment != null) {
                        while (this.f5982e.size() <= parseInt) {
                            this.f5982e.add(null);
                        }
                        fragment.setMenuVisibility(false);
                        this.f5982e.set(parseInt, fragment);
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Bad fragment at key ");
                        sb.append(str);
                    }
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Nullable
    public Parcelable saveState() {
        Bundle bundle;
        if (this.f5981d.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.f5981d.size()];
            this.f5981d.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        for (int i2 = 0; i2 < this.f5982e.size(); i2++) {
            Fragment fragment = this.f5982e.get(i2);
            if (fragment != null && fragment.isAdded()) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                this.f5978a.putFragment(bundle, "f" + i2, fragment);
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(@NonNull ViewGroup viewGroup, int i2, @NonNull Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f5983f;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f5979b == 1) {
                    if (this.f5980c == null) {
                        this.f5980c = this.f5978a.beginTransaction();
                    }
                    this.f5980c.setMaxLifecycle(this.f5983f, Lifecycle.State.STARTED);
                } else {
                    this.f5983f.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f5979b == 1) {
                if (this.f5980c == null) {
                    this.f5980c = this.f5978a.beginTransaction();
                }
                this.f5980c.setMaxLifecycle(fragment, Lifecycle.State.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f5983f = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(@NonNull ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    public FragmentStatePagerAdapter(@NonNull FragmentManager fragmentManager, int i2) {
        this.f5980c = null;
        this.f5981d = new ArrayList<>();
        this.f5982e = new ArrayList<>();
        this.f5983f = null;
        this.f5978a = fragmentManager;
        this.f5979b = i2;
    }
}
