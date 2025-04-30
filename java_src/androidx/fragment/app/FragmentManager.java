package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.collection.ArraySet;
import androidx.core.os.CancellationSignal;
import androidx.fragment.R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.FragmentTransition;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public abstract class FragmentManager implements FragmentResultOwner {
    private static boolean O = false;
    static final String P = "FragmentManager";
    public static final int POP_BACK_STACK_INCLUSIVE = 1;
    static boolean Q = true;
    private static final String R = "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE";
    private ActivityResultLauncher<IntentSenderRequest> A;
    private ActivityResultLauncher<String[]> B;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private ArrayList<BackStackRecord> I;
    private ArrayList<Boolean> J;
    private ArrayList<Fragment> K;
    private ArrayList<StartEnterTransitionListener> L;
    private FragmentManagerViewModel M;

    /* renamed from: b  reason: collision with root package name */
    private boolean f5874b;

    /* renamed from: d  reason: collision with root package name */
    ArrayList<BackStackRecord> f5876d;

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<Fragment> f5877e;

    /* renamed from: g  reason: collision with root package name */
    private OnBackPressedDispatcher f5879g;

    /* renamed from: l  reason: collision with root package name */
    private ArrayList<OnBackStackChangedListener> f5884l;

    /* renamed from: r  reason: collision with root package name */
    private FragmentHostCallback<?> f5890r;

    /* renamed from: s  reason: collision with root package name */
    private FragmentContainer f5891s;

    /* renamed from: t  reason: collision with root package name */
    private Fragment f5892t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    Fragment f5893u;

    /* renamed from: z  reason: collision with root package name */
    private ActivityResultLauncher<Intent> f5898z;

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<OpGenerator> f5873a = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final FragmentStore f5875c = new FragmentStore();

    /* renamed from: f  reason: collision with root package name */
    private final FragmentLayoutInflaterFactory f5878f = new FragmentLayoutInflaterFactory(this);

    /* renamed from: h  reason: collision with root package name */
    private final OnBackPressedCallback f5880h = new OnBackPressedCallback(false) { // from class: androidx.fragment.app.FragmentManager.1
        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            FragmentManager.this.v0();
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private final AtomicInteger f5881i = new AtomicInteger();

    /* renamed from: j  reason: collision with root package name */
    private final Map<String, Bundle> f5882j = Collections.synchronizedMap(new HashMap());

    /* renamed from: k  reason: collision with root package name */
    private final Map<String, LifecycleAwareResultListener> f5883k = Collections.synchronizedMap(new HashMap());

    /* renamed from: m  reason: collision with root package name */
    private Map<Fragment, HashSet<CancellationSignal>> f5885m = Collections.synchronizedMap(new HashMap());

    /* renamed from: n  reason: collision with root package name */
    private final FragmentTransition.Callback f5886n = new FragmentTransition.Callback() { // from class: androidx.fragment.app.FragmentManager.2
        @Override // androidx.fragment.app.FragmentTransition.Callback
        public void onComplete(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal) {
            if (cancellationSignal.isCanceled()) {
                return;
            }
            FragmentManager.this.R0(fragment, cancellationSignal);
        }

        @Override // androidx.fragment.app.FragmentTransition.Callback
        public void onStart(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal) {
            FragmentManager.this.f(fragment, cancellationSignal);
        }
    };

    /* renamed from: o  reason: collision with root package name */
    private final FragmentLifecycleCallbacksDispatcher f5887o = new FragmentLifecycleCallbacksDispatcher(this);

    /* renamed from: p  reason: collision with root package name */
    private final CopyOnWriteArrayList<FragmentOnAttachListener> f5888p = new CopyOnWriteArrayList<>();

    /* renamed from: q  reason: collision with root package name */
    int f5889q = -1;

    /* renamed from: v  reason: collision with root package name */
    private FragmentFactory f5894v = null;

    /* renamed from: w  reason: collision with root package name */
    private FragmentFactory f5895w = new FragmentFactory() { // from class: androidx.fragment.app.FragmentManager.3
        @Override // androidx.fragment.app.FragmentFactory
        @NonNull
        public Fragment instantiate(@NonNull ClassLoader classLoader, @NonNull String str) {
            return FragmentManager.this.o0().instantiate(FragmentManager.this.o0().getContext(), str, null);
        }
    };

    /* renamed from: x  reason: collision with root package name */
    private SpecialEffectsControllerFactory f5896x = null;

    /* renamed from: y  reason: collision with root package name */
    private SpecialEffectsControllerFactory f5897y = new SpecialEffectsControllerFactory() { // from class: androidx.fragment.app.FragmentManager.4
        @Override // androidx.fragment.app.SpecialEffectsControllerFactory
        @NonNull
        public SpecialEffectsController createController(@NonNull ViewGroup viewGroup) {
            return new DefaultSpecialEffectsController(viewGroup);
        }
    };
    ArrayDeque<LaunchedFragmentInfo> C = new ArrayDeque<>();
    private Runnable N = new Runnable() { // from class: androidx.fragment.app.FragmentManager.5
        @Override // java.lang.Runnable
        public void run() {
            FragmentManager.this.X(true);
        }
    };

    /* loaded from: classes.dex */
    public interface BackStackEntry {
        @Nullable
        @Deprecated
        CharSequence getBreadCrumbShortTitle();

        @StringRes
        @Deprecated
        int getBreadCrumbShortTitleRes();

        @Nullable
        @Deprecated
        CharSequence getBreadCrumbTitle();

        @StringRes
        @Deprecated
        int getBreadCrumbTitleRes();

        int getId();

        @Nullable
        String getName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class FragmentIntentSenderContract extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        FragmentIntentSenderContract() {
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        @NonNull
        public Intent createIntent(@NonNull Context context, IntentSenderRequest intentSenderRequest) {
            Bundle bundleExtra;
            Intent intent = new Intent(ActivityResultContracts.StartIntentSenderForResult.ACTION_INTENT_SENDER_REQUEST);
            Intent fillInIntent = intentSenderRequest.getFillInIntent();
            if (fillInIntent != null && (bundleExtra = fillInIntent.getBundleExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE)) != null) {
                intent.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundleExtra);
                fillInIntent.removeExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE);
                if (fillInIntent.getBooleanExtra(FragmentManager.R, false)) {
                    intentSenderRequest = new IntentSenderRequest.Builder(intentSenderRequest.getIntentSender()).setFillInIntent(null).setFlags(intentSenderRequest.getFlagsValues(), intentSenderRequest.getFlagsMask()).build();
                }
            }
            intent.putExtra(ActivityResultContracts.StartIntentSenderForResult.EXTRA_INTENT_SENDER_REQUEST, intentSenderRequest);
            if (FragmentManager.y0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("CreateIntent created the following intent: ");
                sb.append(intent);
            }
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        @NonNull
        public ActivityResult parseResult(int i2, @Nullable Intent intent) {
            return new ActivityResult(i2, intent);
        }
    }

    /* loaded from: classes.dex */
    public static abstract class FragmentLifecycleCallbacks {
        @Deprecated
        public void onFragmentActivityCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
        }

        public void onFragmentCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentDetached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentPaused(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentPreAttached(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Context context) {
        }

        public void onFragmentPreCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @Nullable Bundle bundle) {
        }

        public void onFragmentResumed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentSaveInstanceState(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull Bundle bundle) {
        }

        public void onFragmentStarted(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentStopped(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }

        public void onFragmentViewCreated(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment, @NonNull View view, @Nullable Bundle bundle) {
        }

        public void onFragmentViewDestroyed(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment) {
        }
    }

    /* loaded from: classes.dex */
    private static class LifecycleAwareResultListener implements FragmentResultListener {

        /* renamed from: a  reason: collision with root package name */
        private final Lifecycle f5919a;

        /* renamed from: b  reason: collision with root package name */
        private final FragmentResultListener f5920b;

        /* renamed from: c  reason: collision with root package name */
        private final LifecycleEventObserver f5921c;

        LifecycleAwareResultListener(@NonNull Lifecycle lifecycle, @NonNull FragmentResultListener fragmentResultListener, @NonNull LifecycleEventObserver lifecycleEventObserver) {
            this.f5919a = lifecycle;
            this.f5920b = fragmentResultListener;
            this.f5921c = lifecycleEventObserver;
        }

        public boolean isAtLeast(Lifecycle.State state) {
            return this.f5919a.getCurrentState().isAtLeast(state);
        }

        @Override // androidx.fragment.app.FragmentResultListener
        public void onFragmentResult(@NonNull String str, @NonNull Bundle bundle) {
            this.f5920b.onFragmentResult(str, bundle);
        }

        public void removeObserver() {
            this.f5919a.removeObserver(this.f5921c);
        }
    }

    /* loaded from: classes.dex */
    public interface OnBackStackChangedListener {
        @MainThread
        void onBackStackChanged();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface OpGenerator {
        boolean generateOps(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2);
    }

    /* loaded from: classes.dex */
    private class PopBackStackState implements OpGenerator {

        /* renamed from: a  reason: collision with root package name */
        final String f5922a;

        /* renamed from: b  reason: collision with root package name */
        final int f5923b;

        /* renamed from: c  reason: collision with root package name */
        final int f5924c;

        PopBackStackState(@Nullable String str, int i2, int i4) {
            this.f5922a = str;
            this.f5923b = i2;
            this.f5924c = i4;
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public boolean generateOps(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
            Fragment fragment = FragmentManager.this.f5893u;
            if (fragment == null || this.f5923b >= 0 || this.f5922a != null || !fragment.getChildFragmentManager().popBackStackImmediate()) {
                return FragmentManager.this.P0(arrayList, arrayList2, this.f5922a, this.f5923b, this.f5924c);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class StartEnterTransitionListener implements Fragment.OnStartEnterTransitionListener {

        /* renamed from: a  reason: collision with root package name */
        final boolean f5926a;

        /* renamed from: b  reason: collision with root package name */
        final BackStackRecord f5927b;

        /* renamed from: c  reason: collision with root package name */
        private int f5928c;

        StartEnterTransitionListener(@NonNull BackStackRecord backStackRecord, boolean z3) {
            this.f5926a = z3;
            this.f5927b = backStackRecord;
        }

        void a() {
            BackStackRecord backStackRecord = this.f5927b;
            backStackRecord.E.r(backStackRecord, this.f5926a, false, false);
        }

        void b() {
            boolean z3 = this.f5928c > 0;
            for (Fragment fragment : this.f5927b.E.getFragments()) {
                fragment.setOnStartEnterTransitionListener(null);
                if (z3 && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            BackStackRecord backStackRecord = this.f5927b;
            backStackRecord.E.r(backStackRecord, this.f5926a, !z3, true);
        }

        public boolean isReady() {
            return this.f5928c == 0;
        }

        @Override // androidx.fragment.app.Fragment.OnStartEnterTransitionListener
        public void onStartEnterTransition() {
            int i2 = this.f5928c - 1;
            this.f5928c = i2;
            if (i2 != 0) {
                return;
            }
            this.f5927b.E.b1();
        }

        @Override // androidx.fragment.app.Fragment.OnStartEnterTransitionListener
        public void startListening() {
            this.f5928c++;
        }
    }

    private void G0(@NonNull ArraySet<Fragment> arraySet) {
        int size = arraySet.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment valueAt = arraySet.valueAt(i2);
            if (!valueAt.mAdded) {
                View requireView = valueAt.requireView();
                valueAt.mPostponedAlpha = requireView.getAlpha();
                requireView.setAlpha(0.0f);
            }
        }
    }

    private void J(@Nullable Fragment fragment) {
        if (fragment == null || !fragment.equals(c0(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    private boolean O0(@Nullable String str, int i2, int i4) {
        X(false);
        W(true);
        Fragment fragment = this.f5893u;
        if (fragment == null || i2 >= 0 || str != null || !fragment.getChildFragmentManager().popBackStackImmediate()) {
            boolean P0 = P0(this.I, this.J, str, i2, i4);
            if (P0) {
                this.f5874b = true;
                try {
                    T0(this.I, this.J);
                } finally {
                    o();
                }
            }
            k1();
            T();
            this.f5875c.b();
            return P0;
        }
        return true;
    }

    private void Q(int i2) {
        try {
            this.f5874b = true;
            this.f5875c.d(i2);
            I0(i2, false);
            if (Q) {
                for (SpecialEffectsController specialEffectsController : p()) {
                    specialEffectsController.j();
                }
            }
            this.f5874b = false;
            X(true);
        } catch (Throwable th) {
            this.f5874b = false;
            throw th;
        }
    }

    private int Q0(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2, int i2, int i4, @NonNull ArraySet<Fragment> arraySet) {
        int i5 = i4;
        for (int i6 = i4 - 1; i6 >= i2; i6--) {
            BackStackRecord backStackRecord = arrayList.get(i6);
            boolean booleanValue = arrayList2.get(i6).booleanValue();
            if (backStackRecord.m() && !backStackRecord.k(arrayList, i6 + 1, i4)) {
                if (this.L == null) {
                    this.L = new ArrayList<>();
                }
                StartEnterTransitionListener startEnterTransitionListener = new StartEnterTransitionListener(backStackRecord, booleanValue);
                this.L.add(startEnterTransitionListener);
                backStackRecord.n(startEnterTransitionListener);
                if (booleanValue) {
                    backStackRecord.g();
                } else {
                    backStackRecord.h(false);
                }
                i5--;
                if (i6 != i5) {
                    arrayList.remove(i6);
                    arrayList.add(i5, backStackRecord);
                }
                d(arraySet);
            }
        }
        return i5;
    }

    private void T() {
        if (this.H) {
            this.H = false;
            i1();
        }
    }

    private void T0(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() == arrayList2.size()) {
            b0(arrayList, arrayList2);
            int size = arrayList.size();
            int i2 = 0;
            int i4 = 0;
            while (i2 < size) {
                if (!arrayList.get(i2).f6027r) {
                    if (i4 != i2) {
                        a0(arrayList, arrayList2, i4, i2);
                    }
                    i4 = i2 + 1;
                    if (arrayList2.get(i2).booleanValue()) {
                        while (i4 < size && arrayList2.get(i4).booleanValue() && !arrayList.get(i4).f6027r) {
                            i4++;
                        }
                    }
                    a0(arrayList, arrayList2, i2, i4);
                    i2 = i4 - 1;
                }
                i2++;
            }
            if (i4 != size) {
                a0(arrayList, arrayList2, i4, size);
                return;
            }
            return;
        }
        throw new IllegalStateException("Internal error with the back stack records");
    }

    private void U() {
        if (Q) {
            for (SpecialEffectsController specialEffectsController : p()) {
                specialEffectsController.j();
            }
        } else if (!this.f5885m.isEmpty()) {
            for (Fragment fragment : this.f5885m.keySet()) {
                l(fragment);
                J0(fragment);
            }
        }
    }

    private void V0() {
        if (this.f5884l != null) {
            for (int i2 = 0; i2 < this.f5884l.size(); i2++) {
                this.f5884l.get(i2).onBackStackChanged();
            }
        }
    }

    private void W(boolean z3) {
        if (!this.f5874b) {
            if (this.f5890r == null) {
                if (this.G) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            } else if (Looper.myLooper() == this.f5890r.a().getLooper()) {
                if (!z3) {
                    n();
                }
                if (this.I == null) {
                    this.I = new ArrayList<>();
                    this.J = new ArrayList<>();
                }
                this.f5874b = true;
                try {
                    b0(null, null);
                    return;
                } finally {
                    this.f5874b = false;
                }
            } else {
                throw new IllegalStateException("Must be called from main thread of fragment host");
            }
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    private static void Z(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2, int i2, int i4) {
        while (i2 < i4) {
            BackStackRecord backStackRecord = arrayList.get(i2);
            if (arrayList2.get(i2).booleanValue()) {
                backStackRecord.e(-1);
                backStackRecord.h(i2 == i4 + (-1));
            } else {
                backStackRecord.e(1);
                backStackRecord.g();
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int Z0(int i2) {
        if (i2 != 4097) {
            if (i2 != 4099) {
                return i2 != 8194 ? 0 : 4097;
            }
            return 4099;
        }
        return 8194;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01be  */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [int, boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a0(@androidx.annotation.NonNull java.util.ArrayList<androidx.fragment.app.BackStackRecord> r18, @androidx.annotation.NonNull java.util.ArrayList<java.lang.Boolean> r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.a0(java.util.ArrayList, java.util.ArrayList, int, int):void");
    }

    private void b0(@Nullable ArrayList<BackStackRecord> arrayList, @Nullable ArrayList<Boolean> arrayList2) {
        int indexOf;
        int indexOf2;
        ArrayList<StartEnterTransitionListener> arrayList3 = this.L;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            StartEnterTransitionListener startEnterTransitionListener = this.L.get(i2);
            if (arrayList != null && !startEnterTransitionListener.f5926a && (indexOf2 = arrayList.indexOf(startEnterTransitionListener.f5927b)) != -1 && arrayList2 != null && arrayList2.get(indexOf2).booleanValue()) {
                this.L.remove(i2);
                i2--;
                size--;
                startEnterTransitionListener.a();
            } else if (startEnterTransitionListener.isReady() || (arrayList != null && startEnterTransitionListener.f5927b.k(arrayList, 0, arrayList.size()))) {
                this.L.remove(i2);
                i2--;
                size--;
                if (arrayList != null && !startEnterTransitionListener.f5926a && (indexOf = arrayList.indexOf(startEnterTransitionListener.f5927b)) != -1 && arrayList2 != null && arrayList2.get(indexOf).booleanValue()) {
                    startEnterTransitionListener.a();
                } else {
                    startEnterTransitionListener.b();
                }
            }
            i2++;
        }
    }

    private void d(@NonNull ArraySet<Fragment> arraySet) {
        int i2 = this.f5889q;
        if (i2 < 1) {
            return;
        }
        int min = Math.min(i2, 5);
        for (Fragment fragment : this.f5875c.o()) {
            if (fragment.mState < min) {
                K0(fragment, min);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    arraySet.add(fragment);
                }
            }
        }
    }

    @NonNull
    static FragmentManager e0(@NonNull View view) {
        Fragment f02 = f0(view);
        if (f02 != null) {
            if (f02.isAdded()) {
                return f02.getChildFragmentManager();
            }
            throw new IllegalStateException("The Fragment " + f02 + " that owns View " + view + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
        }
        Context context = view.getContext();
        FragmentActivity fragmentActivity = null;
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                break;
            } else if (context instanceof FragmentActivity) {
                fragmentActivity = (FragmentActivity) context;
                break;
            } else {
                context = ((ContextWrapper) context).getBaseContext();
            }
        }
        if (fragmentActivity != null) {
            return fragmentActivity.getSupportFragmentManager();
        }
        throw new IllegalStateException("View " + view + " is not within a subclass of FragmentActivity.");
    }

    @Deprecated
    public static void enableDebugLogging(boolean z3) {
        O = z3;
    }

    @FragmentStateManagerControl
    public static void enableNewStateManager(boolean z3) {
        Q = z3;
    }

    @Nullable
    private static Fragment f0(@NonNull View view) {
        while (view != null) {
            Fragment t02 = t0(view);
            if (t02 != null) {
                return t02;
            }
            ViewParent parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    @NonNull
    public static <F extends Fragment> F findFragment(@NonNull View view) {
        F f4 = (F) f0(view);
        if (f4 != null) {
            return f4;
        }
        throw new IllegalStateException("View " + view + " does not have a Fragment set");
    }

    private void g0() {
        if (Q) {
            for (SpecialEffectsController specialEffectsController : p()) {
                specialEffectsController.k();
            }
        } else if (this.L != null) {
            while (!this.L.isEmpty()) {
                this.L.remove(0).b();
            }
        }
    }

    private void g1(@NonNull Fragment fragment) {
        ViewGroup m02 = m0(fragment);
        if (m02 == null || fragment.getEnterAnim() + fragment.getExitAnim() + fragment.getPopEnterAnim() + fragment.getPopExitAnim() <= 0) {
            return;
        }
        int i2 = R.id.visible_removing_fragment_view_tag;
        if (m02.getTag(i2) == null) {
            m02.setTag(i2, fragment);
        }
        ((Fragment) m02.getTag(i2)).setPopDirection(fragment.getPopDirection());
    }

    private boolean h0(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2) {
        synchronized (this.f5873a) {
            if (this.f5873a.isEmpty()) {
                return false;
            }
            int size = this.f5873a.size();
            boolean z3 = false;
            for (int i2 = 0; i2 < size; i2++) {
                z3 |= this.f5873a.get(i2).generateOps(arrayList, arrayList2);
            }
            this.f5873a.clear();
            this.f5890r.a().removeCallbacks(this.N);
            return z3;
        }
    }

    private void i1() {
        for (FragmentStateManager fragmentStateManager : this.f5875c.l()) {
            N0(fragmentStateManager);
        }
    }

    private void j1(RuntimeException runtimeException) {
        runtimeException.getMessage();
        PrintWriter printWriter = new PrintWriter(new LogWriter(P));
        FragmentHostCallback<?> fragmentHostCallback = this.f5890r;
        try {
            if (fragmentHostCallback != null) {
                fragmentHostCallback.onDump("  ", null, printWriter, new String[0]);
            } else {
                dump("  ", null, printWriter, new String[0]);
            }
        } catch (Exception unused) {
        }
        throw runtimeException;
    }

    @NonNull
    private FragmentManagerViewModel k0(@NonNull Fragment fragment) {
        return this.M.d(fragment);
    }

    private void k1() {
        synchronized (this.f5873a) {
            boolean z3 = true;
            if (!this.f5873a.isEmpty()) {
                this.f5880h.setEnabled(true);
            } else {
                this.f5880h.setEnabled((getBackStackEntryCount() <= 0 || !B0(this.f5892t)) ? false : false);
            }
        }
    }

    private void l(@NonNull Fragment fragment) {
        HashSet<CancellationSignal> hashSet = this.f5885m.get(fragment);
        if (hashSet != null) {
            Iterator<CancellationSignal> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                it2.next().cancel();
            }
            hashSet.clear();
            u(fragment);
            this.f5885m.remove(fragment);
        }
    }

    private ViewGroup m0(@NonNull Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId > 0 && this.f5891s.onHasView()) {
            View onFindViewById = this.f5891s.onFindViewById(fragment.mContainerId);
            if (onFindViewById instanceof ViewGroup) {
                return (ViewGroup) onFindViewById;
            }
        }
        return null;
    }

    private void n() {
        if (isStateSaved()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private void o() {
        this.f5874b = false;
        this.J.clear();
        this.I.clear();
    }

    private Set<SpecialEffectsController> p() {
        HashSet hashSet = new HashSet();
        for (FragmentStateManager fragmentStateManager : this.f5875c.l()) {
            ViewGroup viewGroup = fragmentStateManager.k().mContainer;
            if (viewGroup != null) {
                hashSet.add(SpecialEffectsController.n(viewGroup, s0()));
            }
        }
        return hashSet;
    }

    private Set<SpecialEffectsController> q(@NonNull ArrayList<BackStackRecord> arrayList, int i2, int i4) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i2 < i4) {
            Iterator<FragmentTransaction.Op> it2 = arrayList.get(i2).f6012c.iterator();
            while (it2.hasNext()) {
                Fragment fragment = it2.next().f6030b;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(SpecialEffectsController.m(viewGroup, this));
                }
            }
            i2++;
        }
        return hashSet;
    }

    private void s(@NonNull final Fragment fragment) {
        Animator animator;
        if (fragment.mView != null) {
            FragmentAnim.AnimationOrAnimator c4 = FragmentAnim.c(this.f5890r.getContext(), fragment, !fragment.mHidden, fragment.getPopDirection());
            if (c4 != null && (animator = c4.animator) != null) {
                animator.setTarget(fragment.mView);
                if (fragment.mHidden) {
                    if (fragment.isHideReplaced()) {
                        fragment.setHideReplaced(false);
                    } else {
                        final ViewGroup viewGroup = fragment.mContainer;
                        final View view = fragment.mView;
                        viewGroup.startViewTransition(view);
                        c4.animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.FragmentManager.7
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator2) {
                                viewGroup.endViewTransition(view);
                                animator2.removeListener(this);
                                Fragment fragment2 = fragment;
                                View view2 = fragment2.mView;
                                if (view2 == null || !fragment2.mHidden) {
                                    return;
                                }
                                view2.setVisibility(8);
                            }
                        });
                    }
                } else {
                    fragment.mView.setVisibility(0);
                }
                c4.animator.start();
            } else {
                if (c4 != null) {
                    fragment.mView.startAnimation(c4.animation);
                    c4.animation.start();
                }
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            }
        }
        x0(fragment);
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Fragment t0(@NonNull View view) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    private void u(@NonNull Fragment fragment) {
        fragment.performDestroyView();
        this.f5887o.n(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.setValue(null);
        fragment.mInLayout = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean y0(int i2) {
        return O || Log.isLoggable(P, i2);
    }

    private boolean z0(@NonNull Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A() {
        this.E = false;
        this.F = false;
        this.M.l(false);
        Q(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean A0(@Nullable Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean B(@NonNull Menu menu, @NonNull MenuInflater menuInflater) {
        if (this.f5889q < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z3 = false;
        for (Fragment fragment : this.f5875c.o()) {
            if (fragment != null && A0(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(fragment);
                z3 = true;
            }
        }
        if (this.f5877e != null) {
            for (int i2 = 0; i2 < this.f5877e.size(); i2++) {
                Fragment fragment2 = this.f5877e.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f5877e = arrayList;
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean B0(@Nullable Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.getPrimaryNavigationFragment()) && B0(fragmentManager.f5892t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C() {
        this.G = true;
        X(true);
        U();
        Q(-1);
        this.f5890r = null;
        this.f5891s = null;
        this.f5892t = null;
        if (this.f5879g != null) {
            this.f5880h.remove();
            this.f5879g = null;
        }
        ActivityResultLauncher<Intent> activityResultLauncher = this.f5898z;
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
            this.A.unregister();
            this.B.unregister();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean C0(int i2) {
        return this.f5889q >= i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D() {
        Q(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D0(@NonNull Fragment fragment, @NonNull String[] strArr, int i2) {
        if (this.B != null) {
            this.C.addLast(new LaunchedFragmentInfo(fragment.mWho, i2));
            this.B.launch(strArr);
            return;
        }
        this.f5890r.onRequestPermissionsFromFragment(fragment, strArr, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E() {
        for (Fragment fragment : this.f5875c.o()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void E0(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, @Nullable Bundle bundle) {
        if (this.f5898z != null) {
            this.C.addLast(new LaunchedFragmentInfo(fragment.mWho, i2));
            if (intent != null && bundle != null) {
                intent.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundle);
            }
            this.f5898z.launch(intent);
            return;
        }
        this.f5890r.onStartActivityFromFragment(fragment, intent, i2, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void F(boolean z3) {
        for (Fragment fragment : this.f5875c.o()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void F0(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, @Nullable Intent intent, int i4, int i5, int i6, @Nullable Bundle bundle) throws IntentSender.SendIntentException {
        Intent intent2;
        if (this.A != null) {
            if (bundle != null) {
                if (intent == null) {
                    intent2 = new Intent();
                    intent2.putExtra(R, true);
                } else {
                    intent2 = intent;
                }
                if (y0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("ActivityOptions ");
                    sb.append(bundle);
                    sb.append(" were added to fillInIntent ");
                    sb.append(intent2);
                    sb.append(" for fragment ");
                    sb.append(fragment);
                }
                intent2.putExtra(ActivityResultContracts.StartActivityForResult.EXTRA_ACTIVITY_OPTIONS_BUNDLE, bundle);
            } else {
                intent2 = intent;
            }
            IntentSenderRequest build = new IntentSenderRequest.Builder(intentSender).setFillInIntent(intent2).setFlags(i5, i4).build();
            this.C.addLast(new LaunchedFragmentInfo(fragment.mWho, i2));
            if (y0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Fragment ");
                sb2.append(fragment);
                sb2.append("is launching an IntentSender for result ");
            }
            this.A.launch(build);
            return;
        }
        this.f5890r.onStartIntentSenderFromFragment(fragment, intentSender, i2, intent, i4, i5, i6, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void G(@NonNull Fragment fragment) {
        Iterator<FragmentOnAttachListener> it2 = this.f5888p.iterator();
        while (it2.hasNext()) {
            it2.next().onAttachFragment(this, fragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean H(@NonNull MenuItem menuItem) {
        if (this.f5889q < 1) {
            return false;
        }
        for (Fragment fragment : this.f5875c.o()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void H0(@NonNull Fragment fragment) {
        if (!this.f5875c.c(fragment.mWho)) {
            if (y0(3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Ignoring moving ");
                sb.append(fragment);
                sb.append(" to state ");
                sb.append(this.f5889q);
                sb.append("since it is not added to ");
                sb.append(this);
                return;
            }
            return;
        }
        J0(fragment);
        View view = fragment.mView;
        if (view != null && fragment.mIsNewlyAdded && fragment.mContainer != null) {
            float f4 = fragment.mPostponedAlpha;
            if (f4 > 0.0f) {
                view.setAlpha(f4);
            }
            fragment.mPostponedAlpha = 0.0f;
            fragment.mIsNewlyAdded = false;
            FragmentAnim.AnimationOrAnimator c4 = FragmentAnim.c(this.f5890r.getContext(), fragment, true, fragment.getPopDirection());
            if (c4 != null) {
                Animation animation = c4.animation;
                if (animation != null) {
                    fragment.mView.startAnimation(animation);
                } else {
                    c4.animator.setTarget(fragment.mView);
                    c4.animator.start();
                }
            }
        }
        if (fragment.mHiddenChanged) {
            s(fragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I(@NonNull Menu menu) {
        if (this.f5889q < 1) {
            return;
        }
        for (Fragment fragment : this.f5875c.o()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void I0(int i2, boolean z3) {
        FragmentHostCallback<?> fragmentHostCallback;
        if (this.f5890r == null && i2 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z3 || i2 != this.f5889q) {
            this.f5889q = i2;
            if (Q) {
                this.f5875c.s();
            } else {
                for (Fragment fragment : this.f5875c.o()) {
                    H0(fragment);
                }
                for (FragmentStateManager fragmentStateManager : this.f5875c.l()) {
                    Fragment k4 = fragmentStateManager.k();
                    if (!k4.mIsNewlyAdded) {
                        H0(k4);
                    }
                    if (k4.mRemoving && !k4.isInBackStack()) {
                        this.f5875c.r(fragmentStateManager);
                    }
                }
            }
            i1();
            if (this.D && (fragmentHostCallback = this.f5890r) != null && this.f5889q == 7) {
                fragmentHostCallback.onSupportInvalidateOptionsMenu();
                this.D = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void J0(@NonNull Fragment fragment) {
        K0(fragment, this.f5889q);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K() {
        Q(5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0051, code lost:
        if (r2 != 5) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0150  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void K0(@androidx.annotation.NonNull androidx.fragment.app.Fragment r10, int r11) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.K0(androidx.fragment.app.Fragment, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L(boolean z3) {
        for (Fragment fragment : this.f5875c.o()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L0() {
        if (this.f5890r == null) {
            return;
        }
        this.E = false;
        this.F = false;
        this.M.l(false);
        for (Fragment fragment : this.f5875c.o()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean M(@NonNull Menu menu) {
        boolean z3 = false;
        if (this.f5889q < 1) {
            return false;
        }
        for (Fragment fragment : this.f5875c.o()) {
            if (fragment != null && A0(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z3 = true;
            }
        }
        return z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M0(@NonNull FragmentContainerView fragmentContainerView) {
        View view;
        for (FragmentStateManager fragmentStateManager : this.f5875c.l()) {
            Fragment k4 = fragmentStateManager.k();
            if (k4.mContainerId == fragmentContainerView.getId() && (view = k4.mView) != null && view.getParent() == null) {
                k4.mContainer = fragmentContainerView;
                fragmentStateManager.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N() {
        k1();
        J(this.f5893u);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N0(@NonNull FragmentStateManager fragmentStateManager) {
        Fragment k4 = fragmentStateManager.k();
        if (k4.mDeferStart) {
            if (this.f5874b) {
                this.H = true;
                return;
            }
            k4.mDeferStart = false;
            if (Q) {
                fragmentStateManager.m();
            } else {
                J0(k4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void O() {
        this.E = false;
        this.F = false;
        this.M.l(false);
        Q(7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void P() {
        this.E = false;
        this.F = false;
        this.M.l(false);
        Q(5);
    }

    boolean P0(@NonNull ArrayList<BackStackRecord> arrayList, @NonNull ArrayList<Boolean> arrayList2, @Nullable String str, int i2, int i4) {
        int i5;
        ArrayList<BackStackRecord> arrayList3 = this.f5876d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i2 < 0 && (i4 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f5876d.remove(size));
            arrayList2.add(Boolean.TRUE);
        } else {
            if (str != null || i2 >= 0) {
                int size2 = arrayList3.size() - 1;
                while (size2 >= 0) {
                    BackStackRecord backStackRecord = this.f5876d.get(size2);
                    if ((str != null && str.equals(backStackRecord.getName())) || (i2 >= 0 && i2 == backStackRecord.G)) {
                        break;
                    }
                    size2--;
                }
                if (size2 < 0) {
                    return false;
                }
                if ((i4 & 1) != 0) {
                    while (true) {
                        size2--;
                        if (size2 < 0) {
                            break;
                        }
                        BackStackRecord backStackRecord2 = this.f5876d.get(size2);
                        if (str == null || !str.equals(backStackRecord2.getName())) {
                            if (i2 < 0 || i2 != backStackRecord2.G) {
                                break;
                            }
                        }
                    }
                }
                i5 = size2;
            } else {
                i5 = -1;
            }
            if (i5 == this.f5876d.size() - 1) {
                return false;
            }
            for (int size3 = this.f5876d.size() - 1; size3 > i5; size3--) {
                arrayList.add(this.f5876d.remove(size3));
                arrayList2.add(Boolean.TRUE);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R() {
        this.F = true;
        this.M.l(true);
        Q(4);
    }

    void R0(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal) {
        HashSet<CancellationSignal> hashSet = this.f5885m.get(fragment);
        if (hashSet != null && hashSet.remove(cancellationSignal) && hashSet.isEmpty()) {
            this.f5885m.remove(fragment);
            if (fragment.mState < 5) {
                u(fragment);
                J0(fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void S() {
        Q(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void S0(@NonNull Fragment fragment) {
        if (y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("remove: ");
            sb.append(fragment);
            sb.append(" nesting=");
            sb.append(fragment.mBackStackNesting);
        }
        boolean z3 = !fragment.isInBackStack();
        if (!fragment.mDetached || z3) {
            this.f5875c.t(fragment);
            if (z0(fragment)) {
                this.D = true;
            }
            fragment.mRemoving = true;
            g1(fragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void U0(@NonNull Fragment fragment) {
        this.M.j(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void V(@NonNull OpGenerator opGenerator, boolean z3) {
        if (!z3) {
            if (this.f5890r == null) {
                if (this.G) {
                    throw new IllegalStateException("FragmentManager has been destroyed");
                }
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            n();
        }
        synchronized (this.f5873a) {
            if (this.f5890r == null) {
                if (!z3) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
                return;
            }
            this.f5873a.add(opGenerator);
            b1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void W0(@Nullable Parcelable parcelable, @Nullable FragmentManagerNonConfig fragmentManagerNonConfig) {
        if (this.f5890r instanceof ViewModelStoreOwner) {
            j1(new IllegalStateException("You must use restoreSaveState when your FragmentHostCallback implements ViewModelStoreOwner"));
        }
        this.M.k(fragmentManagerNonConfig);
        X0(parcelable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean X(boolean z3) {
        W(z3);
        boolean z4 = false;
        while (h0(this.I, this.J)) {
            this.f5874b = true;
            try {
                T0(this.I, this.J);
                o();
                z4 = true;
            } catch (Throwable th) {
                o();
                throw th;
            }
        }
        k1();
        T();
        this.f5875c.b();
        return z4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void X0(@Nullable Parcelable parcelable) {
        FragmentStateManager fragmentStateManager;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f5932a == null) {
            return;
        }
        this.f5875c.u();
        Iterator<FragmentState> it2 = fragmentManagerState.f5932a.iterator();
        while (it2.hasNext()) {
            FragmentState next = it2.next();
            if (next != null) {
                Fragment c4 = this.M.c(next.f5950b);
                if (c4 != null) {
                    if (y0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("restoreSaveState: re-attaching retained ");
                        sb.append(c4);
                    }
                    fragmentStateManager = new FragmentStateManager(this.f5887o, this.f5875c, c4, next);
                } else {
                    fragmentStateManager = new FragmentStateManager(this.f5887o, this.f5875c, this.f5890r.getContext().getClassLoader(), getFragmentFactory(), next);
                }
                Fragment k4 = fragmentStateManager.k();
                k4.mFragmentManager = this;
                if (y0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("restoreSaveState: active (");
                    sb2.append(k4.mWho);
                    sb2.append("): ");
                    sb2.append(k4);
                }
                fragmentStateManager.o(this.f5890r.getContext().getClassLoader());
                this.f5875c.q(fragmentStateManager);
                fragmentStateManager.u(this.f5889q);
            }
        }
        for (Fragment fragment : this.M.f()) {
            if (!this.f5875c.c(fragment.mWho)) {
                if (y0(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Discarding retained Fragment ");
                    sb3.append(fragment);
                    sb3.append(" that was not found in the set of active Fragments ");
                    sb3.append(fragmentManagerState.f5932a);
                }
                this.M.j(fragment);
                fragment.mFragmentManager = this;
                FragmentStateManager fragmentStateManager2 = new FragmentStateManager(this.f5887o, this.f5875c, fragment);
                fragmentStateManager2.u(1);
                fragmentStateManager2.m();
                fragment.mRemoving = true;
                fragmentStateManager2.m();
            }
        }
        this.f5875c.v(fragmentManagerState.f5933b);
        if (fragmentManagerState.f5934c != null) {
            this.f5876d = new ArrayList<>(fragmentManagerState.f5934c.length);
            int i2 = 0;
            while (true) {
                BackStackState[] backStackStateArr = fragmentManagerState.f5934c;
                if (i2 >= backStackStateArr.length) {
                    break;
                }
                BackStackRecord instantiate = backStackStateArr[i2].instantiate(this);
                if (y0(2)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("restoreAllState: back stack #");
                    sb4.append(i2);
                    sb4.append(" (index ");
                    sb4.append(instantiate.G);
                    sb4.append("): ");
                    sb4.append(instantiate);
                    PrintWriter printWriter = new PrintWriter(new LogWriter(P));
                    instantiate.dump("  ", printWriter, false);
                    printWriter.close();
                }
                this.f5876d.add(instantiate);
                i2++;
            }
        } else {
            this.f5876d = null;
        }
        this.f5881i.set(fragmentManagerState.f5935d);
        String str = fragmentManagerState.f5936e;
        if (str != null) {
            Fragment c02 = c0(str);
            this.f5893u = c02;
            J(c02);
        }
        ArrayList<String> arrayList = fragmentManagerState.f5937f;
        if (arrayList != null) {
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                Bundle bundle = fragmentManagerState.f5938g.get(i4);
                bundle.setClassLoader(this.f5890r.getContext().getClassLoader());
                this.f5882j.put(arrayList.get(i4), bundle);
            }
        }
        this.C = new ArrayDeque<>(fragmentManagerState.f5939h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Y(@NonNull OpGenerator opGenerator, boolean z3) {
        if (z3 && (this.f5890r == null || this.G)) {
            return;
        }
        W(z3);
        if (opGenerator.generateOps(this.I, this.J)) {
            this.f5874b = true;
            try {
                T0(this.I, this.J);
            } finally {
                o();
            }
        }
        k1();
        T();
        this.f5875c.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public FragmentManagerNonConfig Y0() {
        if (this.f5890r instanceof ViewModelStoreOwner) {
            j1(new IllegalStateException("You cannot use retainNonConfig when your FragmentHostCallback implements ViewModelStoreOwner."));
        }
        return this.M.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Parcelable a1() {
        int size;
        g0();
        U();
        X(true);
        this.E = true;
        this.M.l(true);
        ArrayList<FragmentState> w3 = this.f5875c.w();
        BackStackState[] backStackStateArr = null;
        if (w3.isEmpty()) {
            y0(2);
            return null;
        }
        ArrayList<String> x3 = this.f5875c.x();
        ArrayList<BackStackRecord> arrayList = this.f5876d;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            backStackStateArr = new BackStackState[size];
            for (int i2 = 0; i2 < size; i2++) {
                backStackStateArr[i2] = new BackStackState(this.f5876d.get(i2));
                if (y0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("saveAllState: adding back stack #");
                    sb.append(i2);
                    sb.append(": ");
                    sb.append(this.f5876d.get(i2));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f5932a = w3;
        fragmentManagerState.f5933b = x3;
        fragmentManagerState.f5934c = backStackStateArr;
        fragmentManagerState.f5935d = this.f5881i.get();
        Fragment fragment = this.f5893u;
        if (fragment != null) {
            fragmentManagerState.f5936e = fragment.mWho;
        }
        fragmentManagerState.f5937f.addAll(this.f5882j.keySet());
        fragmentManagerState.f5938g.addAll(this.f5882j.values());
        fragmentManagerState.f5939h = new ArrayList<>(this.C);
        return fragmentManagerState;
    }

    public void addFragmentOnAttachListener(@NonNull FragmentOnAttachListener fragmentOnAttachListener) {
        this.f5888p.add(fragmentOnAttachListener);
    }

    public void addOnBackStackChangedListener(@NonNull OnBackStackChangedListener onBackStackChangedListener) {
        if (this.f5884l == null) {
            this.f5884l = new ArrayList<>();
        }
        this.f5884l.add(onBackStackChangedListener);
    }

    void b1() {
        synchronized (this.f5873a) {
            ArrayList<StartEnterTransitionListener> arrayList = this.L;
            boolean z3 = (arrayList == null || arrayList.isEmpty()) ? false : true;
            boolean z4 = this.f5873a.size() == 1;
            if (z3 || z4) {
                this.f5890r.a().removeCallbacks(this.N);
                this.f5890r.a().post(this.N);
                k1();
            }
        }
    }

    @NonNull
    public FragmentTransaction beginTransaction() {
        return new BackStackRecord(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Fragment c0(@NonNull String str) {
        return this.f5875c.f(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c1(@NonNull Fragment fragment, boolean z3) {
        ViewGroup m02 = m0(fragment);
        if (m02 == null || !(m02 instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) m02).setDrawDisappearingViewsLast(!z3);
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void clearFragmentResult(@NonNull String str) {
        this.f5882j.remove(str);
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void clearFragmentResultListener(@NonNull String str) {
        LifecycleAwareResultListener remove = this.f5883k.remove(str);
        if (remove != null) {
            remove.removeObserver();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Fragment d0(@NonNull String str) {
        return this.f5875c.i(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d1(@NonNull Fragment fragment, @NonNull Lifecycle.State state) {
        if (fragment.equals(c0(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    public void dump(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f5875c.e(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.f5877e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f5877e.get(i2).toString());
            }
        }
        ArrayList<BackStackRecord> arrayList2 = this.f5876d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size; i4++) {
                BackStackRecord backStackRecord = this.f5876d.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(backStackRecord.toString());
                backStackRecord.dump(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f5881i.get());
        synchronized (this.f5873a) {
            int size3 = this.f5873a.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i5 = 0; i5 < size3; i5++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i5);
                    printWriter.print(": ");
                    printWriter.println(this.f5873a.get(i5));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f5890r);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f5891s);
        if (this.f5892t != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f5892t);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f5889q);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.E);
        printWriter.print(" mStopped=");
        printWriter.print(this.F);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.G);
        if (this.D) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.D);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(BackStackRecord backStackRecord) {
        if (this.f5876d == null) {
            this.f5876d = new ArrayList<>();
        }
        this.f5876d.add(backStackRecord);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e1(@Nullable Fragment fragment) {
        if (fragment != null && (!fragment.equals(c0(fragment.mWho)) || (fragment.mHost != null && fragment.mFragmentManager != this))) {
            throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
        }
        Fragment fragment2 = this.f5893u;
        this.f5893u = fragment;
        J(fragment2);
        J(this.f5893u);
    }

    public boolean executePendingTransactions() {
        boolean X = X(true);
        g0();
        return X;
    }

    void f(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal) {
        if (this.f5885m.get(fragment) == null) {
            this.f5885m.put(fragment, new HashSet<>());
        }
        this.f5885m.get(fragment).add(cancellationSignal);
    }

    void f1(@NonNull SpecialEffectsControllerFactory specialEffectsControllerFactory) {
        this.f5896x = specialEffectsControllerFactory;
    }

    @Nullable
    public Fragment findFragmentById(@IdRes int i2) {
        return this.f5875c.g(i2);
    }

    @Nullable
    public Fragment findFragmentByTag(@Nullable String str) {
        return this.f5875c.h(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentStateManager g(@NonNull Fragment fragment) {
        if (y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("add: ");
            sb.append(fragment);
        }
        FragmentStateManager t3 = t(fragment);
        fragment.mFragmentManager = this;
        this.f5875c.q(t3);
        if (!fragment.mDetached) {
            this.f5875c.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (z0(fragment)) {
                this.D = true;
            }
        }
        return t3;
    }

    @NonNull
    public BackStackEntry getBackStackEntryAt(int i2) {
        return this.f5876d.get(i2);
    }

    public int getBackStackEntryCount() {
        ArrayList<BackStackRecord> arrayList = this.f5876d;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    @Nullable
    public Fragment getFragment(@NonNull Bundle bundle, @NonNull String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment c02 = c0(string);
        if (c02 == null) {
            j1(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return c02;
    }

    @NonNull
    public FragmentFactory getFragmentFactory() {
        FragmentFactory fragmentFactory = this.f5894v;
        if (fragmentFactory != null) {
            return fragmentFactory;
        }
        Fragment fragment = this.f5892t;
        if (fragment != null) {
            return fragment.mFragmentManager.getFragmentFactory();
        }
        return this.f5895w;
    }

    @NonNull
    public List<Fragment> getFragments() {
        return this.f5875c.o();
    }

    @Nullable
    public Fragment getPrimaryNavigationFragment() {
        return this.f5893u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(@NonNull Fragment fragment) {
        this.M.a(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h1(@NonNull Fragment fragment) {
        if (y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("show: ");
            sb.append(fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        return this.f5881i.getAndIncrement();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i0() {
        return this.f5875c.k();
    }

    public boolean isDestroyed() {
        return this.G;
    }

    public boolean isStateSaved() {
        return this.E || this.F;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"SyntheticAccessor"})
    public void j(@NonNull FragmentHostCallback<?> fragmentHostCallback, @NonNull FragmentContainer fragmentContainer, @Nullable final Fragment fragment) {
        String str;
        if (this.f5890r == null) {
            this.f5890r = fragmentHostCallback;
            this.f5891s = fragmentContainer;
            this.f5892t = fragment;
            if (fragment != null) {
                addFragmentOnAttachListener(new FragmentOnAttachListener() { // from class: androidx.fragment.app.FragmentManager.8
                    @Override // androidx.fragment.app.FragmentOnAttachListener
                    public void onAttachFragment(@NonNull FragmentManager fragmentManager, @NonNull Fragment fragment2) {
                        fragment.onAttachFragment(fragment2);
                    }
                });
            } else if (fragmentHostCallback instanceof FragmentOnAttachListener) {
                addFragmentOnAttachListener((FragmentOnAttachListener) fragmentHostCallback);
            }
            if (this.f5892t != null) {
                k1();
            }
            if (fragmentHostCallback instanceof OnBackPressedDispatcherOwner) {
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) fragmentHostCallback;
                OnBackPressedDispatcher onBackPressedDispatcher = onBackPressedDispatcherOwner.getOnBackPressedDispatcher();
                this.f5879g = onBackPressedDispatcher;
                LifecycleOwner lifecycleOwner = onBackPressedDispatcherOwner;
                if (fragment != null) {
                    lifecycleOwner = fragment;
                }
                onBackPressedDispatcher.addCallback(lifecycleOwner, this.f5880h);
            }
            if (fragment != null) {
                this.M = fragment.mFragmentManager.k0(fragment);
            } else if (fragmentHostCallback instanceof ViewModelStoreOwner) {
                this.M = FragmentManagerViewModel.e(((ViewModelStoreOwner) fragmentHostCallback).getViewModelStore());
            } else {
                this.M = new FragmentManagerViewModel(false);
            }
            this.M.l(isStateSaved());
            this.f5875c.y(this.M);
            FragmentHostCallback<?> fragmentHostCallback2 = this.f5890r;
            if (fragmentHostCallback2 instanceof ActivityResultRegistryOwner) {
                ActivityResultRegistry activityResultRegistry = ((ActivityResultRegistryOwner) fragmentHostCallback2).getActivityResultRegistry();
                if (fragment != null) {
                    str = fragment.mWho + ":";
                } else {
                    str = "";
                }
                String str2 = "FragmentManager:" + str;
                this.f5898z = activityResultRegistry.register(str2 + "StartActivityForResult", new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.9
                    @Override // androidx.activity.result.ActivityResultCallback
                    public void onActivityResult(ActivityResult activityResult) {
                        LaunchedFragmentInfo pollFirst = FragmentManager.this.C.pollFirst();
                        if (pollFirst == null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("No Activities were started for result for ");
                            sb.append(this);
                            return;
                        }
                        String str3 = pollFirst.f5917a;
                        int i2 = pollFirst.f5918b;
                        Fragment i4 = FragmentManager.this.f5875c.i(str3);
                        if (i4 == null) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Activity result delivered for unknown Fragment ");
                            sb2.append(str3);
                            return;
                        }
                        i4.onActivityResult(i2, activityResult.getResultCode(), activityResult.getData());
                    }
                });
                this.A = activityResultRegistry.register(str2 + "StartIntentSenderForResult", new FragmentIntentSenderContract(), new ActivityResultCallback<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.10
                    @Override // androidx.activity.result.ActivityResultCallback
                    public void onActivityResult(ActivityResult activityResult) {
                        LaunchedFragmentInfo pollFirst = FragmentManager.this.C.pollFirst();
                        if (pollFirst == null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("No IntentSenders were started for ");
                            sb.append(this);
                            return;
                        }
                        String str3 = pollFirst.f5917a;
                        int i2 = pollFirst.f5918b;
                        Fragment i4 = FragmentManager.this.f5875c.i(str3);
                        if (i4 == null) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Intent Sender result delivered for unknown Fragment ");
                            sb2.append(str3);
                            return;
                        }
                        i4.onActivityResult(i2, activityResult.getResultCode(), activityResult.getData());
                    }
                });
                this.B = activityResultRegistry.register(str2 + "RequestPermissions", new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback<Map<String, Boolean>>() { // from class: androidx.fragment.app.FragmentManager.11
                    @Override // androidx.activity.result.ActivityResultCallback
                    @SuppressLint({"SyntheticAccessor"})
                    public void onActivityResult(Map<String, Boolean> map) {
                        String[] strArr = (String[]) map.keySet().toArray(new String[0]);
                        ArrayList arrayList = new ArrayList(map.values());
                        int[] iArr = new int[arrayList.size()];
                        for (int i2 = 0; i2 < arrayList.size(); i2++) {
                            iArr[i2] = ((Boolean) arrayList.get(i2)).booleanValue() ? 0 : -1;
                        }
                        LaunchedFragmentInfo pollFirst = FragmentManager.this.C.pollFirst();
                        if (pollFirst == null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("No permissions were requested for ");
                            sb.append(this);
                            return;
                        }
                        String str3 = pollFirst.f5917a;
                        int i4 = pollFirst.f5918b;
                        Fragment i5 = FragmentManager.this.f5875c.i(str3);
                        if (i5 == null) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Permission request result delivered for unknown Fragment ");
                            sb2.append(str3);
                            return;
                        }
                        i5.onRequestPermissionsResult(i4, strArr, iArr);
                    }
                });
                return;
            }
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<Fragment> j0() {
        return this.f5875c.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(@NonNull Fragment fragment) {
        if (y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("attach: ");
            sb.append(fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f5875c.a(fragment);
            if (y0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("add from attach: ");
                sb2.append(fragment);
            }
            if (z0(fragment)) {
                this.D = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public FragmentContainer l0() {
        return this.f5891s;
    }

    boolean m() {
        boolean z3 = false;
        for (Fragment fragment : this.f5875c.m()) {
            if (fragment != null) {
                z3 = z0(fragment);
                continue;
            }
            if (z3) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public FragmentStore n0() {
        return this.f5875c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public FragmentHostCallback<?> o0() {
        return this.f5890r;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public FragmentTransaction openTransaction() {
        return beginTransaction();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public LayoutInflater.Factory2 p0() {
        return this.f5878f;
    }

    public void popBackStack() {
        V(new PopBackStackState(null, -1, 0), false);
    }

    public boolean popBackStackImmediate() {
        return O0(null, -1, 0);
    }

    public void putFragment(@NonNull Bundle bundle, @NonNull String str, @NonNull Fragment fragment) {
        if (fragment.mFragmentManager != this) {
            j1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.mWho);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public FragmentLifecycleCallbacksDispatcher q0() {
        return this.f5887o;
    }

    void r(@NonNull BackStackRecord backStackRecord, boolean z3, boolean z4, boolean z5) {
        if (z3) {
            backStackRecord.h(z5);
        } else {
            backStackRecord.g();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(backStackRecord);
        arrayList2.add(Boolean.valueOf(z3));
        if (z4 && this.f5889q >= 1) {
            FragmentTransition.A(this.f5890r.getContext(), this.f5891s, arrayList, arrayList2, 0, 1, true, this.f5886n);
        }
        if (z5) {
            I0(this.f5889q, true);
        }
        for (Fragment fragment : this.f5875c.m()) {
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && backStackRecord.j(fragment.mContainerId)) {
                float f4 = fragment.mPostponedAlpha;
                if (f4 > 0.0f) {
                    fragment.mView.setAlpha(f4);
                }
                if (z5) {
                    fragment.mPostponedAlpha = 0.0f;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Fragment r0() {
        return this.f5892t;
    }

    public void registerFragmentLifecycleCallbacks(@NonNull FragmentLifecycleCallbacks fragmentLifecycleCallbacks, boolean z3) {
        this.f5887o.registerFragmentLifecycleCallbacks(fragmentLifecycleCallbacks, z3);
    }

    public void removeFragmentOnAttachListener(@NonNull FragmentOnAttachListener fragmentOnAttachListener) {
        this.f5888p.remove(fragmentOnAttachListener);
    }

    public void removeOnBackStackChangedListener(@NonNull OnBackStackChangedListener onBackStackChangedListener) {
        ArrayList<OnBackStackChangedListener> arrayList = this.f5884l;
        if (arrayList != null) {
            arrayList.remove(onBackStackChangedListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public SpecialEffectsControllerFactory s0() {
        SpecialEffectsControllerFactory specialEffectsControllerFactory = this.f5896x;
        if (specialEffectsControllerFactory != null) {
            return specialEffectsControllerFactory;
        }
        Fragment fragment = this.f5892t;
        if (fragment != null) {
            return fragment.mFragmentManager.s0();
        }
        return this.f5897y;
    }

    @Nullable
    public Fragment.SavedState saveFragmentInstanceState(@NonNull Fragment fragment) {
        FragmentStateManager n4 = this.f5875c.n(fragment.mWho);
        if (n4 == null || !n4.k().equals(fragment)) {
            j1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        return n4.r();
    }

    public void setFragmentFactory(@NonNull FragmentFactory fragmentFactory) {
        this.f5894v = fragmentFactory;
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    public final void setFragmentResult(@NonNull String str, @NonNull Bundle bundle) {
        LifecycleAwareResultListener lifecycleAwareResultListener = this.f5883k.get(str);
        if (lifecycleAwareResultListener != null && lifecycleAwareResultListener.isAtLeast(Lifecycle.State.STARTED)) {
            lifecycleAwareResultListener.onFragmentResult(str, bundle);
        } else {
            this.f5882j.put(str, bundle);
        }
    }

    @Override // androidx.fragment.app.FragmentResultOwner
    @SuppressLint({"SyntheticAccessor"})
    public final void setFragmentResultListener(@NonNull final String str, @NonNull LifecycleOwner lifecycleOwner, @NonNull final FragmentResultListener fragmentResultListener) {
        final Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        if (lifecycle.getCurrentState() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.fragment.app.FragmentManager.6
            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner2, @NonNull Lifecycle.Event event) {
                Bundle bundle;
                if (event == Lifecycle.Event.ON_START && (bundle = (Bundle) FragmentManager.this.f5882j.get(str)) != null) {
                    fragmentResultListener.onFragmentResult(str, bundle);
                    FragmentManager.this.clearFragmentResult(str);
                }
                if (event == Lifecycle.Event.ON_DESTROY) {
                    lifecycle.removeObserver(this);
                    FragmentManager.this.f5883k.remove(str);
                }
            }
        };
        lifecycle.addObserver(lifecycleEventObserver);
        LifecycleAwareResultListener put = this.f5883k.put(str, new LifecycleAwareResultListener(lifecycle, fragmentResultListener, lifecycleEventObserver));
        if (put != null) {
            put.removeObserver();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public FragmentStateManager t(@NonNull Fragment fragment) {
        FragmentStateManager n4 = this.f5875c.n(fragment.mWho);
        if (n4 != null) {
            return n4;
        }
        FragmentStateManager fragmentStateManager = new FragmentStateManager(this.f5887o, this.f5875c, fragment);
        fragmentStateManager.o(this.f5890r.getContext().getClassLoader());
        fragmentStateManager.u(this.f5889q);
        return fragmentStateManager;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f5892t;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f5892t)));
            sb.append("}");
        } else {
            FragmentHostCallback<?> fragmentHostCallback = this.f5890r;
            if (fragmentHostCallback != null) {
                sb.append(fragmentHostCallback.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f5890r)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public ViewModelStore u0(@NonNull Fragment fragment) {
        return this.M.h(fragment);
    }

    public void unregisterFragmentLifecycleCallbacks(@NonNull FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        this.f5887o.unregisterFragmentLifecycleCallbacks(fragmentLifecycleCallbacks);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v(@NonNull Fragment fragment) {
        if (y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("detach: ");
            sb.append(fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (y0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("remove from detach: ");
                sb2.append(fragment);
            }
            this.f5875c.t(fragment);
            if (z0(fragment)) {
                this.D = true;
            }
            g1(fragment);
        }
    }

    void v0() {
        X(true);
        if (this.f5880h.isEnabled()) {
            popBackStackImmediate();
        } else {
            this.f5879g.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w() {
        this.E = false;
        this.F = false;
        this.M.l(false);
        Q(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w0(@NonNull Fragment fragment) {
        if (y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("hide: ");
            sb.append(fragment);
        }
        if (fragment.mHidden) {
            return;
        }
        fragment.mHidden = true;
        fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
        g1(fragment);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x() {
        this.E = false;
        this.F = false;
        this.M.l(false);
        Q(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x0(@NonNull Fragment fragment) {
        if (fragment.mAdded && z0(fragment)) {
            this.D = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(@NonNull Configuration configuration) {
        for (Fragment fragment : this.f5875c.o()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean z(@NonNull MenuItem menuItem) {
        if (this.f5889q < 1) {
            return false;
        }
        for (Fragment fragment : this.f5875c.o()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void popBackStack(@Nullable String str, int i2) {
        V(new PopBackStackState(str, -1, i2), false);
    }

    public boolean popBackStackImmediate(@Nullable String str, int i2) {
        return O0(str, -1, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new Parcelable.Creator<LaunchedFragmentInfo>() { // from class: androidx.fragment.app.FragmentManager.LaunchedFragmentInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LaunchedFragmentInfo[] newArray(int i2) {
                return new LaunchedFragmentInfo[i2];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        String f5917a;

        /* renamed from: b  reason: collision with root package name */
        int f5918b;

        LaunchedFragmentInfo(@NonNull String str, int i2) {
            this.f5917a = str;
            this.f5918b = i2;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f5917a);
            parcel.writeInt(this.f5918b);
        }

        LaunchedFragmentInfo(@NonNull Parcel parcel) {
            this.f5917a = parcel.readString();
            this.f5918b = parcel.readInt();
        }
    }

    public void popBackStack(int i2, int i4) {
        if (i2 >= 0) {
            V(new PopBackStackState(null, i2, i4), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }

    public boolean popBackStackImmediate(int i2, int i4) {
        if (i2 >= 0) {
            return O0(null, i2, i4);
        }
        throw new IllegalArgumentException("Bad id: " + i2);
    }
}
