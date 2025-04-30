package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
/* loaded from: classes2.dex */
public abstract class Transition implements Cloneable {
    private static final String H = "Transition";
    static final boolean I = false;
    private static final int J = 1;
    private static final int K = 4;
    public static final int MATCH_ID = 3;
    public static final int MATCH_INSTANCE = 1;
    public static final int MATCH_ITEM_ID = 4;
    public static final int MATCH_NAME = 2;

    /* renamed from: n0  reason: collision with root package name */
    private static final String f7695n0 = "instance";

    /* renamed from: o0  reason: collision with root package name */
    private static final String f7696o0 = "name";

    /* renamed from: p0  reason: collision with root package name */
    private static final String f7697p0 = "id";

    /* renamed from: q0  reason: collision with root package name */
    private static final String f7698q0 = "itemId";

    /* renamed from: r0  reason: collision with root package name */
    private static final int[] f7699r0 = {2, 1, 3, 4};

    /* renamed from: s0  reason: collision with root package name */
    private static final PathMotion f7700s0 = new PathMotion() { // from class: androidx.transition.Transition.1
        @Override // androidx.transition.PathMotion
        public Path getPath(float f4, float f5, float f6, float f7) {
            Path path = new Path();
            path.moveTo(f4, f5);
            path.lineTo(f6, f7);
            return path;
        }
    };

    /* renamed from: t0  reason: collision with root package name */
    private static ThreadLocal<ArrayMap<Animator, AnimationInfo>> f7701t0 = new ThreadLocal<>();
    TransitionPropagation D;
    private EpicenterCallback E;
    private ArrayMap<String, String> F;

    /* renamed from: t  reason: collision with root package name */
    private ArrayList<TransitionValues> f7721t;

    /* renamed from: u  reason: collision with root package name */
    private ArrayList<TransitionValues> f7722u;

    /* renamed from: a  reason: collision with root package name */
    private String f7702a = getClass().getName();

    /* renamed from: b  reason: collision with root package name */
    private long f7703b = -1;

    /* renamed from: c  reason: collision with root package name */
    long f7704c = -1;

    /* renamed from: d  reason: collision with root package name */
    private TimeInterpolator f7705d = null;

    /* renamed from: e  reason: collision with root package name */
    ArrayList<Integer> f7706e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    ArrayList<View> f7707f = new ArrayList<>();

    /* renamed from: g  reason: collision with root package name */
    private ArrayList<String> f7708g = null;

    /* renamed from: h  reason: collision with root package name */
    private ArrayList<Class<?>> f7709h = null;

    /* renamed from: i  reason: collision with root package name */
    private ArrayList<Integer> f7710i = null;

    /* renamed from: j  reason: collision with root package name */
    private ArrayList<View> f7711j = null;

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<Class<?>> f7712k = null;

    /* renamed from: l  reason: collision with root package name */
    private ArrayList<String> f7713l = null;

    /* renamed from: m  reason: collision with root package name */
    private ArrayList<Integer> f7714m = null;

    /* renamed from: n  reason: collision with root package name */
    private ArrayList<View> f7715n = null;

    /* renamed from: o  reason: collision with root package name */
    private ArrayList<Class<?>> f7716o = null;

    /* renamed from: p  reason: collision with root package name */
    private TransitionValuesMaps f7717p = new TransitionValuesMaps();

    /* renamed from: q  reason: collision with root package name */
    private TransitionValuesMaps f7718q = new TransitionValuesMaps();

    /* renamed from: r  reason: collision with root package name */
    TransitionSet f7719r = null;

    /* renamed from: s  reason: collision with root package name */
    private int[] f7720s = f7699r0;

    /* renamed from: v  reason: collision with root package name */
    private ViewGroup f7723v = null;

    /* renamed from: w  reason: collision with root package name */
    boolean f7724w = false;

    /* renamed from: x  reason: collision with root package name */
    ArrayList<Animator> f7725x = new ArrayList<>();

    /* renamed from: y  reason: collision with root package name */
    private int f7726y = 0;

