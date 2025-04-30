package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.SpecialEffectsController;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;
import com.alipay.sdk.util.f;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentStateManager {

    /* renamed from: f  reason: collision with root package name */
    private static final String f5962f = "FragmentManager";

    /* renamed from: g  reason: collision with root package name */
    private static final String f5963g = "android:target_req_state";

    /* renamed from: h  reason: collision with root package name */
    private static final String f5964h = "android:target_state";

    /* renamed from: i  reason: collision with root package name */
    private static final String f5965i = "android:view_state";

    /* renamed from: j  reason: collision with root package name */
    private static final String f5966j = "android:view_registry_state";

    /* renamed from: k  reason: collision with root package name */
    private static final String f5967k = "android:user_visible_hint";

    /* renamed from: a  reason: collision with root package name */
    private final FragmentLifecycleCallbacksDispatcher f5968a;

    /* renamed from: b  reason: collision with root package name */
    private final FragmentStore f5969b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final Fragment f5970c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5971d = false;

    /* renamed from: e  reason: collision with root package name */
    private int f5972e = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentStateManager$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass2 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5975a;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f5975a = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5975a[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5975a[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5975a[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull FragmentStore fragmentStore, @NonNull Fragment fragment) {
        this.f5968a = fragmentLifecycleCallbacksDispatcher;
        this.f5969b = fragmentStore;
        this.f5970c = fragment;
    }

    private boolean l(@NonNull View view) {
        if (view == this.f5970c.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.f5970c.mView) {
                return true;
            }
        }
        return false;
    }

    private Bundle q() {
        Bundle bundle = new Bundle();
        this.f5970c.performSaveInstanceState(bundle);
        this.f5968a.j(this.f5970c, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (this.f5970c.mView != null) {
            t();
        }
        if (this.f5970c.mSavedViewState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray(f5965i, this.f5970c.mSavedViewState);
        }
        if (this.f5970c.mSavedViewRegistryState != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle(f5966j, this.f5970c.mSavedViewRegistryState);
        }
        if (!this.f5970c.mUserVisibleHint) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(f5967k, this.f5970c.mUserVisibleHint);
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto ACTIVITY_CREATED: ");
            sb.append(this.f5970c);
        }
        Fragment fragment = this.f5970c;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f5968a;
        Fragment fragment2 = this.f5970c;
        fragmentLifecycleCallbacksDispatcher.a(fragment2, fragment2.mSavedFragmentState, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        int j4 = this.f5969b.j(this.f5970c);
        Fragment fragment = this.f5970c;
        fragment.mContainer.addView(fragment.mView, j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto ATTACHED: ");
            sb.append(this.f5970c);
        }
        Fragment fragment = this.f5970c;
        Fragment fragment2 = fragment.mTarget;
        FragmentStateManager fragmentStateManager = null;
        if (fragment2 != null) {
            FragmentStateManager n4 = this.f5969b.n(fragment2.mWho);
            if (n4 != null) {
                Fragment fragment3 = this.f5970c;
                fragment3.mTargetWho = fragment3.mTarget.mWho;
                fragment3.mTarget = null;
                fragmentStateManager = n4;
            } else {
                throw new IllegalStateException("Fragment " + this.f5970c + " declared target fragment " + this.f5970c.mTarget + " that does not belong to this FragmentManager!");
            }
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (fragmentStateManager = this.f5969b.n(str)) == null) {
                throw new IllegalStateException("Fragment " + this.f5970c + " declared target fragment " + this.f5970c.mTargetWho + " that does not belong to this FragmentManager!");
            }
        }
        if (fragmentStateManager != null && (FragmentManager.Q || fragmentStateManager.k().mState < 1)) {
            fragmentStateManager.m();
        }
        Fragment fragment4 = this.f5970c;
        fragment4.mHost = fragment4.mFragmentManager.o0();
        Fragment fragment5 = this.f5970c;
        fragment5.mParentFragment = fragment5.mFragmentManager.r0();
        this.f5968a.g(this.f5970c, false);
        this.f5970c.performAttach();
        this.f5968a.b(this.f5970c, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        Fragment fragment;
        ViewGroup viewGroup;
        Fragment fragment2 = this.f5970c;
        if (fragment2.mFragmentManager == null) {
            return fragment2.mState;
        }
        int i2 = this.f5972e;
        int i4 = AnonymousClass2.f5975a[fragment2.mMaxState.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                i2 = Math.min(i2, 5);
            } else if (i4 == 3) {
                i2 = Math.min(i2, 1);
            } else if (i4 != 4) {
                i2 = Math.min(i2, -1);
            } else {
                i2 = Math.min(i2, 0);
            }
        }
        Fragment fragment3 = this.f5970c;
        if (fragment3.mFromLayout) {
            if (fragment3.mInLayout) {
                i2 = Math.max(this.f5972e, 2);
                View view = this.f5970c.mView;
                if (view != null && view.getParent() == null) {
                    i2 = Math.min(i2, 2);
                }
            } else {
                i2 = this.f5972e < 4 ? Math.min(i2, fragment3.mState) : Math.min(i2, 1);
            }
        }
        if (!this.f5970c.mAdded) {
            i2 = Math.min(i2, 1);
        }
        SpecialEffectsController.Operation.LifecycleImpact lifecycleImpact = null;
        if (FragmentManager.Q && (viewGroup = (fragment = this.f5970c).mContainer) != null) {
            lifecycleImpact = SpecialEffectsController.m(viewGroup, fragment.getParentFragmentManager()).l(this);
        }
        if (lifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
            i2 = Math.min(i2, 6);
        } else if (lifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.REMOVING) {
            i2 = Math.max(i2, 3);
        } else {
            Fragment fragment4 = this.f5970c;
            if (fragment4.mRemoving) {
                if (fragment4.isInBackStack()) {
                    i2 = Math.min(i2, 1);
                } else {
                    i2 = Math.min(i2, -1);
                }
            }
        }
        Fragment fragment5 = this.f5970c;
        if (fragment5.mDeferStart && fragment5.mState < 5) {
            i2 = Math.min(i2, 4);
        }
        if (FragmentManager.y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("computeExpectedState() of ");
            sb.append(i2);
            sb.append(" for ");
            sb.append(this.f5970c);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto CREATED: ");
            sb.append(this.f5970c);
        }
        Fragment fragment = this.f5970c;
        if (!fragment.mIsCreated) {
            this.f5968a.h(fragment, fragment.mSavedFragmentState, false);
            Fragment fragment2 = this.f5970c;
            fragment2.performCreate(fragment2.mSavedFragmentState);
            FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f5968a;
            Fragment fragment3 = this.f5970c;
            fragmentLifecycleCallbacksDispatcher.c(fragment3, fragment3.mSavedFragmentState, false);
            return;
        }
        fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
        this.f5970c.mState = 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        String str;
        if (this.f5970c.mFromLayout) {
            return;
        }
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto CREATE_VIEW: ");
            sb.append(this.f5970c);
        }
        Fragment fragment = this.f5970c;
        LayoutInflater performGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        ViewGroup viewGroup = null;
        Fragment fragment2 = this.f5970c;
        ViewGroup viewGroup2 = fragment2.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i2 = fragment2.mContainerId;
            if (i2 != 0) {
                if (i2 != -1) {
                    viewGroup = (ViewGroup) fragment2.mFragmentManager.l0().onFindViewById(this.f5970c.mContainerId);
                    if (viewGroup == null) {
                        Fragment fragment3 = this.f5970c;
                        if (!fragment3.mRestored) {
                            try {
                                str = fragment3.getResources().getResourceName(this.f5970c.mContainerId);
                            } catch (Resources.NotFoundException unused) {
                                str = "unknown";
                            }
                            throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f5970c.mContainerId) + " (" + str + ") for fragment " + this.f5970c);
                        }
                    }
                } else {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f5970c + " for a container view with no id");
                }
            }
        }
        Fragment fragment4 = this.f5970c;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(performGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        View view = this.f5970c.mView;
        if (view != null) {
            boolean z3 = false;
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f5970c;
            fragment5.mView.setTag(R.id.fragment_container_view_tag, fragment5);
            if (viewGroup != null) {
                b();
            }
            Fragment fragment6 = this.f5970c;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            if (ViewCompat.isAttachedToWindow(this.f5970c.mView)) {
                ViewCompat.requestApplyInsets(this.f5970c.mView);
            } else {
                final View view2 = this.f5970c.mView;
                view2.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.FragmentStateManager.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view3) {
                        view2.removeOnAttachStateChangeListener(this);
                        ViewCompat.requestApplyInsets(view2);
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view3) {
                    }
                });
            }
            this.f5970c.performViewCreated();
            FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f5968a;
            Fragment fragment7 = this.f5970c;
            fragmentLifecycleCallbacksDispatcher.m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.f5970c.mView.getVisibility();
            float alpha = this.f5970c.mView.getAlpha();
            if (FragmentManager.Q) {
                this.f5970c.setPostOnViewCreatedAlpha(alpha);
                Fragment fragment8 = this.f5970c;
                if (fragment8.mContainer != null && visibility == 0) {
                    View findFocus = fragment8.mView.findFocus();
                    if (findFocus != null) {
                        this.f5970c.setFocusedView(findFocus);
                        if (FragmentManager.y0(2)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("requestFocus: Saved focused view ");
                            sb2.append(findFocus);
                            sb2.append(" for Fragment ");
                            sb2.append(this.f5970c);
                        }
                    }
                    this.f5970c.mView.setAlpha(0.0f);
                }
            } else {
                Fragment fragment9 = this.f5970c;
                if (visibility == 0 && fragment9.mContainer != null) {
                    z3 = true;
                }
                fragment9.mIsNewlyAdded = z3;
            }
        }
        this.f5970c.mState = 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        Fragment f4;
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("movefrom CREATED: ");
            sb.append(this.f5970c);
        }
        Fragment fragment = this.f5970c;
        boolean z3 = true;
        boolean z4 = fragment.mRemoving && !fragment.isInBackStack();
        if (z4 || this.f5969b.p().m(this.f5970c)) {
            FragmentHostCallback<?> fragmentHostCallback = this.f5970c.mHost;
            if (fragmentHostCallback instanceof ViewModelStoreOwner) {
                z3 = this.f5969b.p().i();
            } else if (fragmentHostCallback.getContext() instanceof Activity) {
                z3 = true ^ ((Activity) fragmentHostCallback.getContext()).isChangingConfigurations();
            }
            if (z4 || z3) {
                this.f5969b.p().b(this.f5970c);
            }
            this.f5970c.performDestroy();
            this.f5968a.d(this.f5970c, false);
            for (FragmentStateManager fragmentStateManager : this.f5969b.l()) {
                if (fragmentStateManager != null) {
                    Fragment k4 = fragmentStateManager.k();
                    if (this.f5970c.mWho.equals(k4.mTargetWho)) {
                        k4.mTarget = this.f5970c;
                        k4.mTargetWho = null;
                    }
                }
            }
            Fragment fragment2 = this.f5970c;
            String str = fragment2.mTargetWho;
            if (str != null) {
                fragment2.mTarget = this.f5969b.f(str);
            }
            this.f5969b.r(this);
            return;
        }
        String str2 = this.f5970c.mTargetWho;
        if (str2 != null && (f4 = this.f5969b.f(str2)) != null && f4.mRetainInstance) {
            this.f5970c.mTarget = f4;
        }
        this.f5970c.mState = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        View view;
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("movefrom CREATE_VIEW: ");
            sb.append(this.f5970c);
        }
        Fragment fragment = this.f5970c;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.f5970c.performDestroyView();
        this.f5968a.n(this.f5970c, false);
        Fragment fragment2 = this.f5970c;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.setValue(null);
        this.f5970c.mInLayout = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("movefrom ATTACHED: ");
            sb.append(this.f5970c);
        }
        this.f5970c.performDetach();
        boolean z3 = false;
        this.f5968a.e(this.f5970c, false);
        Fragment fragment = this.f5970c;
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if (fragment.mRemoving && !fragment.isInBackStack()) {
            z3 = true;
        }
        if (z3 || this.f5969b.p().m(this.f5970c)) {
            if (FragmentManager.y0(3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("initState called for fragment: ");
                sb2.append(this.f5970c);
            }
            this.f5970c.initState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        Fragment fragment = this.f5970c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.y0(3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("moveto CREATE_VIEW: ");
                sb.append(this.f5970c);
            }
            Fragment fragment2 = this.f5970c;
            fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.f5970c.mSavedFragmentState);
            View view = this.f5970c.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                Fragment fragment3 = this.f5970c;
                fragment3.mView.setTag(R.id.fragment_container_view_tag, fragment3);
                Fragment fragment4 = this.f5970c;
                if (fragment4.mHidden) {
                    fragment4.mView.setVisibility(8);
                }
                this.f5970c.performViewCreated();
                FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f5968a;
                Fragment fragment5 = this.f5970c;
                fragmentLifecycleCallbacksDispatcher.m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
                this.f5970c.mState = 2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Fragment k() {
        return this.f5970c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f5971d) {
            if (FragmentManager.y0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Ignoring re-entrant call to moveToExpectedState() for ");
                sb.append(k());
                return;
            }
            return;
        }
        try {
            this.f5971d = true;
            while (true) {
                int d4 = d();
                Fragment fragment = this.f5970c;
                int i2 = fragment.mState;
                if (d4 == i2) {
                    if (FragmentManager.Q && fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            SpecialEffectsController m4 = SpecialEffectsController.m(viewGroup, fragment.getParentFragmentManager());
                            if (this.f5970c.mHidden) {
                                m4.c(this);
                            } else {
                                m4.e(this);
                            }
                        }
                        Fragment fragment2 = this.f5970c;
                        FragmentManager fragmentManager = fragment2.mFragmentManager;
                        if (fragmentManager != null) {
                            fragmentManager.x0(fragment2);
                        }
                        Fragment fragment3 = this.f5970c;
                        fragment3.mHiddenChanged = false;
                        fragment3.onHiddenChanged(fragment3.mHidden);
                    }
                    return;
                } else if (d4 > i2) {
                    switch (i2 + 1) {
                        case 0:
                            c();
                            continue;
                        case 1:
                            e();
                            continue;
                        case 2:
                            j();
                            f();
                            continue;
                        case 3:
                            a();
                            continue;
                        case 4:
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                SpecialEffectsController.m(viewGroup2, fragment.getParentFragmentManager()).b(SpecialEffectsController.Operation.State.from(this.f5970c.mView.getVisibility()), this);
                            }
                            this.f5970c.mState = 4;
                            continue;
                        case 5:
                            v();
                            continue;
                        case 6:
                            fragment.mState = 6;
                            continue;
                        case 7:
                            p();
                            continue;
                        default:
                            continue;
                    }
                } else {
                    switch (i2 - 1) {
                        case -1:
                            i();
                            continue;
                        case 0:
                            g();
                            continue;
                        case 1:
                            h();
                            this.f5970c.mState = 1;
                            continue;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            continue;
                        case 3:
                            if (FragmentManager.y0(3)) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("movefrom ACTIVITY_CREATED: ");
                                sb2.append(this.f5970c);
                            }
                            Fragment fragment4 = this.f5970c;
                            if (fragment4.mView != null && fragment4.mSavedViewState == null) {
                                t();
                            }
                            Fragment fragment5 = this.f5970c;
                            if (fragment5.mView != null && (viewGroup3 = fragment5.mContainer) != null) {
                                SpecialEffectsController.m(viewGroup3, fragment5.getParentFragmentManager()).d(this);
                            }
                            this.f5970c.mState = 3;
                            continue;
                        case 4:
                            w();
                            continue;
                        case 5:
                            fragment.mState = 5;
                            continue;
                        case 6:
                            n();
                            continue;
                        default:
                            continue;
                    }
                }
            }
        } finally {
            this.f5971d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("movefrom RESUMED: ");
            sb.append(this.f5970c);
        }
        this.f5970c.performPause();
        this.f5968a.f(this.f5970c, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(@NonNull ClassLoader classLoader) {
        Bundle bundle = this.f5970c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f5970c;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray(f5965i);
        Fragment fragment2 = this.f5970c;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle(f5966j);
        Fragment fragment3 = this.f5970c;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString(f5964h);
        Fragment fragment4 = this.f5970c;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt(f5963g, 0);
        }
        Fragment fragment5 = this.f5970c;
        Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.f5970c.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean(f5967k, true);
        }
        Fragment fragment6 = this.f5970c;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() {
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto RESUMED: ");
            sb.append(this.f5970c);
        }
        View focusedView = this.f5970c.getFocusedView();
        if (focusedView != null && l(focusedView)) {
            boolean requestFocus = focusedView.requestFocus();
            if (FragmentManager.y0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("requestFocus: Restoring focused view ");
                sb2.append(focusedView);
                sb2.append(" ");
                sb2.append(requestFocus ? "succeeded" : f.f9840h);
                sb2.append(" on Fragment ");
                sb2.append(this.f5970c);
                sb2.append(" resulting in focused view ");
                sb2.append(this.f5970c.mView.findFocus());
            }
        }
        this.f5970c.setFocusedView(null);
        this.f5970c.performResume();
        this.f5968a.i(this.f5970c, false);
        Fragment fragment = this.f5970c;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Fragment.SavedState r() {
        Bundle q3;
        if (this.f5970c.mState <= -1 || (q3 = q()) == null) {
            return null;
        }
        return new Fragment.SavedState(q3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public FragmentState s() {
        FragmentState fragmentState = new FragmentState(this.f5970c);
        Fragment fragment = this.f5970c;
        if (fragment.mState > -1 && fragmentState.f5961m == null) {
            Bundle q3 = q();
            fragmentState.f5961m = q3;
            if (this.f5970c.mTargetWho != null) {
                if (q3 == null) {
                    fragmentState.f5961m = new Bundle();
                }
                fragmentState.f5961m.putString(f5964h, this.f5970c.mTargetWho);
                int i2 = this.f5970c.mTargetRequestCode;
                if (i2 != 0) {
                    fragmentState.f5961m.putInt(f5963g, i2);
                }
            }
        } else {
            fragmentState.f5961m = fragment.mSavedFragmentState;
        }
        return fragmentState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t() {
        if (this.f5970c.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f5970c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f5970c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f5970c.mViewLifecycleOwner.e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f5970c.mSavedViewRegistryState = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void u(int i2) {
        this.f5972e = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v() {
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("moveto STARTED: ");
            sb.append(this.f5970c);
        }
        this.f5970c.performStart();
        this.f5968a.k(this.f5970c, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w() {
        if (FragmentManager.y0(3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("movefrom STARTED: ");
            sb.append(this.f5970c);
        }
        this.f5970c.performStop();
        this.f5968a.l(this.f5970c, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull FragmentStore fragmentStore, @NonNull ClassLoader classLoader, @NonNull FragmentFactory fragmentFactory, @NonNull FragmentState fragmentState) {
        this.f5968a = fragmentLifecycleCallbacksDispatcher;
        this.f5969b = fragmentStore;
        Fragment instantiate = fragmentFactory.instantiate(classLoader, fragmentState.f5949a);
        this.f5970c = instantiate;
        Bundle bundle = fragmentState.f5958j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        instantiate.setArguments(fragmentState.f5958j);
        instantiate.mWho = fragmentState.f5950b;
        instantiate.mFromLayout = fragmentState.f5951c;
        instantiate.mRestored = true;
        instantiate.mFragmentId = fragmentState.f5952d;
        instantiate.mContainerId = fragmentState.f5953e;
        instantiate.mTag = fragmentState.f5954f;
        instantiate.mRetainInstance = fragmentState.f5955g;
        instantiate.mRemoving = fragmentState.f5956h;
        instantiate.mDetached = fragmentState.f5957i;
        instantiate.mHidden = fragmentState.f5959k;
        instantiate.mMaxState = Lifecycle.State.values()[fragmentState.f5960l];
        Bundle bundle2 = fragmentState.f5961m;
        if (bundle2 != null) {
            instantiate.mSavedFragmentState = bundle2;
        } else {
            instantiate.mSavedFragmentState = new Bundle();
        }
        if (FragmentManager.y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Instantiated fragment ");
            sb.append(instantiate);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentStateManager(@NonNull FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, @NonNull FragmentStore fragmentStore, @NonNull Fragment fragment, @NonNull FragmentState fragmentState) {
        this.f5968a = fragmentLifecycleCallbacksDispatcher;
        this.f5969b = fragmentStore;
        this.f5970c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = fragmentState.f5961m;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }
}
