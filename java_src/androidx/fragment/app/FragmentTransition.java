package androidx.fragment.app;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.transition.FragmentTransitionSupport;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FragmentTransition {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f6037a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};

    /* renamed from: b  reason: collision with root package name */
    static final FragmentTransitionImpl f6038b;

    /* renamed from: c  reason: collision with root package name */
    static final FragmentTransitionImpl f6039c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface Callback {
        void onComplete(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal);

        void onStart(@NonNull Fragment fragment, @NonNull CancellationSignal cancellationSignal);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class FragmentContainerTransition {
        public Fragment firstOut;
        public boolean firstOutIsPop;
        public BackStackRecord firstOutTransaction;
        public Fragment lastIn;
        public boolean lastInIsPop;
        public BackStackRecord lastInTransaction;

        FragmentContainerTransition() {
        }
    }

    static {
        f6038b = Build.VERSION.SDK_INT >= 21 ? new FragmentTransitionCompat21() : null;
        f6039c = v();
    }

    private FragmentTransition() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void A(@NonNull Context context, @NonNull FragmentContainer fragmentContainer, ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i2, int i4, boolean z3, Callback callback) {
        ViewGroup viewGroup;
        SparseArray sparseArray = new SparseArray();
        for (int i5 = i2; i5 < i4; i5++) {
            BackStackRecord backStackRecord = arrayList.get(i5);
            if (arrayList2.get(i5).booleanValue()) {
                calculatePopFragments(backStackRecord, sparseArray, z3);
            } else {
                calculateFragments(backStackRecord, sparseArray, z3);
            }
        }
        if (sparseArray.size() != 0) {
            View view = new View(context);
            int size = sparseArray.size();
            for (int i6 = 0; i6 < size; i6++) {
                int keyAt = sparseArray.keyAt(i6);
                ArrayMap<String, String> c4 = c(keyAt, arrayList, arrayList2, i2, i4);
                FragmentContainerTransition fragmentContainerTransition = (FragmentContainerTransition) sparseArray.valueAt(i6);
                if (fragmentContainer.onHasView() && (viewGroup = (ViewGroup) fragmentContainer.onFindViewById(keyAt)) != null) {
                    if (z3) {
                        m(viewGroup, fragmentContainerTransition, view, c4, callback);
                    } else {
                        l(viewGroup, fragmentContainerTransition, view, c4, callback);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean B() {
        return (f6038b == null && f6039c == null) ? false : true;
    }

    private static void a(ArrayList<View> arrayList, ArrayMap<String, View> arrayMap, Collection<String> collection) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            View valueAt = arrayMap.valueAt(size);
            if (collection.contains(ViewCompat.getTransitionName(valueAt))) {
                arrayList.add(valueAt);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0039, code lost:
        if (r0.mAdded != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x006e, code lost:
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x008a, code lost:
        if (r0.mHidden == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x008c, code lost:
        r9 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:75:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00c7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00d9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:98:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void b(androidx.fragment.app.BackStackRecord r8, androidx.fragment.app.FragmentTransaction.Op r9, android.util.SparseArray<androidx.fragment.app.FragmentTransition.FragmentContainerTransition> r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentTransition.b(androidx.fragment.app.BackStackRecord, androidx.fragment.app.FragmentTransaction$Op, android.util.SparseArray, boolean, boolean):void");
    }

    private static ArrayMap<String, String> c(int i2, ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2, int i4, int i5) {
        ArrayList<String> arrayList3;
        ArrayList<String> arrayList4;
        ArrayMap<String, String> arrayMap = new ArrayMap<>();
        for (int i6 = i5 - 1; i6 >= i4; i6--) {
            BackStackRecord backStackRecord = arrayList.get(i6);
            if (backStackRecord.j(i2)) {
                boolean booleanValue = arrayList2.get(i6).booleanValue();
                ArrayList<String> arrayList5 = backStackRecord.f6025p;
                if (arrayList5 != null) {
                    int size = arrayList5.size();
                    if (booleanValue) {
                        arrayList3 = backStackRecord.f6025p;
                        arrayList4 = backStackRecord.f6026q;
                    } else {
                        ArrayList<String> arrayList6 = backStackRecord.f6025p;
                        arrayList3 = backStackRecord.f6026q;
                        arrayList4 = arrayList6;
                    }
                    for (int i7 = 0; i7 < size; i7++) {
                        String str = arrayList4.get(i7);
                        String str2 = arrayList3.get(i7);
                        String remove = arrayMap.remove(str2);
                        if (remove != null) {
                            arrayMap.put(str, remove);
                        } else {
                            arrayMap.put(str, str2);
                        }
                    }
                }
            }
        }
        return arrayMap;
    }

    public static void calculateFragments(BackStackRecord backStackRecord, SparseArray<FragmentContainerTransition> sparseArray, boolean z3) {
        int size = backStackRecord.f6012c.size();
        for (int i2 = 0; i2 < size; i2++) {
            b(backStackRecord, backStackRecord.f6012c.get(i2), sparseArray, false, z3);
        }
    }

    public static void calculatePopFragments(BackStackRecord backStackRecord, SparseArray<FragmentContainerTransition> sparseArray, boolean z3) {
        if (backStackRecord.E.l0().onHasView()) {
            for (int size = backStackRecord.f6012c.size() - 1; size >= 0; size--) {
                b(backStackRecord, backStackRecord.f6012c.get(size), sparseArray, true, z3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(Fragment fragment, Fragment fragment2, boolean z3, ArrayMap<String, View> arrayMap, boolean z4) {
        SharedElementCallback enterTransitionCallback;
        if (z3) {
            enterTransitionCallback = fragment2.getEnterTransitionCallback();
        } else {
            enterTransitionCallback = fragment.getEnterTransitionCallback();
        }
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = arrayMap == null ? 0 : arrayMap.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList2.add(arrayMap.keyAt(i2));
                arrayList.add(arrayMap.valueAt(i2));
            }
            if (z4) {
                enterTransitionCallback.onSharedElementStart(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.onSharedElementEnd(arrayList2, arrayList, null);
            }
        }
    }

    private static boolean e(FragmentTransitionImpl fragmentTransitionImpl, List<Object> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!fragmentTransitionImpl.canHandle(list.get(i2))) {
                return false;
            }
        }
        return true;
    }

    static ArrayMap<String, View> f(FragmentTransitionImpl fragmentTransitionImpl, ArrayMap<String, String> arrayMap, Object obj, FragmentContainerTransition fragmentContainerTransition) {
        SharedElementCallback enterTransitionCallback;
        ArrayList<String> arrayList;
        String o3;
        Fragment fragment = fragmentContainerTransition.lastIn;
        View view = fragment.getView();
        if (!arrayMap.isEmpty() && obj != null && view != null) {
            ArrayMap<String, View> arrayMap2 = new ArrayMap<>();
            fragmentTransitionImpl.e(arrayMap2, view);
            BackStackRecord backStackRecord = fragmentContainerTransition.lastInTransaction;
            if (fragmentContainerTransition.lastInIsPop) {
                enterTransitionCallback = fragment.getExitTransitionCallback();
                arrayList = backStackRecord.f6025p;
            } else {
                enterTransitionCallback = fragment.getEnterTransitionCallback();
                arrayList = backStackRecord.f6026q;
            }
            if (arrayList != null) {
                arrayMap2.retainAll(arrayList);
                arrayMap2.retainAll(arrayMap.values());
            }
            if (enterTransitionCallback != null) {
                enterTransitionCallback.onMapSharedElements(arrayList, arrayMap2);
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    String str = arrayList.get(size);
                    View view2 = arrayMap2.get(str);
                    if (view2 == null) {
                        String o4 = o(arrayMap, str);
                        if (o4 != null) {
                            arrayMap.remove(o4);
                        }
                    } else if (!str.equals(ViewCompat.getTransitionName(view2)) && (o3 = o(arrayMap, str)) != null) {
                        arrayMap.put(o3, ViewCompat.getTransitionName(view2));
                    }
                }
            } else {
                w(arrayMap, arrayMap2);
            }
            return arrayMap2;
        }
        arrayMap.clear();
        return null;
    }

    private static ArrayMap<String, View> g(FragmentTransitionImpl fragmentTransitionImpl, ArrayMap<String, String> arrayMap, Object obj, FragmentContainerTransition fragmentContainerTransition) {
        SharedElementCallback exitTransitionCallback;
        ArrayList<String> arrayList;
        if (!arrayMap.isEmpty() && obj != null) {
            Fragment fragment = fragmentContainerTransition.firstOut;
            ArrayMap<String, View> arrayMap2 = new ArrayMap<>();
            fragmentTransitionImpl.e(arrayMap2, fragment.requireView());
            BackStackRecord backStackRecord = fragmentContainerTransition.firstOutTransaction;
            if (fragmentContainerTransition.firstOutIsPop) {
                exitTransitionCallback = fragment.getEnterTransitionCallback();
                arrayList = backStackRecord.f6026q;
            } else {
                exitTransitionCallback = fragment.getExitTransitionCallback();
                arrayList = backStackRecord.f6025p;
            }
            if (arrayList != null) {
                arrayMap2.retainAll(arrayList);
            }
            if (exitTransitionCallback != null) {
                exitTransitionCallback.onMapSharedElements(arrayList, arrayMap2);
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    String str = arrayList.get(size);
                    View view = arrayMap2.get(str);
                    if (view == null) {
                        arrayMap.remove(str);
                    } else if (!str.equals(ViewCompat.getTransitionName(view))) {
                        arrayMap.put(ViewCompat.getTransitionName(view), arrayMap.remove(str));
                    }
                }
            } else {
                arrayMap.retainAll(arrayMap2.keySet());
            }
            return arrayMap2;
        }
        arrayMap.clear();
        return null;
    }

    private static FragmentTransitionImpl h(Fragment fragment, Fragment fragment2) {
        ArrayList arrayList = new ArrayList();
        if (fragment != null) {
            Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        FragmentTransitionImpl fragmentTransitionImpl = f6038b;
        if (fragmentTransitionImpl == null || !e(fragmentTransitionImpl, arrayList)) {
            FragmentTransitionImpl fragmentTransitionImpl2 = f6039c;
            if (fragmentTransitionImpl2 == null || !e(fragmentTransitionImpl2, arrayList)) {
                if (fragmentTransitionImpl == null && fragmentTransitionImpl2 == null) {
                    return null;
                }
                throw new IllegalArgumentException("Invalid Transition types");
            }
            return fragmentTransitionImpl2;
        }
        return fragmentTransitionImpl;
    }

    static ArrayList<View> i(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Fragment fragment, ArrayList<View> arrayList, View view) {
        if (obj != null) {
            ArrayList<View> arrayList2 = new ArrayList<>();
            View view2 = fragment.getView();
            if (view2 != null) {
                fragmentTransitionImpl.b(arrayList2, view2);
            }
            if (arrayList != null) {
                arrayList2.removeAll(arrayList);
            }
            if (arrayList2.isEmpty()) {
                return arrayList2;
            }
            arrayList2.add(view);
            fragmentTransitionImpl.addTargets(obj, arrayList2);
            return arrayList2;
        }
        return null;
    }

    private static Object j(final FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, final View view, final ArrayMap<String, String> arrayMap, final FragmentContainerTransition fragmentContainerTransition, final ArrayList<View> arrayList, final ArrayList<View> arrayList2, final Object obj, Object obj2) {
        Object s3;
        ArrayMap<String, String> arrayMap2;
        Object obj3;
        Rect rect;
        final Fragment fragment = fragmentContainerTransition.lastIn;
        final Fragment fragment2 = fragmentContainerTransition.firstOut;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z3 = fragmentContainerTransition.lastInIsPop;
        if (arrayMap.isEmpty()) {
            arrayMap2 = arrayMap;
            s3 = null;
        } else {
            s3 = s(fragmentTransitionImpl, fragment, fragment2, z3);
            arrayMap2 = arrayMap;
        }
        ArrayMap<String, View> g4 = g(fragmentTransitionImpl, arrayMap2, s3, fragmentContainerTransition);
        if (arrayMap.isEmpty()) {
            obj3 = null;
        } else {
            arrayList.addAll(g4.values());
            obj3 = s3;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        d(fragment, fragment2, z3, g4, true);
        if (obj3 != null) {
            rect = new Rect();
            fragmentTransitionImpl.setSharedElementTargets(obj3, view, arrayList);
            y(fragmentTransitionImpl, obj3, obj2, g4, fragmentContainerTransition.firstOutIsPop, fragmentContainerTransition.firstOutTransaction);
            if (obj != null) {
                fragmentTransitionImpl.setEpicenter(obj, rect);
            }
        } else {
            rect = null;
        }
        final Object obj4 = obj3;
        final Rect rect2 = rect;
        OneShotPreDrawListener.add(viewGroup, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.6
            @Override // java.lang.Runnable
            public void run() {
                ArrayMap<String, View> f4 = FragmentTransition.f(FragmentTransitionImpl.this, arrayMap, obj4, fragmentContainerTransition);
                if (f4 != null) {
                    arrayList2.addAll(f4.values());
                    arrayList2.add(view);
                }
                FragmentTransition.d(fragment, fragment2, z3, f4, false);
                Object obj5 = obj4;
                if (obj5 != null) {
                    FragmentTransitionImpl.this.swapSharedElementTargets(obj5, arrayList, arrayList2);
                    View r3 = FragmentTransition.r(f4, fragmentContainerTransition, obj, z3);
                    if (r3 != null) {
                        FragmentTransitionImpl.this.f(r3, rect2);
                    }
                }
            }
        });
        return obj3;
    }

    private static Object k(final FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, View view, ArrayMap<String, String> arrayMap, FragmentContainerTransition fragmentContainerTransition, ArrayList<View> arrayList, ArrayList<View> arrayList2, Object obj, Object obj2) {
        Object obj3;
        final View view2;
        final Rect rect;
        final Fragment fragment = fragmentContainerTransition.lastIn;
        final Fragment fragment2 = fragmentContainerTransition.firstOut;
        if (fragment != null) {
            fragment.requireView().setVisibility(0);
        }
        if (fragment == null || fragment2 == null) {
            return null;
        }
        final boolean z3 = fragmentContainerTransition.lastInIsPop;
        Object s3 = arrayMap.isEmpty() ? null : s(fragmentTransitionImpl, fragment, fragment2, z3);
        ArrayMap<String, View> g4 = g(fragmentTransitionImpl, arrayMap, s3, fragmentContainerTransition);
        final ArrayMap<String, View> f4 = f(fragmentTransitionImpl, arrayMap, s3, fragmentContainerTransition);
        if (arrayMap.isEmpty()) {
            if (g4 != null) {
                g4.clear();
            }
            if (f4 != null) {
                f4.clear();
            }
            obj3 = null;
        } else {
            a(arrayList, g4, arrayMap.keySet());
            a(arrayList2, f4, arrayMap.values());
            obj3 = s3;
        }
        if (obj == null && obj2 == null && obj3 == null) {
            return null;
        }
        d(fragment, fragment2, z3, g4, true);
        if (obj3 != null) {
            arrayList2.add(view);
            fragmentTransitionImpl.setSharedElementTargets(obj3, view, arrayList);
            y(fragmentTransitionImpl, obj3, obj2, g4, fragmentContainerTransition.firstOutIsPop, fragmentContainerTransition.firstOutTransaction);
            Rect rect2 = new Rect();
            View r3 = r(f4, fragmentContainerTransition, obj, z3);
            if (r3 != null) {
                fragmentTransitionImpl.setEpicenter(obj, rect2);
            }
            rect = rect2;
            view2 = r3;
        } else {
            view2 = null;
            rect = null;
        }
        OneShotPreDrawListener.add(viewGroup, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.5
            @Override // java.lang.Runnable
            public void run() {
                FragmentTransition.d(Fragment.this, fragment2, z3, f4, false);
                View view3 = view2;
                if (view3 != null) {
                    fragmentTransitionImpl.f(view3, rect);
                }
            }
        });
        return obj3;
    }

    private static void l(@NonNull ViewGroup viewGroup, FragmentContainerTransition fragmentContainerTransition, View view, ArrayMap<String, String> arrayMap, final Callback callback) {
        Object obj;
        Fragment fragment = fragmentContainerTransition.lastIn;
        final Fragment fragment2 = fragmentContainerTransition.firstOut;
        FragmentTransitionImpl h4 = h(fragment2, fragment);
        if (h4 == null) {
            return;
        }
        boolean z3 = fragmentContainerTransition.lastInIsPop;
        boolean z4 = fragmentContainerTransition.firstOutIsPop;
        Object p3 = p(h4, fragment, z3);
        Object q3 = q(h4, fragment2, z4);
        ArrayList arrayList = new ArrayList();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object j4 = j(h4, viewGroup, view, arrayMap, fragmentContainerTransition, arrayList, arrayList2, p3, q3);
        if (p3 == null && j4 == null) {
            obj = q3;
            if (obj == null) {
                return;
            }
        } else {
            obj = q3;
        }
        ArrayList<View> i2 = i(h4, obj, fragment2, arrayList, view);
        Object obj2 = (i2 == null || i2.isEmpty()) ? null : null;
        h4.addTarget(p3, view);
        Object t3 = t(h4, p3, obj2, j4, fragment, fragmentContainerTransition.lastInIsPop);
        if (fragment2 != null && i2 != null && (i2.size() > 0 || arrayList.size() > 0)) {
            final CancellationSignal cancellationSignal = new CancellationSignal();
            callback.onStart(fragment2, cancellationSignal);
            h4.setListenerForTransitionEnd(fragment2, t3, cancellationSignal, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.3
                @Override // java.lang.Runnable
                public void run() {
                    Callback.this.onComplete(fragment2, cancellationSignal);
                }
            });
        }
        if (t3 != null) {
            ArrayList<View> arrayList3 = new ArrayList<>();
            h4.scheduleRemoveTargets(t3, p3, arrayList3, obj2, i2, j4, arrayList2);
            x(h4, viewGroup, fragment, view, arrayList2, p3, arrayList3, obj2, i2);
            h4.j(viewGroup, arrayList2, arrayMap);
            h4.beginDelayedTransition(viewGroup, t3);
            h4.i(viewGroup, arrayList2, arrayMap);
        }
    }

    private static void m(@NonNull ViewGroup viewGroup, FragmentContainerTransition fragmentContainerTransition, View view, ArrayMap<String, String> arrayMap, final Callback callback) {
        Object obj;
        Fragment fragment = fragmentContainerTransition.lastIn;
        final Fragment fragment2 = fragmentContainerTransition.firstOut;
        FragmentTransitionImpl h4 = h(fragment2, fragment);
        if (h4 == null) {
            return;
        }
        boolean z3 = fragmentContainerTransition.lastInIsPop;
        boolean z4 = fragmentContainerTransition.firstOutIsPop;
        ArrayList<View> arrayList = new ArrayList<>();
        ArrayList<View> arrayList2 = new ArrayList<>();
        Object p3 = p(h4, fragment, z3);
        Object q3 = q(h4, fragment2, z4);
        Object k4 = k(h4, viewGroup, view, arrayMap, fragmentContainerTransition, arrayList2, arrayList, p3, q3);
        if (p3 == null && k4 == null) {
            obj = q3;
            if (obj == null) {
                return;
            }
        } else {
            obj = q3;
        }
        ArrayList<View> i2 = i(h4, obj, fragment2, arrayList2, view);
        ArrayList<View> i4 = i(h4, p3, fragment, arrayList, view);
        z(i4, 4);
        Object t3 = t(h4, p3, obj, k4, fragment, z3);
        if (fragment2 != null && i2 != null && (i2.size() > 0 || arrayList2.size() > 0)) {
            final CancellationSignal cancellationSignal = new CancellationSignal();
            callback.onStart(fragment2, cancellationSignal);
            h4.setListenerForTransitionEnd(fragment2, t3, cancellationSignal, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.1
                @Override // java.lang.Runnable
                public void run() {
                    Callback.this.onComplete(fragment2, cancellationSignal);
                }
            });
        }
        if (t3 != null) {
            u(h4, obj, fragment2, i2);
            ArrayList<String> h5 = h4.h(arrayList);
            h4.scheduleRemoveTargets(t3, p3, i4, obj, i2, k4, arrayList);
            h4.beginDelayedTransition(viewGroup, t3);
            h4.k(viewGroup, arrayList2, arrayList, h5, arrayMap);
            z(i4, 0);
            h4.swapSharedElementTargets(k4, arrayList2, arrayList);
        }
    }

    private static FragmentContainerTransition n(FragmentContainerTransition fragmentContainerTransition, SparseArray<FragmentContainerTransition> sparseArray, int i2) {
        if (fragmentContainerTransition == null) {
            FragmentContainerTransition fragmentContainerTransition2 = new FragmentContainerTransition();
            sparseArray.put(i2, fragmentContainerTransition2);
            return fragmentContainerTransition2;
        }
        return fragmentContainerTransition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String o(ArrayMap<String, String> arrayMap, String str) {
        int size = arrayMap.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (str.equals(arrayMap.valueAt(i2))) {
                return arrayMap.keyAt(i2);
            }
        }
        return null;
    }

    private static Object p(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, boolean z3) {
        Object enterTransition;
        if (fragment == null) {
            return null;
        }
        if (z3) {
            enterTransition = fragment.getReenterTransition();
        } else {
            enterTransition = fragment.getEnterTransition();
        }
        return fragmentTransitionImpl.cloneTransition(enterTransition);
    }

    private static Object q(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, boolean z3) {
        Object exitTransition;
        if (fragment == null) {
            return null;
        }
        if (z3) {
            exitTransition = fragment.getReturnTransition();
        } else {
            exitTransition = fragment.getExitTransition();
        }
        return fragmentTransitionImpl.cloneTransition(exitTransition);
    }

    static View r(ArrayMap<String, View> arrayMap, FragmentContainerTransition fragmentContainerTransition, Object obj, boolean z3) {
        ArrayList<String> arrayList;
        String str;
        BackStackRecord backStackRecord = fragmentContainerTransition.lastInTransaction;
        if (obj == null || arrayMap == null || (arrayList = backStackRecord.f6025p) == null || arrayList.isEmpty()) {
            return null;
        }
        if (z3) {
            str = backStackRecord.f6025p.get(0);
        } else {
            str = backStackRecord.f6026q.get(0);
        }
        return arrayMap.get(str);
    }

    private static Object s(FragmentTransitionImpl fragmentTransitionImpl, Fragment fragment, Fragment fragment2, boolean z3) {
        Object sharedElementEnterTransition;
        if (fragment == null || fragment2 == null) {
            return null;
        }
        if (z3) {
            sharedElementEnterTransition = fragment2.getSharedElementReturnTransition();
        } else {
            sharedElementEnterTransition = fragment.getSharedElementEnterTransition();
        }
        return fragmentTransitionImpl.wrapTransitionInSet(fragmentTransitionImpl.cloneTransition(sharedElementEnterTransition));
    }

    private static Object t(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Object obj2, Object obj3, Fragment fragment, boolean z3) {
        boolean z4;
        if (obj == null || obj2 == null || fragment == null) {
            z4 = true;
        } else if (z3) {
            z4 = fragment.getAllowReturnTransitionOverlap();
        } else {
            z4 = fragment.getAllowEnterTransitionOverlap();
        }
        if (z4) {
            return fragmentTransitionImpl.mergeTransitionsTogether(obj2, obj, obj3);
        }
        return fragmentTransitionImpl.mergeTransitionsInSequence(obj2, obj, obj3);
    }

    private static void u(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Fragment fragment, final ArrayList<View> arrayList) {
        if (fragment != null && obj != null && fragment.mAdded && fragment.mHidden && fragment.mHiddenChanged) {
            fragment.setHideReplaced(true);
            fragmentTransitionImpl.scheduleHideFragmentView(obj, fragment.getView(), arrayList);
            OneShotPreDrawListener.add(fragment.mContainer, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.2
                @Override // java.lang.Runnable
                public void run() {
                    FragmentTransition.z(arrayList, 4);
                }
            });
        }
    }

    private static FragmentTransitionImpl v() {
        try {
            return (FragmentTransitionImpl) FragmentTransitionSupport.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void w(@NonNull ArrayMap<String, String> arrayMap, @NonNull ArrayMap<String, View> arrayMap2) {
        for (int size = arrayMap.size() - 1; size >= 0; size--) {
            if (!arrayMap2.containsKey(arrayMap.valueAt(size))) {
                arrayMap.removeAt(size);
            }
        }
    }

    private static void x(final FragmentTransitionImpl fragmentTransitionImpl, ViewGroup viewGroup, final Fragment fragment, final View view, final ArrayList<View> arrayList, final Object obj, final ArrayList<View> arrayList2, final Object obj2, final ArrayList<View> arrayList3) {
        OneShotPreDrawListener.add(viewGroup, new Runnable() { // from class: androidx.fragment.app.FragmentTransition.4
            @Override // java.lang.Runnable
            public void run() {
                Object obj3 = obj;
                if (obj3 != null) {
                    fragmentTransitionImpl.removeTarget(obj3, view);
                    arrayList2.addAll(FragmentTransition.i(fragmentTransitionImpl, obj, fragment, arrayList, view));
                }
                if (arrayList3 != null) {
                    if (obj2 != null) {
                        ArrayList<View> arrayList4 = new ArrayList<>();
                        arrayList4.add(view);
                        fragmentTransitionImpl.replaceTargets(obj2, arrayList3, arrayList4);
                    }
                    arrayList3.clear();
                    arrayList3.add(view);
                }
            }
        });
    }

    private static void y(FragmentTransitionImpl fragmentTransitionImpl, Object obj, Object obj2, ArrayMap<String, View> arrayMap, boolean z3, BackStackRecord backStackRecord) {
        String str;
        ArrayList<String> arrayList = backStackRecord.f6025p;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (z3) {
            str = backStackRecord.f6026q.get(0);
        } else {
            str = backStackRecord.f6025p.get(0);
        }
        View view = arrayMap.get(str);
        fragmentTransitionImpl.setEpicenter(obj, view);
        if (obj2 != null) {
            fragmentTransitionImpl.setEpicenter(obj2, view);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void z(ArrayList<View> arrayList, int i2) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i2);
        }
    }
}
