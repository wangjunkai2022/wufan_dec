package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class SpecialEffectsController {

    /* renamed from: a  reason: collision with root package name */
    private final ViewGroup f6125a;

    /* renamed from: b  reason: collision with root package name */
    final ArrayList<Operation> f6126b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    final ArrayList<Operation> f6127c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    boolean f6128d = false;

    /* renamed from: e  reason: collision with root package name */
    boolean f6129e = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.SpecialEffectsController$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6134a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f6135b;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            f6135b = iArr;
            try {
                iArr[Operation.LifecycleImpact.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6135b[Operation.LifecycleImpact.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6135b[Operation.LifecycleImpact.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Operation.State.values().length];
            f6134a = iArr2;
            try {
                iArr2[Operation.State.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6134a[Operation.State.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6134a[Operation.State.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6134a[Operation.State.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class FragmentStateManagerOperation extends Operation {
        @NonNull

        /* renamed from: h  reason: collision with root package name */
        private final FragmentStateManager f6136h;

        FragmentStateManagerOperation(@NonNull Operation.State state, @NonNull Operation.LifecycleImpact lifecycleImpact, @NonNull FragmentStateManager fragmentStateManager, @NonNull CancellationSignal cancellationSignal) {
            super(state, lifecycleImpact, fragmentStateManager.k(), cancellationSignal);
            this.f6136h = fragmentStateManager;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void complete() {
            super.complete();
            this.f6136h.m();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        void g() {
            if (c() == Operation.LifecycleImpact.ADDING) {
                Fragment k4 = this.f6136h.k();
                View findFocus = k4.mView.findFocus();
                if (findFocus != null) {
                    k4.setFocusedView(findFocus);
                    if (FragmentManager.y0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("requestFocus: Saved focused view ");
                        sb.append(findFocus);
                        sb.append(" for Fragment ");
                        sb.append(k4);
                    }
                }
                View requireView = getFragment().requireView();
                if (requireView.getParent() == null) {
                    this.f6136h.b();
                    requireView.setAlpha(0.0f);
                }
                if (requireView.getAlpha() == 0.0f && requireView.getVisibility() == 0) {
                    requireView.setVisibility(4);
                }
                requireView.setAlpha(k4.getPostOnViewCreatedAlpha());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SpecialEffectsController(@NonNull ViewGroup viewGroup) {
        this.f6125a = viewGroup;
    }

    private void a(@NonNull Operation.State state, @NonNull Operation.LifecycleImpact lifecycleImpact, @NonNull FragmentStateManager fragmentStateManager) {
        synchronized (this.f6126b) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            Operation h4 = h(fragmentStateManager.k());
            if (h4 != null) {
                h4.f(state, lifecycleImpact);
                return;
            }
            final FragmentStateManagerOperation fragmentStateManagerOperation = new FragmentStateManagerOperation(state, lifecycleImpact, fragmentStateManager, cancellationSignal);
            this.f6126b.add(fragmentStateManagerOperation);
            fragmentStateManagerOperation.a(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController.1
                @Override // java.lang.Runnable
                public void run() {
                    if (SpecialEffectsController.this.f6126b.contains(fragmentStateManagerOperation)) {
                        fragmentStateManagerOperation.getFinalState().applyState(fragmentStateManagerOperation.getFragment().mView);
                    }
                }
            });
            fragmentStateManagerOperation.a(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController.2
                @Override // java.lang.Runnable
                public void run() {
                    SpecialEffectsController.this.f6126b.remove(fragmentStateManagerOperation);
                    SpecialEffectsController.this.f6127c.remove(fragmentStateManagerOperation);
                }
            });
        }
    }

    @Nullable
    private Operation h(@NonNull Fragment fragment) {
        Iterator<Operation> it2 = this.f6126b.iterator();
        while (it2.hasNext()) {
            Operation next = it2.next();
            if (next.getFragment().equals(fragment) && !next.d()) {
                return next;
            }
        }
        return null;
    }

    @Nullable
    private Operation i(@NonNull Fragment fragment) {
        Iterator<Operation> it2 = this.f6127c.iterator();
        while (it2.hasNext()) {
            Operation next = it2.next();
            if (next.getFragment().equals(fragment) && !next.d()) {
                return next;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static SpecialEffectsController m(@NonNull ViewGroup viewGroup, @NonNull FragmentManager fragmentManager) {
        return n(viewGroup, fragmentManager.s0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static SpecialEffectsController n(@NonNull ViewGroup viewGroup, @NonNull SpecialEffectsControllerFactory specialEffectsControllerFactory) {
        int i2 = R.id.special_effects_controller_view_tag;
        Object tag = viewGroup.getTag(i2);
        if (tag instanceof SpecialEffectsController) {
            return (SpecialEffectsController) tag;
        }
        SpecialEffectsController createController = specialEffectsControllerFactory.createController(viewGroup);
        viewGroup.setTag(i2, createController);
        return createController;
    }

    private void p() {
        Iterator<Operation> it2 = this.f6126b.iterator();
        while (it2.hasNext()) {
            Operation next = it2.next();
            if (next.c() == Operation.LifecycleImpact.ADDING) {
                next.f(Operation.State.from(next.getFragment().requireView().getVisibility()), Operation.LifecycleImpact.NONE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@NonNull Operation.State state, @NonNull FragmentStateManager fragmentStateManager) {
        if (FragmentManager.y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SpecialEffectsController: Enqueuing add operation for fragment ");
            sb.append(fragmentStateManager.k());
        }
        a(state, Operation.LifecycleImpact.ADDING, fragmentStateManager);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(@NonNull FragmentStateManager fragmentStateManager) {
        if (FragmentManager.y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SpecialEffectsController: Enqueuing hide operation for fragment ");
            sb.append(fragmentStateManager.k());
        }
        a(Operation.State.GONE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(@NonNull FragmentStateManager fragmentStateManager) {
        if (FragmentManager.y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SpecialEffectsController: Enqueuing remove operation for fragment ");
            sb.append(fragmentStateManager.k());
        }
        a(Operation.State.REMOVED, Operation.LifecycleImpact.REMOVING, fragmentStateManager);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(@NonNull FragmentStateManager fragmentStateManager) {
        if (FragmentManager.y0(2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("SpecialEffectsController: Enqueuing show operation for fragment ");
            sb.append(fragmentStateManager.k());
        }
        a(Operation.State.VISIBLE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    abstract void f(@NonNull List<Operation> list, boolean z3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g() {
        if (this.f6129e) {
            return;
        }
        if (!ViewCompat.isAttachedToWindow(this.f6125a)) {
            j();
            this.f6128d = false;
            return;
        }
        synchronized (this.f6126b) {
            if (!this.f6126b.isEmpty()) {
                ArrayList arrayList = new ArrayList(this.f6127c);
                this.f6127c.clear();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Operation operation = (Operation) it2.next();
                    if (FragmentManager.y0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: Cancelling operation ");
                        sb.append(operation);
                    }
                    operation.b();
                    if (!operation.e()) {
                        this.f6127c.add(operation);
                    }
                }
                p();
                ArrayList arrayList2 = new ArrayList(this.f6126b);
                this.f6126b.clear();
                this.f6127c.addAll(arrayList2);
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    ((Operation) it3.next()).g();
                }
                f(arrayList2, this.f6128d);
                this.f6128d = false;
            }
        }
    }

    @NonNull
    public ViewGroup getContainer() {
        return this.f6125a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        String str;
        String str2;
        boolean isAttachedToWindow = ViewCompat.isAttachedToWindow(this.f6125a);
        synchronized (this.f6126b) {
            p();
            Iterator<Operation> it2 = this.f6126b.iterator();
            while (it2.hasNext()) {
                it2.next().g();
            }
            Iterator it3 = new ArrayList(this.f6127c).iterator();
            while (it3.hasNext()) {
                Operation operation = (Operation) it3.next();
                if (FragmentManager.y0(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("SpecialEffectsController: ");
                    if (isAttachedToWindow) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.f6125a + " is not attached to window. ";
                    }
                    sb.append(str2);
                    sb.append("Cancelling running operation ");
                    sb.append(operation);
                }
                operation.b();
            }
            Iterator it4 = new ArrayList(this.f6126b).iterator();
            while (it4.hasNext()) {
                Operation operation2 = (Operation) it4.next();
                if (FragmentManager.y0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    if (isAttachedToWindow) {
                        str = "";
                    } else {
                        str = "Container " + this.f6125a + " is not attached to window. ";
                    }
                    sb2.append(str);
                    sb2.append("Cancelling pending operation ");
                    sb2.append(operation2);
                }
                operation2.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        if (this.f6129e) {
            this.f6129e = false;
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Operation.LifecycleImpact l(@NonNull FragmentStateManager fragmentStateManager) {
        Operation h4 = h(fragmentStateManager.k());
        Operation.LifecycleImpact c4 = h4 != null ? h4.c() : null;
        Operation i2 = i(fragmentStateManager.k());
        return (i2 == null || !(c4 == null || c4 == Operation.LifecycleImpact.NONE)) ? c4 : i2.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        synchronized (this.f6126b) {
            p();
            this.f6129e = false;
            int size = this.f6126b.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                Operation operation = this.f6126b.get(size);
                Operation.State from = Operation.State.from(operation.getFragment().mView);
                Operation.State finalState = operation.getFinalState();
                Operation.State state = Operation.State.VISIBLE;
                if (finalState == state && from != state) {
                    this.f6129e = operation.getFragment().isPostponed();
                    break;
                }
                size--;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(boolean z3) {
        this.f6128d = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Operation {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private State f6137a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private LifecycleImpact f6138b;
        @NonNull

        /* renamed from: c  reason: collision with root package name */
        private final Fragment f6139c;
        @NonNull

        /* renamed from: d  reason: collision with root package name */
        private final List<Runnable> f6140d = new ArrayList();
        @NonNull

        /* renamed from: e  reason: collision with root package name */
        private final HashSet<CancellationSignal> f6141e = new HashSet<>();

        /* renamed from: f  reason: collision with root package name */
        private boolean f6142f = false;

        /* renamed from: g  reason: collision with root package name */
        private boolean f6143g = false;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public enum LifecycleImpact {
            NONE,
            ADDING,
            REMOVING
        }

        Operation(@NonNull State state, @NonNull LifecycleImpact lifecycleImpact, @NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal) {
            this.f6137a = state;
            this.f6138b = lifecycleImpact;
            this.f6139c = fragment;
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.SpecialEffectsController.Operation.1
                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                public void onCancel() {
                    Operation.this.b();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(@NonNull Runnable runnable) {
            this.f6140d.add(runnable);
        }

        final void b() {
            if (d()) {
                return;
            }
            this.f6142f = true;
            if (this.f6141e.isEmpty()) {
                complete();
                return;
            }
            Iterator it2 = new ArrayList(this.f6141e).iterator();
            while (it2.hasNext()) {
                ((CancellationSignal) it2.next()).cancel();
            }
        }

        @NonNull
        LifecycleImpact c() {
            return this.f6138b;
        }

        @CallSuper
        public void complete() {
            if (this.f6143g) {
                return;
            }
            if (FragmentManager.y0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("SpecialEffectsController: ");
                sb.append(this);
                sb.append(" has called complete.");
            }
            this.f6143g = true;
            for (Runnable runnable : this.f6140d) {
                runnable.run();
            }
        }

        public final void completeSpecialEffect(@NonNull CancellationSignal cancellationSignal) {
            if (this.f6141e.remove(cancellationSignal) && this.f6141e.isEmpty()) {
                complete();
            }
        }

        final boolean d() {
            return this.f6142f;
        }

        final boolean e() {
            return this.f6143g;
        }

        final void f(@NonNull State state, @NonNull LifecycleImpact lifecycleImpact) {
            int i2 = AnonymousClass3.f6135b[lifecycleImpact.ordinal()];
            if (i2 == 1) {
                if (this.f6137a == State.REMOVED) {
                    if (FragmentManager.y0(2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: For fragment ");
                        sb.append(this.f6139c);
                        sb.append(" mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = ");
                        sb.append(this.f6138b);
                        sb.append(" to ADDING.");
                    }
                    this.f6137a = State.VISIBLE;
                    this.f6138b = LifecycleImpact.ADDING;
                }
            } else if (i2 != 2) {
                if (i2 == 3 && this.f6137a != State.REMOVED) {
                    if (FragmentManager.y0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: For fragment ");
                        sb2.append(this.f6139c);
                        sb2.append(" mFinalState = ");
                        sb2.append(this.f6137a);
                        sb2.append(" -> ");
                        sb2.append(state);
                        sb2.append(". ");
                    }
                    this.f6137a = state;
                }
            } else {
                if (FragmentManager.y0(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("SpecialEffectsController: For fragment ");
                    sb3.append(this.f6139c);
                    sb3.append(" mFinalState = ");
                    sb3.append(this.f6137a);
                    sb3.append(" -> REMOVED. mLifecycleImpact  = ");
                    sb3.append(this.f6138b);
                    sb3.append(" to REMOVING.");
                }
                this.f6137a = State.REMOVED;
                this.f6138b = LifecycleImpact.REMOVING;
            }
        }

        void g() {
        }

        @NonNull
        public State getFinalState() {
            return this.f6137a;
        }

        @NonNull
        public final Fragment getFragment() {
            return this.f6139c;
        }

        public final void markStartedSpecialEffect(@NonNull CancellationSignal cancellationSignal) {
            g();
            this.f6141e.add(cancellationSignal);
        }

        @NonNull
        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + this.f6137a + "} {mLifecycleImpact = " + this.f6138b + "} {mFragment = " + this.f6139c + "}";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public enum State {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            /* JADX INFO: Access modifiers changed from: package-private */
            @NonNull
            public static State from(@NonNull View view) {
                if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
                    return INVISIBLE;
                }
                return from(view.getVisibility());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            public void applyState(@NonNull View view) {
                int i2 = AnonymousClass3.f6134a[ordinal()];
                if (i2 == 1) {
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (FragmentManager.y0(2)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("SpecialEffectsController: Removing view ");
                            sb.append(view);
                            sb.append(" from container ");
                            sb.append(viewGroup);
                        }
                        viewGroup.removeView(view);
                    }
                } else if (i2 == 2) {
                    if (FragmentManager.y0(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: Setting view ");
                        sb2.append(view);
                        sb2.append(" to VISIBLE");
                    }
                    view.setVisibility(0);
                } else if (i2 == 3) {
                    if (FragmentManager.y0(2)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("SpecialEffectsController: Setting view ");
                        sb3.append(view);
                        sb3.append(" to GONE");
                    }
                    view.setVisibility(8);
                } else if (i2 != 4) {
                } else {
                    if (FragmentManager.y0(2)) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("SpecialEffectsController: Setting view ");
                        sb4.append(view);
                        sb4.append(" to INVISIBLE");
                    }
                    view.setVisibility(4);
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @NonNull
            public static State from(int i2) {
                if (i2 != 0) {
                    if (i2 != 4) {
                        if (i2 == 8) {
                            return GONE;
                        }
                        throw new IllegalArgumentException("Unknown visibility " + i2);
                    }
                    return INVISIBLE;
                }
                return VISIBLE;
            }
        }
    }
}
