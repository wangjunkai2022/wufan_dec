package androidx.customview.widget;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes.dex */
class FocusStrategy {

    /* loaded from: classes.dex */
    public interface BoundsAdapter<T> {
        void obtainBounds(T t3, Rect rect);
    }

    /* loaded from: classes.dex */
    public interface CollectionAdapter<T, V> {
        V get(T t3, int i2);

        int size(T t3);
    }

    /* loaded from: classes.dex */
    private static class SequentialComparator<T> implements Comparator<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Rect f5185a = new Rect();

        /* renamed from: b  reason: collision with root package name */
        private final Rect f5186b = new Rect();

        /* renamed from: c  reason: collision with root package name */
        private final boolean f5187c;

        /* renamed from: d  reason: collision with root package name */
        private final BoundsAdapter<T> f5188d;

        SequentialComparator(boolean z3, BoundsAdapter<T> boundsAdapter) {
            this.f5187c = z3;
            this.f5188d = boundsAdapter;
        }

        @Override // java.util.Comparator
        public int compare(T t3, T t4) {
            Rect rect = this.f5185a;
            Rect rect2 = this.f5186b;
            this.f5188d.obtainBounds(t3, rect);
            this.f5188d.obtainBounds(t4, rect2);
            int i2 = rect.top;
            int i4 = rect2.top;
            if (i2 < i4) {
                return -1;
            }
            if (i2 > i4) {
                return 1;
            }
            int i5 = rect.left;
            int i6 = rect2.left;
            if (i5 < i6) {
                return this.f5187c ? 1 : -1;
            } else if (i5 > i6) {
                return this.f5187c ? -1 : 1;
            } else {
                int i7 = rect.bottom;
                int i8 = rect2.bottom;
                if (i7 < i8) {
                    return -1;
                }
                if (i7 > i8) {
                    return 1;
                }
                int i9 = rect.right;
                int i10 = rect2.right;
                if (i9 < i10) {
                    return this.f5187c ? 1 : -1;
                } else if (i9 > i10) {
                    return this.f5187c ? -1 : 1;
                } else {
                    return 0;
                }
            }
        }
    }

    private FocusStrategy() {
    }

    private static boolean a(int i2, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean b4 = b(i2, rect, rect2);
        if (b(i2, rect, rect3) || !b4) {
            return false;
        }
        return !h(i2, rect, rect3) || i2 == 17 || i2 == 66 || i(i2, rect, rect2) < k(i2, rect, rect3);
    }

    private static boolean b(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    private static <T> T c(T t3, ArrayList<T> arrayList, boolean z3) {
        int size = arrayList.size();
        int lastIndexOf = (t3 == null ? -1 : arrayList.lastIndexOf(t3)) + 1;
        if (lastIndexOf < size) {
            return arrayList.get(lastIndexOf);
        }
        if (!z3 || size <= 0) {
            return null;
        }
        return arrayList.get(0);
    }

    private static <T> T d(T t3, ArrayList<T> arrayList, boolean z3) {
        int size = arrayList.size();
        int indexOf = (t3 == null ? size : arrayList.indexOf(t3)) - 1;
        if (indexOf >= 0) {
            return arrayList.get(indexOf);
        }
        if (!z3 || size <= 0) {
            return null;
        }
        return arrayList.get(size - 1);
    }

    private static int e(int i2, int i4) {
        return (i2 * 13 * i2) + (i4 * i4);
    }

    private static boolean f(int i2, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        if (g(rect, rect2, i2)) {
            if (g(rect, rect3, i2) && !a(i2, rect, rect2, rect3)) {
                return !a(i2, rect, rect3, rect2) && e(i(i2, rect, rect2), m(i2, rect, rect2)) < e(i(i2, rect, rect3), m(i2, rect, rect3));
            }
            return true;
        }
        return false;
    }

    public static <L, T> T findNextFocusInAbsoluteDirection(@NonNull L l4, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t3, @NonNull Rect rect, int i2) {
        Rect rect2 = new Rect(rect);
        if (i2 == 17) {
            rect2.offset(rect.width() + 1, 0);
        } else if (i2 == 33) {
            rect2.offset(0, rect.height() + 1);
        } else if (i2 == 66) {
            rect2.offset(-(rect.width() + 1), 0);
        } else if (i2 == 130) {
            rect2.offset(0, -(rect.height() + 1));
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        T t4 = null;
        int size = collectionAdapter.size(l4);
        Rect rect3 = new Rect();
        for (int i4 = 0; i4 < size; i4++) {
            T t5 = collectionAdapter.get(l4, i4);
            if (t5 != t3) {
                boundsAdapter.obtainBounds(t5, rect3);
                if (f(i2, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t4 = t5;
                }
            }
        }
        return t4;
    }

    public static <L, T> T findNextFocusInRelativeDirection(@NonNull L l4, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t3, int i2, boolean z3, boolean z4) {
        int size = collectionAdapter.size(l4);
        ArrayList arrayList = new ArrayList(size);
        for (int i4 = 0; i4 < size; i4++) {
            arrayList.add(collectionAdapter.get(l4, i4));
        }
        Collections.sort(arrayList, new SequentialComparator(z3, boundsAdapter));
        if (i2 != 1) {
            if (i2 == 2) {
                return (T) c(t3, arrayList, z4);
            }
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
        }
        return (T) d(t3, arrayList, z4);
    }

    private static boolean g(@NonNull Rect rect, @NonNull Rect rect2, int i2) {
        if (i2 == 17) {
            int i4 = rect.right;
            int i5 = rect2.right;
            return (i4 > i5 || rect.left >= i5) && rect.left > rect2.left;
        } else if (i2 == 33) {
            int i6 = rect.bottom;
            int i7 = rect2.bottom;
            return (i6 > i7 || rect.top >= i7) && rect.top > rect2.top;
        } else if (i2 == 66) {
            int i8 = rect.left;
            int i9 = rect2.left;
            return (i8 < i9 || rect.right <= i9) && rect.right < rect2.right;
        } else if (i2 == 130) {
            int i10 = rect.top;
            int i11 = rect2.top;
            return (i10 < i11 || rect.bottom <= i11) && rect.bottom < rect2.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
    }

    private static boolean h(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i2 == 17) {
            return rect.left >= rect2.right;
        } else if (i2 == 33) {
            return rect.top >= rect2.bottom;
        } else if (i2 == 66) {
            return rect.right <= rect2.left;
        } else if (i2 == 130) {
            return rect.bottom <= rect2.top;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
    }

    private static int i(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(0, j(i2, rect, rect2));
    }

    private static int j(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        int i4;
        int i5;
        if (i2 == 17) {
            i4 = rect.left;
            i5 = rect2.right;
        } else if (i2 == 33) {
            i4 = rect.top;
            i5 = rect2.bottom;
        } else if (i2 == 66) {
            i4 = rect2.left;
            i5 = rect.right;
        } else if (i2 == 130) {
            i4 = rect2.top;
            i5 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i4 - i5;
    }

    private static int k(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(1, l(i2, rect, rect2));
    }

    private static int l(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        int i4;
        int i5;
        if (i2 == 17) {
            i4 = rect.left;
            i5 = rect2.left;
        } else if (i2 == 33) {
            i4 = rect.top;
            i5 = rect2.top;
        } else if (i2 == 66) {
            i4 = rect2.right;
            i5 = rect.right;
        } else if (i2 == 130) {
            i4 = rect2.bottom;
            i5 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i4 - i5;
    }

    private static int m(int i2, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i2 != 17) {
            if (i2 != 33) {
                if (i2 != 66) {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs((rect.left + (rect.width() / 2)) - (rect2.left + (rect2.width() / 2)));
        }
        return Math.abs((rect.top + (rect.height() / 2)) - (rect2.top + (rect2.height() / 2)));
    }
}
