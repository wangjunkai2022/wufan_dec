package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.util.Preconditions;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.SpecialEffectsController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
class DefaultSpecialEffectsController extends SpecialEffectsController {

    /* renamed from: androidx.fragment.app.DefaultSpecialEffectsController$10  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass10 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5747a;

        static {
            int[] iArr = new int[SpecialEffectsController.Operation.State.values().length];
            f5747a = iArr;
            try {
                iArr[SpecialEffectsController.Operation.State.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5747a[SpecialEffectsController.Operation.State.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5747a[SpecialEffectsController.Operation.State.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5747a[SpecialEffectsController.Operation.State.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AnimationInfo extends SpecialEffectsInfo {

        /* renamed from: c  reason: collision with root package name */
        private boolean f5778c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f5779d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private FragmentAnim.AnimationOrAnimator f5780e;

        AnimationInfo(@NonNull SpecialEffectsController.Operation operation, @NonNull CancellationSignal cancellationSignal, boolean z3) {
            super(operation, cancellationSignal);
            this.f5779d = false;
            this.f5778c = z3;
        }

        @Nullable
        FragmentAnim.AnimationOrAnimator e(@NonNull Context context) {
            if (this.f5779d) {
                return this.f5780e;
            }
            FragmentAnim.AnimationOrAnimator c4 = FragmentAnim.c(context, b().getFragment(), b().getFinalState() == SpecialEffectsController.Operation.State.VISIBLE, this.f5778c);
            this.f5780e = c4;
            this.f5779d = true;
            return c4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SpecialEffectsInfo {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final SpecialEffectsController.Operation f5781a;
        @NonNull

        /* renamed from: b  reason: collision with root package name */
        private final CancellationSignal f5782b;

        SpecialEffectsInfo(@NonNull SpecialEffectsController.Operation operation, @NonNull CancellationSignal cancellationSignal) {
            this.f5781a = operation;
            this.f5782b = cancellationSignal;
        }

        void a() {
            this.f5781a.completeSpecialEffect(this.f5782b);
        }

        @NonNull
        SpecialEffectsController.Operation b() {
            return this.f5781a;
        }

        @NonNull
        CancellationSignal c() {
            return this.f5782b;
        }

        boolean d() {
            SpecialEffectsController.Operation.State state;
            SpecialEffectsController.Operation.State from = SpecialEffectsController.Operation.State.from(this.f5781a.getFragment().mView);
            SpecialEffectsController.Operation.State finalState = this.f5781a.getFinalState();
            return from == finalState || !(from == (state = SpecialEffectsController.Operation.State.VISIBLE) || finalState == state);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class TransitionInfo extends SpecialEffectsInfo {
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Object f5783c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f5784d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private final Object f5785e;

        TransitionInfo(@NonNull SpecialEffectsController.Operation operation, @NonNull CancellationSignal cancellationSignal, boolean z3, boolean z4) {
            super(operation, cancellationSignal);
            Object exitTransition;
            Object enterTransition;
            boolean allowEnterTransitionOverlap;
            if (operation.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                if (z3) {
                    enterTransition = operation.getFragment().getReenterTransition();
                } else {
                    enterTransition = operation.getFragment().getEnterTransition();
                }
                this.f5783c = enterTransition;
                if (z3) {
                    allowEnterTransitionOverlap = operation.getFragment().getAllowReturnTransitionOverlap();
                } else {
                    allowEnterTransitionOverlap = operation.getFragment().getAllowEnterTransitionOverlap();
                }
                this.f5784d = allowEnterTransitionOverlap;
            } else {
                if (z3) {
                    exitTransition = operation.getFragment().getReturnTransition();
                } else {
                    exitTransition = operation.getFragment().getExitTransition();
                }
                this.f5783c = exitTransition;
                this.f5784d = true;
            }
            if (!z4) {
                this.f5785e = null;
            } else if (z3) {
                this.f5785e = operation.getFragment().getSharedElementReturnTransition();
            } else {
                this.f5785e = operation.getFragment().getSharedElementEnterTransition();
            }
        }

        @Nullable
        private FragmentTransitionImpl f(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.f6038b;
            if (fragmentTransitionImpl == null || !fragmentTransitionImpl.canHandle(obj)) {
                FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.f6039c;
                if (fragmentTransitionImpl2 == null || !fragmentTransitionImpl2.canHandle(obj)) {
                    throw new IllegalArgumentException("Transition " + obj + " for fragment " + b().getFragment() + " is not a valid framework Transition or AndroidX Transition");
                }
                return fragmentTransitionImpl2;
            }
            return fragmentTransitionImpl;
        }

        @Nullable
        FragmentTransitionImpl e() {
            FragmentTransitionImpl f4 = f(this.f5783c);
            FragmentTransitionImpl f5 = f(this.f5785e);
            if (f4 == null || f5 == null || f4 == f5) {
                return f4 != null ? f4 : f5;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + b().getFragment() + " returned Transition " + this.f5783c + " which uses a different Transition  type than its shared element transition " + this.f5785e);
        }

        @Nullable
        Object g() {
            return this.f5783c;
        }

        @Nullable
        public Object getSharedElementTransition() {
            return this.f5785e;
        }

        boolean h() {
            return this.f5784d;
        }

        public boolean hasSharedElementTransition() {
            return this.f5785e != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultSpecialEffectsController(@NonNull ViewGroup viewGroup) {
        super(viewGroup);
    }

    private void v(@NonNull List<AnimationInfo> list, @NonNull List<SpecialEffectsController.Operation> list2, boolean z3, @NonNull Map<SpecialEffectsController.Operation, Boolean> map) {
        final ViewGroup container = getContainer();
        Context context = container.getContext();
        ArrayList arrayList = new ArrayList();
        boolean z4 = false;
        for (final AnimationInfo animationInfo : list) {
            if (animationInfo.d()) {
                animationInfo.a();
            } else {
                FragmentAnim.AnimationOrAnimator e4 = animationInfo.e(context);
                if (e4 == null) {
                    animationInfo.a();
                } else {
                    final Animator animator = e4.animator;
                    if (animator == null) {
                        arrayList.add(animationInfo);
                    } else {
                        final SpecialEffectsController.Operation b4 = animationInfo.b();
                        Fragment fragment = b4.getFragment();
                        if (Boolean.TRUE.equals(map.get(b4))) {
                            if (FragmentManager.y0(2)) {
                                StringBuilder sb = new StringBuilder();
                                sb.append("Ignoring Animator set on ");
                                sb.append(fragment);
                                sb.append(" as this Fragment was involved in a Transition.");
                            }
                            animationInfo.a();
                        } else {
                            final boolean z5 = b4.getFinalState() == SpecialEffectsController.Operation.State.GONE;
                            if (z5) {
                                list2.remove(b4);
                            }
                            final View view = fragment.mView;
                            container.startViewTransition(view);
                            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.2
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator2) {
                                    container.endViewTransition(view);
                                    if (z5) {
                                        b4.getFinalState().applyState(view);
                                    }
                                    animationInfo.a();
                                }
                            });
                            animator.setTarget(view);
                            animator.start();
                            animationInfo.c().setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.3
                                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                                public void onCancel() {
                                    animator.end();
                                }
                            });
                            z4 = true;
                        }
                    }
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            final AnimationInfo animationInfo2 = (AnimationInfo) it2.next();
            SpecialEffectsController.Operation b5 = animationInfo2.b();
            Fragment fragment2 = b5.getFragment();
            if (z3) {
                if (FragmentManager.y0(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Ignoring Animation set on ");
                    sb2.append(fragment2);
                    sb2.append(" as Animations cannot run alongside Transitions.");
                }
                animationInfo2.a();
            } else if (z4) {
                if (FragmentManager.y0(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Ignoring Animation set on ");
                    sb3.append(fragment2);
                    sb3.append(" as Animations cannot run alongside Animators.");
                }
                animationInfo2.a();
            } else {
                final View view2 = fragment2.mView;
                Animation animation = (Animation) Preconditions.checkNotNull(((FragmentAnim.AnimationOrAnimator) Preconditions.checkNotNull(animationInfo2.e(context))).animation);
                if (b5.getFinalState() != SpecialEffectsController.Operation.State.REMOVED) {
                    view2.startAnimation(animation);
                    animationInfo2.a();
                } else {
                    container.startViewTransition(view2);
                    FragmentAnim.EndViewTransitionAnimation endViewTransitionAnimation = new FragmentAnim.EndViewTransitionAnimation(animation, container, view2);
                    endViewTransitionAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.4
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation2) {
                            container.post(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    container.endViewTransition(view2);
                                    animationInfo2.a();
                                }
                            });
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation2) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation2) {
                        }
                    });
                    view2.startAnimation(endViewTransitionAnimation);
                }
                animationInfo2.c().setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.5
                    @Override // androidx.core.os.CancellationSignal.OnCancelListener
                    public void onCancel() {
                        view2.clearAnimation();
                        container.endViewTransition(view2);
                        animationInfo2.a();
                    }
                });
            }
        }
    }

    @NonNull
    private Map<SpecialEffectsController.Operation, Boolean> w(@NonNull List<TransitionInfo> list, @NonNull List<SpecialEffectsController.Operation> list2, final boolean z3, @Nullable final SpecialEffectsController.Operation operation, @Nullable final SpecialEffectsController.Operation operation2) {
        Iterator<TransitionInfo> it2;
        View view;
        Object obj;
        ArrayList<View> arrayList;
        Object obj2;
        ArrayList<View> arrayList2;
        SpecialEffectsController.Operation operation3;
        SpecialEffectsController.Operation operation4;
        View view2;
        Object mergeTransitionsTogether;
        ArrayMap arrayMap;
        ArrayList<View> arrayList3;
        DefaultSpecialEffectsController defaultSpecialEffectsController;
        SpecialEffectsController.Operation operation5;
        ArrayList<View> arrayList4;
        Rect rect;
        FragmentTransitionImpl fragmentTransitionImpl;
        SpecialEffectsController.Operation operation6;
        View view3;
        SharedElementCallback enterTransitionCallback;
        SharedElementCallback exitTransitionCallback;
        ArrayList<String> arrayList5;
        View view4;
        final View view5;
        String o3;
        ArrayList<String> arrayList6;
        DefaultSpecialEffectsController defaultSpecialEffectsController2 = this;
        boolean z4 = z3;
        SpecialEffectsController.Operation operation7 = operation;
        SpecialEffectsController.Operation operation8 = operation2;
        HashMap hashMap = new HashMap();
        final FragmentTransitionImpl fragmentTransitionImpl2 = null;
        for (TransitionInfo transitionInfo : list) {
            if (!transitionInfo.d()) {
                FragmentTransitionImpl e4 = transitionInfo.e();
                if (fragmentTransitionImpl2 == null) {
                    fragmentTransitionImpl2 = e4;
                } else if (e4 != null && fragmentTransitionImpl2 != e4) {
                    throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + transitionInfo.b().getFragment() + " returned Transition " + transitionInfo.g() + " which uses a different Transition  type than other Fragments.");
                }
            }
        }
        if (fragmentTransitionImpl2 == null) {
            for (TransitionInfo transitionInfo2 : list) {
                hashMap.put(transitionInfo2.b(), Boolean.FALSE);
                transitionInfo2.a();
            }
            return hashMap;
        }
        View view6 = new View(getContainer().getContext());
        final Rect rect2 = new Rect();
        ArrayList<View> arrayList7 = new ArrayList<>();
        ArrayList<View> arrayList8 = new ArrayList<>();
        ArrayMap arrayMap2 = new ArrayMap();
        Object obj3 = null;
        View view7 = null;
        boolean z5 = false;
        for (TransitionInfo transitionInfo3 : list) {
            if (!transitionInfo3.hasSharedElementTransition() || operation7 == null || operation8 == null) {
                arrayMap = arrayMap2;
                arrayList3 = arrayList8;
                defaultSpecialEffectsController = defaultSpecialEffectsController2;
                operation5 = operation7;
                arrayList4 = arrayList7;
                rect = rect2;
                fragmentTransitionImpl = fragmentTransitionImpl2;
                operation6 = operation8;
                view3 = view6;
                view7 = view7;
            } else {
                Object wrapTransitionInSet = fragmentTransitionImpl2.wrapTransitionInSet(fragmentTransitionImpl2.cloneTransition(transitionInfo3.getSharedElementTransition()));
                ArrayList<String> sharedElementSourceNames = operation2.getFragment().getSharedElementSourceNames();
                ArrayList<String> sharedElementSourceNames2 = operation.getFragment().getSharedElementSourceNames();
                ArrayList<String> sharedElementTargetNames = operation.getFragment().getSharedElementTargetNames();
                View view8 = view7;
                int i2 = 0;
                while (i2 < sharedElementTargetNames.size()) {
                    int indexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i2));
                    ArrayList<String> arrayList9 = sharedElementTargetNames;
                    if (indexOf != -1) {
                        sharedElementSourceNames.set(indexOf, sharedElementSourceNames2.get(i2));
                    }
                    i2++;
                    sharedElementTargetNames = arrayList9;
                }
                ArrayList<String> sharedElementTargetNames2 = operation2.getFragment().getSharedElementTargetNames();
                if (!z4) {
                    enterTransitionCallback = operation.getFragment().getExitTransitionCallback();
                    exitTransitionCallback = operation2.getFragment().getEnterTransitionCallback();
                } else {
                    enterTransitionCallback = operation.getFragment().getEnterTransitionCallback();
                    exitTransitionCallback = operation2.getFragment().getExitTransitionCallback();
                }
                int i4 = 0;
                for (int size = sharedElementSourceNames.size(); i4 < size; size = size) {
                    arrayMap2.put(sharedElementSourceNames.get(i4), sharedElementTargetNames2.get(i4));
                    i4++;
                }
                ArrayMap arrayMap3 = new ArrayMap();
                defaultSpecialEffectsController2.t(arrayMap3, operation.getFragment().mView);
                arrayMap3.retainAll(sharedElementSourceNames);
                if (enterTransitionCallback != null) {
                    enterTransitionCallback.onMapSharedElements(sharedElementSourceNames, arrayMap3);
                    int size2 = sharedElementSourceNames.size() - 1;
                    while (size2 >= 0) {
                        String str = sharedElementSourceNames.get(size2);
                        View view9 = (View) arrayMap3.get(str);
                        if (view9 == null) {
                            arrayMap2.remove(str);
                            arrayList6 = sharedElementSourceNames;
                        } else {
                            arrayList6 = sharedElementSourceNames;
                            if (!str.equals(ViewCompat.getTransitionName(view9))) {
                                arrayMap2.put(ViewCompat.getTransitionName(view9), (String) arrayMap2.remove(str));
                            }
                        }
                        size2--;
                        sharedElementSourceNames = arrayList6;
                    }
                    arrayList5 = sharedElementSourceNames;
                } else {
                    arrayList5 = sharedElementSourceNames;
                    arrayMap2.retainAll(arrayMap3.keySet());
                }
                final ArrayMap arrayMap4 = new ArrayMap();
                defaultSpecialEffectsController2.t(arrayMap4, operation2.getFragment().mView);
                arrayMap4.retainAll(sharedElementTargetNames2);
                arrayMap4.retainAll(arrayMap2.values());
                if (exitTransitionCallback != null) {
                    exitTransitionCallback.onMapSharedElements(sharedElementTargetNames2, arrayMap4);
                    for (int size3 = sharedElementTargetNames2.size() - 1; size3 >= 0; size3--) {
                        String str2 = sharedElementTargetNames2.get(size3);
                        View view10 = (View) arrayMap4.get(str2);
                        if (view10 == null) {
                            String o4 = FragmentTransition.o(arrayMap2, str2);
                            if (o4 != null) {
                                arrayMap2.remove(o4);
                            }
                        } else if (!str2.equals(ViewCompat.getTransitionName(view10)) && (o3 = FragmentTransition.o(arrayMap2, str2)) != null) {
                            arrayMap2.put(o3, ViewCompat.getTransitionName(view10));
                        }
                    }
                } else {
                    FragmentTransition.w(arrayMap2, arrayMap4);
                }
                defaultSpecialEffectsController2.u(arrayMap3, arrayMap2.keySet());
                defaultSpecialEffectsController2.u(arrayMap4, arrayMap2.values());
                if (arrayMap2.isEmpty()) {
                    arrayList7.clear();
                    arrayList8.clear();
                    operation5 = operation;
                    arrayMap = arrayMap2;
                    arrayList3 = arrayList8;
                    defaultSpecialEffectsController = defaultSpecialEffectsController2;
                    arrayList4 = arrayList7;
                    rect = rect2;
                    view3 = view6;
                    fragmentTransitionImpl = fragmentTransitionImpl2;
                    view7 = view8;
                    obj3 = null;
                    operation6 = operation2;
                } else {
                    FragmentTransition.d(operation2.getFragment(), operation.getFragment(), z4, arrayMap3, true);
                    ArrayList<String> arrayList10 = arrayList5;
                    HashMap hashMap2 = hashMap;
                    View view11 = view6;
                    arrayMap = arrayMap2;
                    ArrayList<View> arrayList11 = arrayList8;
                    OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.6
                        @Override // java.lang.Runnable
                        public void run() {
                            FragmentTransition.d(operation2.getFragment(), operation.getFragment(), z3, arrayMap4, false);
                        }
                    });
                    arrayList7.addAll(arrayMap3.values());
                    if (arrayList10.isEmpty()) {
                        view7 = view8;
                    } else {
                        View view12 = (View) arrayMap3.get(arrayList10.get(0));
                        fragmentTransitionImpl2.setEpicenter(wrapTransitionInSet, view12);
                        view7 = view12;
                    }
                    arrayList3 = arrayList11;
                    arrayList3.addAll(arrayMap4.values());
                    if (sharedElementTargetNames2.isEmpty() || (view5 = (View) arrayMap4.get(sharedElementTargetNames2.get(0))) == null) {
                        defaultSpecialEffectsController = this;
                        view4 = view11;
                    } else {
                        defaultSpecialEffectsController = this;
                        OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.7
                            @Override // java.lang.Runnable
                            public void run() {
                                fragmentTransitionImpl2.f(view5, rect2);
                            }
                        });
                        view4 = view11;
                        z5 = true;
                    }
                    fragmentTransitionImpl2.setSharedElementTargets(wrapTransitionInSet, view4, arrayList7);
                    arrayList4 = arrayList7;
                    rect = rect2;
                    view3 = view4;
                    fragmentTransitionImpl = fragmentTransitionImpl2;
                    fragmentTransitionImpl2.scheduleRemoveTargets(wrapTransitionInSet, null, null, null, null, wrapTransitionInSet, arrayList3);
                    Boolean bool = Boolean.TRUE;
                    operation5 = operation;
                    hashMap = hashMap2;
                    hashMap.put(operation5, bool);
                    operation6 = operation2;
                    hashMap.put(operation6, bool);
                    obj3 = wrapTransitionInSet;
                }
            }
            z4 = z3;
            arrayList7 = arrayList4;
            defaultSpecialEffectsController2 = defaultSpecialEffectsController;
            rect2 = rect;
            view6 = view3;
            operation8 = operation6;
            arrayMap2 = arrayMap;
            arrayList8 = arrayList3;
            operation7 = operation5;
            fragmentTransitionImpl2 = fragmentTransitionImpl;
        }
        View view13 = view7;
        ArrayMap arrayMap5 = arrayMap2;
        ArrayList<View> arrayList12 = arrayList8;
        DefaultSpecialEffectsController defaultSpecialEffectsController3 = defaultSpecialEffectsController2;
        SpecialEffectsController.Operation operation9 = operation7;
        ArrayList<View> arrayList13 = arrayList7;
        Rect rect3 = rect2;
        FragmentTransitionImpl fragmentTransitionImpl3 = fragmentTransitionImpl2;
        SpecialEffectsController.Operation operation10 = operation8;
        View view14 = view6;
        ArrayList arrayList14 = new ArrayList();
        Iterator<TransitionInfo> it3 = list.iterator();
        Object obj4 = null;
        Object obj5 = null;
        while (it3.hasNext()) {
            TransitionInfo next = it3.next();
            if (next.d()) {
                hashMap.put(next.b(), Boolean.FALSE);
                next.a();
            } else {
                Object cloneTransition = fragmentTransitionImpl3.cloneTransition(next.g());
                SpecialEffectsController.Operation b4 = next.b();
                boolean z6 = obj3 != null && (b4 == operation9 || b4 == operation10);
                if (cloneTransition == null) {
                    if (!z6) {
                        hashMap.put(b4, Boolean.FALSE);
                        next.a();
                    }
                    arrayList2 = arrayList12;
                    arrayList = arrayList13;
                    it2 = it3;
                    view = view14;
                    mergeTransitionsTogether = obj4;
                    operation3 = operation10;
                    view2 = view13;
                } else {
                    it2 = it3;
                    final ArrayList<View> arrayList15 = new ArrayList<>();
                    Object obj6 = obj4;
                    defaultSpecialEffectsController3.s(arrayList15, b4.getFragment().mView);
                    if (z6) {
                        if (b4 == operation9) {
                            arrayList15.removeAll(arrayList13);
                        } else {
                            arrayList15.removeAll(arrayList12);
                        }
                    }
                    if (arrayList15.isEmpty()) {
                        fragmentTransitionImpl3.addTarget(cloneTransition, view14);
                        arrayList2 = arrayList12;
                        arrayList = arrayList13;
                        view = view14;
                        operation4 = b4;
                        obj2 = obj5;
                        operation3 = operation10;
                        obj = obj6;
                    } else {
                        fragmentTransitionImpl3.addTargets(cloneTransition, arrayList15);
                        view = view14;
                        obj = obj6;
                        arrayList = arrayList13;
                        obj2 = obj5;
                        arrayList2 = arrayList12;
                        operation3 = operation10;
                        fragmentTransitionImpl3.scheduleRemoveTargets(cloneTransition, cloneTransition, arrayList15, null, null, null, null);
                        if (b4.getFinalState() == SpecialEffectsController.Operation.State.GONE) {
                            operation4 = b4;
                            list2.remove(operation4);
                            ArrayList<View> arrayList16 = new ArrayList<>(arrayList15);
                            arrayList16.remove(operation4.getFragment().mView);
                            fragmentTransitionImpl3.scheduleHideFragmentView(cloneTransition, operation4.getFragment().mView, arrayList16);
                            OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.8
                                @Override // java.lang.Runnable
                                public void run() {
                                    FragmentTransition.z(arrayList15, 4);
                                }
                            });
                        } else {
                            operation4 = b4;
                        }
                    }
                    if (operation4.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                        arrayList14.addAll(arrayList15);
                        if (z5) {
                            fragmentTransitionImpl3.setEpicenter(cloneTransition, rect3);
                        }
                        view2 = view13;
                    } else {
                        view2 = view13;
                        fragmentTransitionImpl3.setEpicenter(cloneTransition, view2);
                    }
                    hashMap.put(operation4, Boolean.TRUE);
                    if (next.h()) {
                        obj5 = fragmentTransitionImpl3.mergeTransitionsTogether(obj2, cloneTransition, null);
                        mergeTransitionsTogether = obj;
                    } else {
                        mergeTransitionsTogether = fragmentTransitionImpl3.mergeTransitionsTogether(obj, cloneTransition, null);
                        obj5 = obj2;
                    }
                }
                operation10 = operation3;
                obj4 = mergeTransitionsTogether;
                view13 = view2;
                view14 = view;
                arrayList13 = arrayList;
                arrayList12 = arrayList2;
                it3 = it2;
            }
        }
        ArrayList<View> arrayList17 = arrayList12;
        ArrayList<View> arrayList18 = arrayList13;
        SpecialEffectsController.Operation operation11 = operation10;
        Object mergeTransitionsInSequence = fragmentTransitionImpl3.mergeTransitionsInSequence(obj5, obj4, obj3);
        for (final TransitionInfo transitionInfo4 : list) {
            if (!transitionInfo4.d()) {
                Object g4 = transitionInfo4.g();
                SpecialEffectsController.Operation b5 = transitionInfo4.b();
                boolean z7 = obj3 != null && (b5 == operation9 || b5 == operation11);
                if (g4 != null || z7) {
                    if (!ViewCompat.isLaidOut(getContainer())) {
                        if (FragmentManager.y0(2)) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("SpecialEffectsController: Container ");
                            sb.append(getContainer());
                            sb.append(" has not been laid out. Completing operation ");
                            sb.append(b5);
                        }
                        transitionInfo4.a();
                    } else {
                        fragmentTransitionImpl3.setListenerForTransitionEnd(transitionInfo4.b().getFragment(), mergeTransitionsInSequence, transitionInfo4.c(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.9
                            @Override // java.lang.Runnable
                            public void run() {
                                transitionInfo4.a();
                            }
                        });
                    }
                }
            }
        }
        if (ViewCompat.isLaidOut(getContainer())) {
            FragmentTransition.z(arrayList14, 4);
            ArrayList<String> h4 = fragmentTransitionImpl3.h(arrayList17);
            fragmentTransitionImpl3.beginDelayedTransition(getContainer(), mergeTransitionsInSequence);
            fragmentTransitionImpl3.k(getContainer(), arrayList18, arrayList17, h4, arrayMap5);
            FragmentTransition.z(arrayList14, 0);
            fragmentTransitionImpl3.swapSharedElementTargets(obj3, arrayList18, arrayList17);
            return hashMap;
        }
        return hashMap;
    }

    @Override // androidx.fragment.app.SpecialEffectsController
    void f(@NonNull List<SpecialEffectsController.Operation> list, boolean z3) {
        SpecialEffectsController.Operation operation = null;
        SpecialEffectsController.Operation operation2 = null;
        for (SpecialEffectsController.Operation operation3 : list) {
            SpecialEffectsController.Operation.State from = SpecialEffectsController.Operation.State.from(operation3.getFragment().mView);
            int i2 = AnonymousClass10.f5747a[operation3.getFinalState().ordinal()];
            if (i2 != 1 && i2 != 2 && i2 != 3) {
                if (i2 == 4 && from != SpecialEffectsController.Operation.State.VISIBLE) {
                    operation2 = operation3;
                }
            } else if (from == SpecialEffectsController.Operation.State.VISIBLE && operation == null) {
                operation = operation3;
            }
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        final ArrayList<SpecialEffectsController.Operation> arrayList3 = new ArrayList(list);
        for (final SpecialEffectsController.Operation operation4 : list) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            operation4.markStartedSpecialEffect(cancellationSignal);
            arrayList.add(new AnimationInfo(operation4, cancellationSignal, z3));
            CancellationSignal cancellationSignal2 = new CancellationSignal();
            operation4.markStartedSpecialEffect(cancellationSignal2);
            boolean z4 = false;
            if (z3) {
                if (operation4 != operation) {
                    arrayList2.add(new TransitionInfo(operation4, cancellationSignal2, z3, z4));
                    operation4.a(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (arrayList3.contains(operation4)) {
                                arrayList3.remove(operation4);
                                DefaultSpecialEffectsController.this.r(operation4);
                            }
                        }
                    });
                }
                z4 = true;
                arrayList2.add(new TransitionInfo(operation4, cancellationSignal2, z3, z4));
                operation4.a(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (arrayList3.contains(operation4)) {
                            arrayList3.remove(operation4);
                            DefaultSpecialEffectsController.this.r(operation4);
                        }
                    }
                });
            } else {
                if (operation4 != operation2) {
                    arrayList2.add(new TransitionInfo(operation4, cancellationSignal2, z3, z4));
                    operation4.a(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (arrayList3.contains(operation4)) {
                                arrayList3.remove(operation4);
                                DefaultSpecialEffectsController.this.r(operation4);
                            }
                        }
                    });
                }
                z4 = true;
                arrayList2.add(new TransitionInfo(operation4, cancellationSignal2, z3, z4));
                operation4.a(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (arrayList3.contains(operation4)) {
                            arrayList3.remove(operation4);
                            DefaultSpecialEffectsController.this.r(operation4);
                        }
                    }
                });
            }
        }
        Map<SpecialEffectsController.Operation, Boolean> w3 = w(arrayList2, arrayList3, z3, operation, operation2);
        v(arrayList, arrayList3, w3.containsValue(Boolean.TRUE), w3);
        for (SpecialEffectsController.Operation operation5 : arrayList3) {
            r(operation5);
        }
        arrayList3.clear();
    }

    void r(@NonNull SpecialEffectsController.Operation operation) {
        operation.getFinalState().applyState(operation.getFragment().mView);
    }

    void s(ArrayList<View> arrayList, View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (ViewGroupCompat.isTransitionGroup(viewGroup)) {
                if (arrayList.contains(view)) {
                    return;
                }
                arrayList.add(viewGroup);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt.getVisibility() == 0) {
                    s(arrayList, childAt);
                }
            }
        } else if (!arrayList.contains(view)) {
            arrayList.add(view);
        }
    }

    void t(Map<String, View> map, @NonNull View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            map.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt.getVisibility() == 0) {
                    t(map, childAt);
                }
            }
        }
    }

    void u(@NonNull ArrayMap<String, View> arrayMap, @NonNull Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it2 = arrayMap.entrySet().iterator();
        while (it2.hasNext()) {
            if (!collection.contains(ViewCompat.getTransitionName(it2.next().getValue()))) {
                it2.remove();
            }
        }
    }
}
