package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.view.ViewCompat;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class TransitionManager {

    /* renamed from: c  reason: collision with root package name */
    private static final String f7739c = "TransitionManager";

    /* renamed from: d  reason: collision with root package name */
    private static Transition f7740d = new AutoTransition();

    /* renamed from: e  reason: collision with root package name */
    private static ThreadLocal<WeakReference<ArrayMap<ViewGroup, ArrayList<Transition>>>> f7741e = new ThreadLocal<>();

    /* renamed from: f  reason: collision with root package name */
    static ArrayList<ViewGroup> f7742f = new ArrayList<>();

    /* renamed from: a  reason: collision with root package name */
    private ArrayMap<Scene, Transition> f7743a = new ArrayMap<>();

    /* renamed from: b  reason: collision with root package name */
    private ArrayMap<Scene, ArrayMap<Scene, Transition>> f7744b = new ArrayMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class MultiListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        Transition f7745a;

        /* renamed from: b  reason: collision with root package name */
        ViewGroup f7746b;

        MultiListener(Transition transition, ViewGroup viewGroup) {
            this.f7745a = transition;
            this.f7746b = viewGroup;
        }

        private void a() {
            this.f7746b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f7746b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (TransitionManager.f7742f.remove(this.f7746b)) {
                final ArrayMap<ViewGroup, ArrayList<Transition>> b4 = TransitionManager.b();
                ArrayList<Transition> arrayList = b4.get(this.f7746b);
                ArrayList arrayList2 = null;
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    b4.put(this.f7746b, arrayList);
                } else if (arrayList.size() > 0) {
                    arrayList2 = new ArrayList(arrayList);
                }
                arrayList.add(this.f7745a);
                this.f7745a.addListener(new TransitionListenerAdapter() { // from class: androidx.transition.TransitionManager.MultiListener.1
                    @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                    public void onTransitionEnd(@NonNull Transition transition) {
                        ((ArrayList) b4.get(MultiListener.this.f7746b)).remove(transition);
                        transition.removeListener(this);
                    }
                });
                this.f7745a.g(this.f7746b, false);
                if (arrayList2 != null) {
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((Transition) it2.next()).resume(this.f7746b);
                    }
                }
                this.f7745a.A(this.f7746b);
                return true;
            }
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            TransitionManager.f7742f.remove(this.f7746b);
            ArrayList<Transition> arrayList = TransitionManager.b().get(this.f7746b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<Transition> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    it2.next().resume(this.f7746b);
                }
            }
            this.f7745a.h(true);
        }
    }

    private static void a(Scene scene, Transition transition) {
        ViewGroup sceneRoot = scene.getSceneRoot();
        if (f7742f.contains(sceneRoot)) {
            return;
        }
        Scene currentScene = Scene.getCurrentScene(sceneRoot);
        if (transition == null) {
            if (currentScene != null) {
                currentScene.exit();
            }
            scene.enter();
            return;
        }
        f7742f.add(sceneRoot);
        Transition mo8clone = transition.mo8clone();
        mo8clone.E(sceneRoot);
        if (currentScene != null && currentScene.a()) {
            mo8clone.D(true);
        }
        e(sceneRoot, mo8clone);
        scene.enter();
        d(sceneRoot, mo8clone);
    }

    static ArrayMap<ViewGroup, ArrayList<Transition>> b() {
        ArrayMap<ViewGroup, ArrayList<Transition>> arrayMap;
        WeakReference<ArrayMap<ViewGroup, ArrayList<Transition>>> weakReference = f7741e.get();
        if (weakReference == null || (arrayMap = weakReference.get()) == null) {
            ArrayMap<ViewGroup, ArrayList<Transition>> arrayMap2 = new ArrayMap<>();
            f7741e.set(new WeakReference<>(arrayMap2));
            return arrayMap2;
        }
        return arrayMap;
    }

    public static void beginDelayedTransition(@NonNull ViewGroup viewGroup) {
        beginDelayedTransition(viewGroup, null);
    }

    private Transition c(Scene scene) {
        Scene currentScene;
        ArrayMap<Scene, Transition> arrayMap;
        Transition transition;
        ViewGroup sceneRoot = scene.getSceneRoot();
        if (sceneRoot == null || (currentScene = Scene.getCurrentScene(sceneRoot)) == null || (arrayMap = this.f7744b.get(scene)) == null || (transition = arrayMap.get(currentScene)) == null) {
            Transition transition2 = this.f7743a.get(scene);
            return transition2 != null ? transition2 : f7740d;
        }
        return transition;
    }

    private static void d(ViewGroup viewGroup, Transition transition) {
        if (transition == null || viewGroup == null) {
            return;
        }
        MultiListener multiListener = new MultiListener(transition, viewGroup);
        viewGroup.addOnAttachStateChangeListener(multiListener);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(multiListener);
    }

    private static void e(ViewGroup viewGroup, Transition transition) {
        ArrayList<Transition> arrayList = b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator<Transition> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().pause(viewGroup);
            }
        }
        if (transition != null) {
            transition.g(viewGroup, true);
        }
        Scene currentScene = Scene.getCurrentScene(viewGroup);
        if (currentScene != null) {
            currentScene.exit();
        }
    }

    public static void endTransitions(ViewGroup viewGroup) {
        f7742f.remove(viewGroup);
        ArrayList<Transition> arrayList = b().get(viewGroup);
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            ((Transition) arrayList2.get(size)).o(viewGroup);
        }
    }

    public static void go(@NonNull Scene scene) {
        a(scene, f7740d);
    }

    public void setTransition(@NonNull Scene scene, @Nullable Transition transition) {
        this.f7743a.put(scene, transition);
    }

    public void transitionTo(@NonNull Scene scene) {
        a(scene, c(scene));
    }

    public static void beginDelayedTransition(@NonNull ViewGroup viewGroup, @Nullable Transition transition) {
        if (f7742f.contains(viewGroup) || !ViewCompat.isLaidOut(viewGroup)) {
            return;
        }
        f7742f.add(viewGroup);
        if (transition == null) {
            transition = f7740d;
        }
        Transition mo8clone = transition.mo8clone();
        e(viewGroup, mo8clone);
        Scene.b(viewGroup, null);
        d(viewGroup, mo8clone);
    }

    public static void go(@NonNull Scene scene, @Nullable Transition transition) {
        a(scene, transition);
    }

    public void setTransition(@NonNull Scene scene, @NonNull Scene scene2, @Nullable Transition transition) {
        ArrayMap<Scene, Transition> arrayMap = this.f7744b.get(scene2);
        if (arrayMap == null) {
            arrayMap = new ArrayMap<>();
            this.f7744b.put(scene2, arrayMap);
        }
        arrayMap.put(scene, transition);
    }
}