    /* renamed from: z  reason: collision with root package name */
    private boolean f7727z = false;
    private boolean A = false;
    private ArrayList<TransitionListener> B = null;
    private ArrayList<Animator> C = new ArrayList<>();
    private PathMotion G = f7700s0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class AnimationInfo {

        /* renamed from: a  reason: collision with root package name */
        View f7731a;

        /* renamed from: b  reason: collision with root package name */
        String f7732b;

        /* renamed from: c  reason: collision with root package name */
        TransitionValues f7733c;

        /* renamed from: d  reason: collision with root package name */
        WindowIdImpl f7734d;

        /* renamed from: e  reason: collision with root package name */
        Transition f7735e;

        AnimationInfo(View view, String str, Transition transition, WindowIdImpl windowIdImpl, TransitionValues transitionValues) {
            this.f7731a = view;
            this.f7732b = str;
            this.f7733c = transitionValues;
            this.f7734d = windowIdImpl;
            this.f7735e = transition;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class ArrayListManager {
        private ArrayListManager() {
        }

        static <T> ArrayList<T> a(ArrayList<T> arrayList, T t3) {
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            if (!arrayList.contains(t3)) {
                arrayList.add(t3);
            }
            return arrayList;
        }

        static <T> ArrayList<T> b(ArrayList<T> arrayList, T t3) {
            if (arrayList != null) {
                arrayList.remove(t3);
                if (arrayList.isEmpty()) {
                    return null;
                }
                return arrayList;
            }
            return arrayList;
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class EpicenterCallback {
        public abstract Rect onGetEpicenter(@NonNull Transition transition);
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface MatchOrder {
    }

    /* loaded from: classes2.dex */
    public interface TransitionListener {
        void onTransitionCancel(@NonNull Transition transition);

        void onTransitionEnd(@NonNull Transition transition);

        void onTransitionPause(@NonNull Transition transition);

        void onTransitionResume(@NonNull Transition transition);

        void onTransitionStart(@NonNull Transition transition);
    }

    public Transition() {
    }

    private void B(Animator animator, final ArrayMap<Animator, AnimationInfo> arrayMap) {
        if (animator != null) {
            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator2) {
                    arrayMap.remove(animator2);
                    Transition.this.f7725x.remove(animator2);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator2) {
                    Transition.this.f7725x.add(animator2);
                }
            });
            d(animator);
        }
    }

    private void a(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        for (int i2 = 0; i2 < arrayMap.size(); i2++) {
            TransitionValues valueAt = arrayMap.valueAt(i2);
            if (s(valueAt.view)) {
                this.f7721t.add(valueAt);
                this.f7722u.add(null);
            }
        }
        for (int i4 = 0; i4 < arrayMap2.size(); i4++) {
            TransitionValues valueAt2 = arrayMap2.valueAt(i4);
            if (s(valueAt2.view)) {
                this.f7722u.add(valueAt2);
                this.f7721t.add(null);
            }
        }
    }

    private static void b(TransitionValuesMaps transitionValuesMaps, View view, TransitionValues transitionValues) {
        transitionValuesMaps.f7766a.put(view, transitionValues);
        int id = view.getId();
        if (id >= 0) {
            if (transitionValuesMaps.f7767b.indexOfKey(id) >= 0) {
                transitionValuesMaps.f7767b.put(id, null);
            } else {
                transitionValuesMaps.f7767b.put(id, view);
            }
        }
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            if (transitionValuesMaps.f7769d.containsKey(transitionName)) {
                transitionValuesMaps.f7769d.put(transitionName, null);
            } else {
                transitionValuesMaps.f7769d.put(transitionName, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (transitionValuesMaps.f7768c.indexOfKey(itemIdAtPosition) >= 0) {
                    View view2 = transitionValuesMaps.f7768c.get(itemIdAtPosition);
                    if (view2 != null) {
                        ViewCompat.setHasTransientState(view2, false);
                        transitionValuesMaps.f7768c.put(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                ViewCompat.setHasTransientState(view, true);
                transitionValuesMaps.f7768c.put(itemIdAtPosition, view);
            }
        }
    }

    private static boolean c(int[] iArr, int i2) {
        int i4 = iArr[i2];
        for (int i5 = 0; i5 < i2; i5++) {
            if (iArr[i5] == i4) {
                return true;
            }
        }
        return false;
    }

    private void e(View view, boolean z3) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        ArrayList<Integer> arrayList = this.f7710i;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList2 = this.f7711j;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class<?>> arrayList3 = this.f7712k;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (this.f7712k.get(i2).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    TransitionValues transitionValues = new TransitionValues(view);
                    if (z3) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.f7765a.add(this);
                    f(transitionValues);
                    if (z3) {
                        b(this.f7717p, view, transitionValues);
                    } else {
                        b(this.f7718q, view, transitionValues);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.f7714m;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id))) {
                        ArrayList<View> arrayList5 = this.f7715n;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class<?>> arrayList6 = this.f7716o;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i4 = 0; i4 < size2; i4++) {
                                    if (this.f7716o.get(i4).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
                                e(viewGroup.getChildAt(i5), z3);
                            }
                        }
                    }
                }
            }
        }
    }

    private ArrayList<Integer> k(ArrayList<Integer> arrayList, int i2, boolean z3) {
        if (i2 > 0) {
            if (z3) {
                return ArrayListManager.a(arrayList, Integer.valueOf(i2));
            }
            return ArrayListManager.b(arrayList, Integer.valueOf(i2));
        }
        return arrayList;
    }

    private static <T> ArrayList<T> l(ArrayList<T> arrayList, T t3, boolean z3) {
        if (t3 != null) {
            if (z3) {
                return ArrayListManager.a(arrayList, t3);
            }
            return ArrayListManager.b(arrayList, t3);
        }
        return arrayList;
    }

    private ArrayList<Class<?>> m(ArrayList<Class<?>> arrayList, Class<?> cls, boolean z3) {
        if (cls != null) {
            if (z3) {
                return ArrayListManager.a(arrayList, cls);
            }
            return ArrayListManager.b(arrayList, cls);
        }
        return arrayList;
    }

    private ArrayList<View> n(ArrayList<View> arrayList, View view, boolean z3) {
        if (view != null) {
            if (z3) {
                return ArrayListManager.a(arrayList, view);
            }
            return ArrayListManager.b(arrayList, view);
        }
        return arrayList;
    }

    private static ArrayMap<Animator, AnimationInfo> q() {
        ArrayMap<Animator, AnimationInfo> arrayMap = f7701t0.get();
        if (arrayMap == null) {
            ArrayMap<Animator, AnimationInfo> arrayMap2 = new ArrayMap<>();
            f7701t0.set(arrayMap2);
            return arrayMap2;
        }
        return arrayMap;
    }

    private static boolean r(int i2) {
        return i2 >= 1 && i2 <= 4;
    }

    private static boolean t(TransitionValues transitionValues, TransitionValues transitionValues2, String str) {
        Object obj = transitionValues.values.get(str);
        Object obj2 = transitionValues2.values.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    private void u(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            View valueAt = sparseArray.valueAt(i2);
            if (valueAt != null && s(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i2))) != null && s(view)) {
                TransitionValues transitionValues = arrayMap.get(valueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.f7721t.add(transitionValues);
                    this.f7722u.add(transitionValues2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    private void v(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2) {
        TransitionValues remove;
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View keyAt = arrayMap.keyAt(size);
            if (keyAt != null && s(keyAt) && (remove = arrayMap2.remove(keyAt)) != null && s(remove.view)) {
                this.f7721t.add(arrayMap.removeAt(size));
                this.f7722u.add(remove);
            }
        }
    }

    private void w(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, LongSparseArray<View> longSparseArray, LongSparseArray<View> longSparseArray2) {
        View view;
        int size = longSparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            View valueAt = longSparseArray.valueAt(i2);
            if (valueAt != null && s(valueAt) && (view = longSparseArray2.get(longSparseArray.keyAt(i2))) != null && s(view)) {
                TransitionValues transitionValues = arrayMap.get(valueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.f7721t.add(transitionValues);
                    this.f7722u.add(transitionValues2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    private void x(ArrayMap<View, TransitionValues> arrayMap, ArrayMap<View, TransitionValues> arrayMap2, ArrayMap<String, View> arrayMap3, ArrayMap<String, View> arrayMap4) {
        View view;
        int size = arrayMap3.size();
        for (int i2 = 0; i2 < size; i2++) {
            View valueAt = arrayMap3.valueAt(i2);
            if (valueAt != null && s(valueAt) && (view = arrayMap4.get(arrayMap3.keyAt(i2))) != null && s(view)) {
                TransitionValues transitionValues = arrayMap.get(valueAt);
                TransitionValues transitionValues2 = arrayMap2.get(view);
                if (transitionValues != null && transitionValues2 != null) {
                    this.f7721t.add(transitionValues);
                    this.f7722u.add(transitionValues2);
                    arrayMap.remove(valueAt);
                    arrayMap2.remove(view);
                }
            }
        }
    }

    private void y(TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2) {
        ArrayMap<View, TransitionValues> arrayMap = new ArrayMap<>(transitionValuesMaps.f7766a);
        ArrayMap<View, TransitionValues> arrayMap2 = new ArrayMap<>(transitionValuesMaps2.f7766a);
        int i2 = 0;
        while (true) {
            int[] iArr = this.f7720s;
            if (i2 < iArr.length) {
                int i4 = iArr[i2];
                if (i4 == 1) {
                    v(arrayMap, arrayMap2);
                } else if (i4 == 2) {
                    x(arrayMap, arrayMap2, transitionValuesMaps.f7769d, transitionValuesMaps2.f7769d);
                } else if (i4 == 3) {
                    u(arrayMap, arrayMap2, transitionValuesMaps.f7767b, transitionValuesMaps2.f7767b);
                } else if (i4 == 4) {
                    w(arrayMap, arrayMap2, transitionValuesMaps.f7768c, transitionValuesMaps2.f7768c);
                }
                i2++;
            } else {
                a(arrayMap, arrayMap2);
                return;
            }
        }
    }

    private static int[] z(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if ("id".equalsIgnoreCase(trim)) {
                iArr[i2] = 3;
            } else if (f7695n0.equalsIgnoreCase(trim)) {
                iArr[i2] = 1;
            } else if ("name".equalsIgnoreCase(trim)) {
                iArr[i2] = 2;
            } else if (f7698q0.equalsIgnoreCase(trim)) {
                iArr[i2] = 4;
            } else if (trim.isEmpty()) {
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                i2--;
                iArr = iArr2;
            } else {
                throw new InflateException("Unknown match type in matchOrder: '" + trim + "'");
            }
            i2++;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void A(ViewGroup viewGroup) {
        AnimationInfo animationInfo;
        this.f7721t = new ArrayList<>();
        this.f7722u = new ArrayList<>();
        y(this.f7717p, this.f7718q);
        ArrayMap<Animator, AnimationInfo> q3 = q();
        int size = q3.size();
        WindowIdImpl d4 = ViewUtils.d(viewGroup);
        for (int i2 = size - 1; i2 >= 0; i2--) {
            Animator keyAt = q3.keyAt(i2);
            if (keyAt != null && (animationInfo = q3.get(keyAt)) != null && animationInfo.f7731a != null && d4.equals(animationInfo.f7734d)) {
                TransitionValues transitionValues = animationInfo.f7733c;
                View view = animationInfo.f7731a;
                TransitionValues transitionValues2 = getTransitionValues(view, true);
                TransitionValues p3 = p(view, true);
                if (transitionValues2 == null && p3 == null) {
                    p3 = this.f7718q.f7766a.get(view);
                }
                if (!(transitionValues2 == null && p3 == null) && animationInfo.f7735e.isTransitionRequired(transitionValues, p3)) {
                    if (!keyAt.isRunning() && !keyAt.isStarted()) {
                        q3.remove(keyAt);
                    } else {
                        keyAt.cancel();
                    }
                }
            }
        }
        i(viewGroup, this.f7717p, this.f7718q, this.f7721t, this.f7722u);
        C();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void C() {
        F();
        ArrayMap<Animator, AnimationInfo> q3 = q();
        Iterator<Animator> it2 = this.C.iterator();
        while (it2.hasNext()) {
            Animator next = it2.next();
            if (q3.containsKey(next)) {
                F();
                B(next, q3);
            }
        }
        this.C.clear();
        j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D(boolean z3) {
        this.f7724w = z3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Transition E(ViewGroup viewGroup) {
        this.f7723v = viewGroup;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void F() {
        if (this.f7726y == 0) {
            ArrayList<TransitionListener> arrayList = this.B;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.B.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((TransitionListener) arrayList2.get(i2)).onTransitionStart(this);
                }
            }
            this.A = false;
        }
        this.f7726y++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String G(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f7704c != -1) {
            str2 = str2 + "dur(" + this.f7704c + ") ";
        }
        if (this.f7703b != -1) {
            str2 = str2 + "dly(" + this.f7703b + ") ";
        }
        if (this.f7705d != null) {
            str2 = str2 + "interp(" + this.f7705d + ") ";
        }
        if (this.f7706e.size() > 0 || this.f7707f.size() > 0) {
            String str3 = str2 + "tgts(";
            if (this.f7706e.size() > 0) {
                for (int i2 = 0; i2 < this.f7706e.size(); i2++) {
                    if (i2 > 0) {
                        str3 = str3 + ", ";
                    }
                    str3 = str3 + this.f7706e.get(i2);
                }
            }
            if (this.f7707f.size() > 0) {
                for (int i4 = 0; i4 < this.f7707f.size(); i4++) {
                    if (i4 > 0) {
                        str3 = str3 + ", ";
                    }
                    str3 = str3 + this.f7707f.get(i4);
                }
            }
            return str3 + ")";
        }
        return str2;
    }

    @NonNull
    public Transition addListener(@NonNull TransitionListener transitionListener) {
        if (this.B == null) {
            this.B = new ArrayList<>();
        }
        this.B.add(transitionListener);
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull View view) {
        this.f7707f.add(view);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void cancel() {
        for (int size = this.f7725x.size() - 1; size >= 0; size--) {
            this.f7725x.get(size).cancel();
        }
        ArrayList<TransitionListener> arrayList = this.B;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.B.clone();
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((TransitionListener) arrayList2.get(i2)).onTransitionCancel(this);
        }
    }

    public abstract void captureEndValues(@NonNull TransitionValues transitionValues);

    public abstract void captureStartValues(@NonNull TransitionValues transitionValues);

    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    protected void d(Animator animator) {
        if (animator == null) {
            j();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(getStartDelay() + animator.getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.Transition.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                Transition.this.j();
                animator2.removeListener(this);
            }
        });
        animator.start();
    }

    @NonNull
    public Transition excludeChildren(@NonNull View view, boolean z3) {
        this.f7715n = n(this.f7715n, view, z3);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull View view, boolean z3) {
        this.f7711j = n(this.f7711j, view, z3);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(TransitionValues transitionValues) {
        String[] propagationProperties;
        if (this.D == null || transitionValues.values.isEmpty() || (propagationProperties = this.D.getPropagationProperties()) == null) {
            return;
        }
        boolean z3 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= propagationProperties.length) {
                z3 = true;
                break;
            } else if (!transitionValues.values.containsKey(propagationProperties[i2])) {
                break;
            } else {
                i2++;
            }
        }
        if (z3) {
            return;
        }
        this.D.captureValues(transitionValues);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(ViewGroup viewGroup, boolean z3) {
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        ArrayMap<String, String> arrayMap;
        h(z3);
        if ((this.f7706e.size() <= 0 && this.f7707f.size() <= 0) || (((arrayList = this.f7708g) != null && !arrayList.isEmpty()) || ((arrayList2 = this.f7709h) != null && !arrayList2.isEmpty()))) {
            e(viewGroup, z3);
        } else {
            for (int i2 = 0; i2 < this.f7706e.size(); i2++) {
                View findViewById = viewGroup.findViewById(this.f7706e.get(i2).intValue());
                if (findViewById != null) {
                    TransitionValues transitionValues = new TransitionValues(findViewById);
                    if (z3) {
                        captureStartValues(transitionValues);
                    } else {
                        captureEndValues(transitionValues);
                    }
                    transitionValues.f7765a.add(this);
                    f(transitionValues);
                    if (z3) {
                        b(this.f7717p, findViewById, transitionValues);
                    } else {
                        b(this.f7718q, findViewById, transitionValues);
                    }
                }
            }
            for (int i4 = 0; i4 < this.f7707f.size(); i4++) {
                View view = this.f7707f.get(i4);
                TransitionValues transitionValues2 = new TransitionValues(view);
                if (z3) {
                    captureStartValues(transitionValues2);
                } else {
                    captureEndValues(transitionValues2);
                }
                transitionValues2.f7765a.add(this);
                f(transitionValues2);
                if (z3) {
                    b(this.f7717p, view, transitionValues2);
                } else {
                    b(this.f7718q, view, transitionValues2);
                }
            }
        }
        if (z3 || (arrayMap = this.F) == null) {
            return;
        }
        int size = arrayMap.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i5 = 0; i5 < size; i5++) {
            arrayList3.add(this.f7717p.f7769d.remove(this.F.keyAt(i5)));
        }
        for (int i6 = 0; i6 < size; i6++) {
            View view2 = (View) arrayList3.get(i6);
            if (view2 != null) {
                this.f7717p.f7769d.put(this.F.valueAt(i6), view2);
            }
        }
    }

    public long getDuration() {
        return this.f7704c;
    }

    @Nullable
    public Rect getEpicenter() {
        EpicenterCallback epicenterCallback = this.E;
        if (epicenterCallback == null) {
            return null;
        }
        return epicenterCallback.onGetEpicenter(this);
    }

    @Nullable
    public EpicenterCallback getEpicenterCallback() {
        return this.E;
    }

    @Nullable
    public TimeInterpolator getInterpolator() {
        return this.f7705d;
    }

    @NonNull
    public String getName() {
        return this.f7702a;
    }

    @NonNull
    public PathMotion getPathMotion() {
        return this.G;
    }

    @Nullable
    public TransitionPropagation getPropagation() {
        return this.D;
    }

    public long getStartDelay() {
        return this.f7703b;
    }

    @NonNull
    public List<Integer> getTargetIds() {
        return this.f7706e;
    }

    @Nullable
    public List<String> getTargetNames() {
        return this.f7708g;
    }

    @Nullable
    public List<Class<?>> getTargetTypes() {
        return this.f7709h;
    }

    @NonNull
    public List<View> getTargets() {
        return this.f7707f;
    }

    @Nullable
    public String[] getTransitionProperties() {
        return null;
    }

    @Nullable
    public TransitionValues getTransitionValues(@NonNull View view, boolean z3) {
        TransitionSet transitionSet = this.f7719r;
        if (transitionSet != null) {
            return transitionSet.getTransitionValues(view, z3);
        }
        return (z3 ? this.f7717p : this.f7718q).f7766a.get(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(boolean z3) {
        if (z3) {
            this.f7717p.f7766a.clear();
            this.f7717p.f7767b.clear();
            this.f7717p.f7768c.clear();
            return;
        }
        this.f7718q.f7766a.clear();
        this.f7718q.f7767b.clear();
        this.f7718q.f7768c.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void i(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        Animator createAnimator;
        int i2;
        int i4;
        View view;
        Animator animator;
        TransitionValues transitionValues;
        Animator animator2;
        TransitionValues transitionValues2;
        ArrayMap<Animator, AnimationInfo> q3 = q();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        long j4 = Long.MAX_VALUE;
        int i5 = 0;
        while (i5 < size) {
            TransitionValues transitionValues3 = arrayList.get(i5);
            TransitionValues transitionValues4 = arrayList2.get(i5);
            if (transitionValues3 != null && !transitionValues3.f7765a.contains(this)) {
                transitionValues3 = null;
            }
            if (transitionValues4 != null && !transitionValues4.f7765a.contains(this)) {
                transitionValues4 = null;
            }
            if (transitionValues3 != null || transitionValues4 != null) {
                if ((transitionValues3 == null || transitionValues4 == null || isTransitionRequired(transitionValues3, transitionValues4)) && (createAnimator = createAnimator(viewGroup, transitionValues3, transitionValues4)) != null) {
                    if (transitionValues4 != null) {
                        view = transitionValues4.view;
                        String[] transitionProperties = getTransitionProperties();
                        if (transitionProperties != null && transitionProperties.length > 0) {
                            transitionValues2 = new TransitionValues(view);
                            i2 = size;
                            TransitionValues transitionValues5 = transitionValuesMaps2.f7766a.get(view);
                            if (transitionValues5 != null) {
                                int i6 = 0;
                                while (i6 < transitionProperties.length) {
                                    transitionValues2.values.put(transitionProperties[i6], transitionValues5.values.get(transitionProperties[i6]));
                                    i6++;
                                    i5 = i5;
                                    transitionValues5 = transitionValues5;
                                }
                            }
                            i4 = i5;
                            int size2 = q3.size();
                            int i7 = 0;
                            while (true) {
                                if (i7 >= size2) {
                                    animator2 = createAnimator;
                                    break;
                                }
                                AnimationInfo animationInfo = q3.get(q3.keyAt(i7));
                                if (animationInfo.f7733c != null && animationInfo.f7731a == view && animationInfo.f7732b.equals(getName()) && animationInfo.f7733c.equals(transitionValues2)) {
                                    animator2 = null;
                                    break;
                                }
                                i7++;
                            }
                        } else {
                            i2 = size;
                            i4 = i5;
                            animator2 = createAnimator;
                            transitionValues2 = null;
                        }
                        animator = animator2;
                        transitionValues = transitionValues2;
                    } else {
                        i2 = size;
                        i4 = i5;
                        view = transitionValues3.view;
                        animator = createAnimator;
                        transitionValues = null;
                    }
                    if (animator != null) {
                        TransitionPropagation transitionPropagation = this.D;
                        if (transitionPropagation != null) {
                            long startDelay = transitionPropagation.getStartDelay(viewGroup, this, transitionValues3, transitionValues4);
                            sparseIntArray.put(this.C.size(), (int) startDelay);
                            j4 = Math.min(startDelay, j4);
                        }
                        q3.put(animator, new AnimationInfo(view, getName(), this, ViewUtils.d(viewGroup), transitionValues));
                        this.C.add(animator);
                        j4 = j4;
                    }
                    i5 = i4 + 1;
                    size = i2;
                }
            }
            i2 = size;
            i4 = i5;
            i5 = i4 + 1;
            size = i2;
        }
        if (sparseIntArray.size() != 0) {
            for (int i8 = 0; i8 < sparseIntArray.size(); i8++) {
                Animator animator3 = this.C.get(sparseIntArray.keyAt(i8));
                animator3.setStartDelay((sparseIntArray.valueAt(i8) - j4) + animator3.getStartDelay());
            }
        }
    }

    public boolean isTransitionRequired(@Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        if (transitionValues == null || transitionValues2 == null) {
            return false;
        }
        String[] transitionProperties = getTransitionProperties();
        if (transitionProperties != null) {
            for (String str : transitionProperties) {
                if (!t(transitionValues, transitionValues2, str)) {
                }
            }
            return false;
        }
        for (String str2 : transitionValues.values.keySet()) {
            if (t(transitionValues, transitionValues2, str2)) {
            }
        }
        return false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void j() {
        int i2 = this.f7726y - 1;
        this.f7726y = i2;
        if (i2 == 0) {
            ArrayList<TransitionListener> arrayList = this.B;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.B.clone();
                int size = arrayList2.size();
                for (int i4 = 0; i4 < size; i4++) {
                    ((TransitionListener) arrayList2.get(i4)).onTransitionEnd(this);
                }
            }
            for (int i5 = 0; i5 < this.f7717p.f7768c.size(); i5++) {
                View valueAt = this.f7717p.f7768c.valueAt(i5);
                if (valueAt != null) {
                    ViewCompat.setHasTransientState(valueAt, false);
                }
            }
            for (int i6 = 0; i6 < this.f7718q.f7768c.size(); i6++) {
                View valueAt2 = this.f7718q.f7768c.valueAt(i6);
                if (valueAt2 != null) {
                    ViewCompat.setHasTransientState(valueAt2, false);
                }
            }
            this.A = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void o(ViewGroup viewGroup) {
        ArrayMap<Animator, AnimationInfo> q3 = q();
        int size = q3.size();
        if (viewGroup == null || size == 0) {
            return;
        }
        WindowIdImpl d4 = ViewUtils.d(viewGroup);
        ArrayMap arrayMap = new ArrayMap(q3);
        q3.clear();
        for (int i2 = size - 1; i2 >= 0; i2--) {
            AnimationInfo animationInfo = (AnimationInfo) arrayMap.valueAt(i2);
            if (animationInfo.f7731a != null && d4 != null && d4.equals(animationInfo.f7734d)) {
                ((Animator) arrayMap.keyAt(i2)).end();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransitionValues p(View view, boolean z3) {
        TransitionSet transitionSet = this.f7719r;
        if (transitionSet != null) {
            return transitionSet.p(view, z3);
        }
        ArrayList<TransitionValues> arrayList = z3 ? this.f7721t : this.f7722u;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i2 = -1;
        int i4 = 0;
        while (true) {
            if (i4 >= size) {
                break;
            }
            TransitionValues transitionValues = arrayList.get(i4);
            if (transitionValues == null) {
                return null;
            }
            if (transitionValues.view == view) {
                i2 = i4;
                break;
            }
            i4++;
        }
        if (i2 >= 0) {
            return (z3 ? this.f7722u : this.f7721t).get(i2);
        }
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void pause(View view) {
        if (this.A) {
            return;
        }
        ArrayMap<Animator, AnimationInfo> q3 = q();
        int size = q3.size();
        WindowIdImpl d4 = ViewUtils.d(view);
        for (int i2 = size - 1; i2 >= 0; i2--) {
            AnimationInfo valueAt = q3.valueAt(i2);
            if (valueAt.f7731a != null && d4.equals(valueAt.f7734d)) {
                AnimatorUtils.b(q3.keyAt(i2));
            }
        }
        ArrayList<TransitionListener> arrayList = this.B;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.B.clone();
            int size2 = arrayList2.size();
            for (int i4 = 0; i4 < size2; i4++) {
                ((TransitionListener) arrayList2.get(i4)).onTransitionPause(this);
            }
        }
        this.f7727z = true;
    }

    @NonNull
    public Transition removeListener(@NonNull TransitionListener transitionListener) {
        ArrayList<TransitionListener> arrayList = this.B;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(transitionListener);
        if (this.B.size() == 0) {
            this.B = null;
        }
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull View view) {
        this.f7707f.remove(view);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void resume(View view) {
        if (this.f7727z) {
            if (!this.A) {
                ArrayMap<Animator, AnimationInfo> q3 = q();
                int size = q3.size();
                WindowIdImpl d4 = ViewUtils.d(view);
                for (int i2 = size - 1; i2 >= 0; i2--) {
                    AnimationInfo valueAt = q3.valueAt(i2);
                    if (valueAt.f7731a != null && d4.equals(valueAt.f7734d)) {
                        AnimatorUtils.c(q3.keyAt(i2));
                    }
                }
                ArrayList<TransitionListener> arrayList = this.B;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.B.clone();
                    int size2 = arrayList2.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        ((TransitionListener) arrayList2.get(i4)).onTransitionResume(this);
                    }
                }
            }
            this.f7727z = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean s(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id = view.getId();
        ArrayList<Integer> arrayList3 = this.f7710i;
        if (arrayList3 == null || !arrayList3.contains(Integer.valueOf(id))) {
            ArrayList<View> arrayList4 = this.f7711j;
            if (arrayList4 == null || !arrayList4.contains(view)) {
                ArrayList<Class<?>> arrayList5 = this.f7712k;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        if (this.f7712k.get(i2).isInstance(view)) {
                            return false;
                        }
                    }
                }
                if (this.f7713l == null || ViewCompat.getTransitionName(view) == null || !this.f7713l.contains(ViewCompat.getTransitionName(view))) {
                    if ((this.f7706e.size() == 0 && this.f7707f.size() == 0 && (((arrayList = this.f7709h) == null || arrayList.isEmpty()) && ((arrayList2 = this.f7708g) == null || arrayList2.isEmpty()))) || this.f7706e.contains(Integer.valueOf(id)) || this.f7707f.contains(view)) {
                        return true;
                    }
                    ArrayList<String> arrayList6 = this.f7708g;
                    if (arrayList6 == null || !arrayList6.contains(ViewCompat.getTransitionName(view))) {
                        if (this.f7709h != null) {
                            for (int i4 = 0; i4 < this.f7709h.size(); i4++) {
                                if (this.f7709h.get(i4).isInstance(view)) {
                                    return true;
                                }
                            }
                        }
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @NonNull
    public Transition setDuration(long j4) {
        this.f7704c = j4;
        return this;
    }

    public void setEpicenterCallback(@Nullable EpicenterCallback epicenterCallback) {
        this.E = epicenterCallback;
    }

    @NonNull
    public Transition setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.f7705d = timeInterpolator;
        return this;
    }

    public void setMatchOrder(int... iArr) {
        if (iArr != null && iArr.length != 0) {
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (r(iArr[i2])) {
                    if (c(iArr, i2)) {
                        throw new IllegalArgumentException("matches contains a duplicate value");
                    }
                } else {
                    throw new IllegalArgumentException("matches contains invalid value");
                }
            }
            this.f7720s = (int[]) iArr.clone();
            return;
        }
        this.f7720s = f7699r0;
    }

    public void setPathMotion(@Nullable PathMotion pathMotion) {
        if (pathMotion == null) {
            this.G = f7700s0;
        } else {
            this.G = pathMotion;
        }
    }

    public void setPropagation(@Nullable TransitionPropagation transitionPropagation) {
        this.D = transitionPropagation;
    }

    @NonNull
    public Transition setStartDelay(long j4) {
        this.f7703b = j4;
        return this;
    }

    public String toString() {
        return G("");
    }

    @NonNull
    public Transition addTarget(@IdRes int i2) {
        if (i2 != 0) {
            this.f7706e.add(Integer.valueOf(i2));
        }
        return this;
    }

    @Override // 
    /* renamed from: clone */
    public Transition mo8clone() {
        try {
            Transition transition = (Transition) super.clone();
            transition.C = new ArrayList<>();
            transition.f7717p = new TransitionValuesMaps();
            transition.f7718q = new TransitionValuesMaps();
            transition.f7721t = null;
            transition.f7722u = null;
            return transition;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    @NonNull
    public Transition excludeChildren(@IdRes int i2, boolean z3) {
        this.f7714m = k(this.f7714m, i2, z3);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@IdRes int i2, boolean z3) {
        this.f7710i = k(this.f7710i, i2, z3);
        return this;
    }

    @NonNull
    public Transition removeTarget(@IdRes int i2) {
        if (i2 != 0) {
            this.f7706e.remove(Integer.valueOf(i2));
        }
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull String str) {
        if (this.f7708g == null) {
            this.f7708g = new ArrayList<>();
        }
        this.f7708g.add(str);
        return this;
    }

    @NonNull
    public Transition excludeChildren(@NonNull Class<?> cls, boolean z3) {
        this.f7716o = m(this.f7716o, cls, z3);
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull String str, boolean z3) {
        this.f7713l = l(this.f7713l, str, z3);
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull String str) {
        ArrayList<String> arrayList = this.f7708g;
        if (arrayList != null) {
            arrayList.remove(str);
        }
        return this;
    }

    @NonNull
    public Transition excludeTarget(@NonNull Class<?> cls, boolean z3) {
        this.f7712k = m(this.f7712k, cls, z3);
        return this;
    }

    @NonNull
    public Transition removeTarget(@NonNull Class<?> cls) {
        ArrayList<Class<?>> arrayList = this.f7709h;
        if (arrayList != null) {
            arrayList.remove(cls);
        }
        return this;
    }

    @NonNull
    public Transition addTarget(@NonNull Class<?> cls) {
        if (this.f7709h == null) {
            this.f7709h = new ArrayList<>();
        }
        this.f7709h.add(cls);
        return this;
    }

    @SuppressLint({"RestrictedApi"})
    public Transition(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f7686c);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long namedInt = TypedArrayUtils.getNamedInt(obtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (namedInt >= 0) {
            setDuration(namedInt);
        }
        long namedInt2 = TypedArrayUtils.getNamedInt(obtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (namedInt2 > 0) {
            setStartDelay(namedInt2);
        }
        int namedResourceId = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (namedResourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, namedResourceId));
        }
        String namedString = TypedArrayUtils.getNamedString(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (namedString != null) {
            setMatchOrder(z(namedString));
        }
        obtainStyledAttributes.recycle();
    }
}
