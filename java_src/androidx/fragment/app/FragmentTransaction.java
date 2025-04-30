package androidx.fragment.app;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class FragmentTransaction {
    static final int A = 7;
    static final int B = 8;
    static final int C = 9;
    static final int D = 10;
    public static final int TRANSIT_ENTER_MASK = 4096;
    public static final int TRANSIT_EXIT_MASK = 8192;
    public static final int TRANSIT_FRAGMENT_CLOSE = 8194;
    public static final int TRANSIT_FRAGMENT_FADE = 4099;
    public static final int TRANSIT_FRAGMENT_OPEN = 4097;
    public static final int TRANSIT_NONE = 0;
    public static final int TRANSIT_UNSET = -1;

    /* renamed from: t  reason: collision with root package name */
    static final int f6003t = 0;

    /* renamed from: u  reason: collision with root package name */
    static final int f6004u = 1;

    /* renamed from: v  reason: collision with root package name */
    static final int f6005v = 2;

    /* renamed from: w  reason: collision with root package name */
    static final int f6006w = 3;

    /* renamed from: x  reason: collision with root package name */
    static final int f6007x = 4;

    /* renamed from: y  reason: collision with root package name */
    static final int f6008y = 5;

    /* renamed from: z  reason: collision with root package name */
    static final int f6009z = 6;

    /* renamed from: a  reason: collision with root package name */
    private final FragmentFactory f6010a;

    /* renamed from: b  reason: collision with root package name */
    private final ClassLoader f6011b;

    /* renamed from: c  reason: collision with root package name */
    ArrayList<Op> f6012c;

    /* renamed from: d  reason: collision with root package name */
    int f6013d;

    /* renamed from: e  reason: collision with root package name */
    int f6014e;

    /* renamed from: f  reason: collision with root package name */
    int f6015f;

    /* renamed from: g  reason: collision with root package name */
    int f6016g;

    /* renamed from: h  reason: collision with root package name */
    int f6017h;

    /* renamed from: i  reason: collision with root package name */
    boolean f6018i;

    /* renamed from: j  reason: collision with root package name */
    boolean f6019j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    String f6020k;

    /* renamed from: l  reason: collision with root package name */
    int f6021l;

    /* renamed from: m  reason: collision with root package name */
    CharSequence f6022m;

    /* renamed from: n  reason: collision with root package name */
    int f6023n;

    /* renamed from: o  reason: collision with root package name */
    CharSequence f6024o;

    /* renamed from: p  reason: collision with root package name */
    ArrayList<String> f6025p;

    /* renamed from: q  reason: collision with root package name */
    ArrayList<String> f6026q;

    /* renamed from: r  reason: collision with root package name */
    boolean f6027r;

    /* renamed from: s  reason: collision with root package name */
    ArrayList<Runnable> f6028s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class Op {

        /* renamed from: a  reason: collision with root package name */
        int f6029a;

        /* renamed from: b  reason: collision with root package name */
        Fragment f6030b;

        /* renamed from: c  reason: collision with root package name */
        int f6031c;

        /* renamed from: d  reason: collision with root package name */
        int f6032d;

        /* renamed from: e  reason: collision with root package name */
        int f6033e;

        /* renamed from: f  reason: collision with root package name */
        int f6034f;

        /* renamed from: g  reason: collision with root package name */
        Lifecycle.State f6035g;

        /* renamed from: h  reason: collision with root package name */
        Lifecycle.State f6036h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Op() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Op(int i2, Fragment fragment) {
            this.f6029a = i2;
            this.f6030b = fragment;
            Lifecycle.State state = Lifecycle.State.RESUMED;
            this.f6035g = state;
            this.f6036h = state;
        }

        Op(int i2, @NonNull Fragment fragment, Lifecycle.State state) {
            this.f6029a = i2;
            this.f6030b = fragment;
            this.f6035g = fragment.mMaxState;
            this.f6036h = state;
        }
    }

    @Deprecated
    public FragmentTransaction() {
        this.f6012c = new ArrayList<>();
        this.f6019j = true;
        this.f6027r = false;
        this.f6010a = null;
        this.f6011b = null;
    }

    @NonNull
    private Fragment c(@NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle) {
        FragmentFactory fragmentFactory = this.f6010a;
        if (fragmentFactory != null) {
            ClassLoader classLoader = this.f6011b;
            if (classLoader != null) {
                Fragment instantiate = fragmentFactory.instantiate(classLoader, cls.getName());
                if (bundle != null) {
                    instantiate.setArguments(bundle);
                }
                return instantiate;
            }
            throw new IllegalStateException("The FragmentManager must be attached to itshost to create a Fragment");
        }
        throw new IllegalStateException("Creating a Fragment requires that this FragmentTransaction was built with FragmentManager.beginTransaction()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentTransaction a(@NonNull ViewGroup viewGroup, @NonNull Fragment fragment, @Nullable String str) {
        fragment.mContainer = viewGroup;
        return add(viewGroup.getId(), fragment, str);
    }

    @NonNull
    public final FragmentTransaction add(@NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle, @Nullable String str) {
        return add(c(cls, bundle), str);
    }

    @NonNull
    public FragmentTransaction addSharedElement(@NonNull View view, @NonNull String str) {
        if (FragmentTransition.B()) {
            String transitionName = ViewCompat.getTransitionName(view);
            if (transitionName != null) {
                if (this.f6025p == null) {
                    this.f6025p = new ArrayList<>();
                    this.f6026q = new ArrayList<>();
                } else if (!this.f6026q.contains(str)) {
                    if (this.f6025p.contains(transitionName)) {
                        throw new IllegalArgumentException("A shared element with the source name '" + transitionName + "' has already been added to the transaction.");
                    }
                } else {
                    throw new IllegalArgumentException("A shared element with the target name '" + str + "' has already been added to the transaction.");
                }
                this.f6025p.add(transitionName);
                this.f6026q.add(str);
            } else {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
        }
        return this;
    }

    @NonNull
    public FragmentTransaction addToBackStack(@Nullable String str) {
        if (this.f6019j) {
            this.f6018i = true;
            this.f6020k = str;
            return this;
        }
        throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    }

    @NonNull
    public FragmentTransaction attach(@NonNull Fragment fragment) {
        b(new Op(7, fragment));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Op op) {
        this.f6012c.add(op);
        op.f6031c = this.f6013d;
        op.f6032d = this.f6014e;
        op.f6033e = this.f6015f;
        op.f6034f = this.f6016g;
    }

    public abstract int commit();

    public abstract int commitAllowingStateLoss();

    public abstract void commitNow();

    public abstract void commitNowAllowingStateLoss();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(int i2, Fragment fragment, @Nullable String str, int i4) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (!cls.isAnonymousClass() && Modifier.isPublic(modifiers) && (!cls.isMemberClass() || Modifier.isStatic(modifiers))) {
            if (str != null) {
                String str2 = fragment.mTag;
                if (str2 != null && !str.equals(str2)) {
                    throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
                }
                fragment.mTag = str;
            }
            if (i2 != 0) {
                if (i2 != -1) {
                    int i5 = fragment.mFragmentId;
                    if (i5 != 0 && i5 != i2) {
                        throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i2);
                    }
                    fragment.mFragmentId = i2;
                    fragment.mContainerId = i2;
                } else {
                    throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
                }
            }
            b(new Op(i4, fragment));
            return;
        }
        throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
    }

    @NonNull
    public FragmentTransaction detach(@NonNull Fragment fragment) {
        b(new Op(6, fragment));
        return this;
    }

    @NonNull
    public FragmentTransaction disallowAddToBackStack() {
        if (!this.f6018i) {
            this.f6019j = false;
            return this;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    @NonNull
    public FragmentTransaction hide(@NonNull Fragment fragment) {
        b(new Op(4, fragment));
        return this;
    }

    public boolean isAddToBackStackAllowed() {
        return this.f6019j;
    }

    public boolean isEmpty() {
        return this.f6012c.isEmpty();
    }

    @NonNull
    public FragmentTransaction remove(@NonNull Fragment fragment) {
        b(new Op(3, fragment));
        return this;
    }

    @NonNull
    public final FragmentTransaction replace(@IdRes int i2, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle) {
        return replace(i2, cls, bundle, null);
    }

    @NonNull
    public FragmentTransaction runOnCommit(@NonNull Runnable runnable) {
        disallowAddToBackStack();
        if (this.f6028s == null) {
            this.f6028s = new ArrayList<>();
        }
        this.f6028s.add(runnable);
        return this;
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setAllowOptimization(boolean z3) {
        return setReorderingAllowed(z3);
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbShortTitle(@StringRes int i2) {
        this.f6023n = i2;
        this.f6024o = null;
        return this;
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbTitle(@StringRes int i2) {
        this.f6021l = i2;
        this.f6022m = null;
        return this;
    }

    @NonNull
    public FragmentTransaction setCustomAnimations(@AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i4) {
        return setCustomAnimations(i2, i4, 0, 0);
    }

    @NonNull
    public FragmentTransaction setMaxLifecycle(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        b(new Op(10, fragment, state));
        return this;
    }

    @NonNull
    public FragmentTransaction setPrimaryNavigationFragment(@Nullable Fragment fragment) {
        b(new Op(8, fragment));
        return this;
    }

    @NonNull
    public FragmentTransaction setReorderingAllowed(boolean z3) {
        this.f6027r = z3;
        return this;
    }

    @NonNull
    public FragmentTransaction setTransition(int i2) {
        this.f6017h = i2;
        return this;
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setTransitionStyle(@StyleRes int i2) {
        return this;
    }

    @NonNull
    public FragmentTransaction show(@NonNull Fragment fragment) {
        b(new Op(5, fragment));
        return this;
    }

    @NonNull
    public FragmentTransaction add(@NonNull Fragment fragment, @Nullable String str) {
        d(0, fragment, str, 1);
        return this;
    }

    @NonNull
    public FragmentTransaction replace(@IdRes int i2, @NonNull Fragment fragment) {
        return replace(i2, fragment, (String) null);
    }

    @NonNull
    public FragmentTransaction setCustomAnimations(@AnimRes @AnimatorRes int i2, @AnimRes @AnimatorRes int i4, @AnimRes @AnimatorRes int i5, @AnimRes @AnimatorRes int i6) {
        this.f6013d = i2;
        this.f6014e = i4;
        this.f6015f = i5;
        this.f6016g = i6;
        return this;
    }

    @NonNull
    public final FragmentTransaction add(@IdRes int i2, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle) {
        return add(i2, c(cls, bundle));
    }

    @NonNull
    public final FragmentTransaction replace(@IdRes int i2, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle, @Nullable String str) {
        return replace(i2, c(cls, bundle), str);
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbShortTitle(@Nullable CharSequence charSequence) {
        this.f6023n = 0;
        this.f6024o = charSequence;
        return this;
    }

    @NonNull
    @Deprecated
    public FragmentTransaction setBreadCrumbTitle(@Nullable CharSequence charSequence) {
        this.f6021l = 0;
        this.f6022m = charSequence;
        return this;
    }

    @NonNull
    public FragmentTransaction add(@IdRes int i2, @NonNull Fragment fragment) {
        d(i2, fragment, null, 1);
        return this;
    }

    @NonNull
    public FragmentTransaction replace(@IdRes int i2, @NonNull Fragment fragment, @Nullable String str) {
        if (i2 != 0) {
            d(i2, fragment, str, 2);
            return this;
        }
        throw new IllegalArgumentException("Must use non-zero containerViewId");
    }

    @NonNull
    public final FragmentTransaction add(@IdRes int i2, @NonNull Class<? extends Fragment> cls, @Nullable Bundle bundle, @Nullable String str) {
        return add(i2, c(cls, bundle), str);
    }

    @NonNull
    public FragmentTransaction add(@IdRes int i2, @NonNull Fragment fragment, @Nullable String str) {
        d(i2, fragment, str, 1);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentTransaction(@NonNull FragmentFactory fragmentFactory, @Nullable ClassLoader classLoader) {
        this.f6012c = new ArrayList<>();
        this.f6019j = true;
        this.f6027r = false;
        this.f6010a = fragmentFactory;
        this.f6011b = classLoader;
    }
}
