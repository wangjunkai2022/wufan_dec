package androidx.recyclerview.widget;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class DiffUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final Comparator<Diagonal> f6841a = new Comparator<Diagonal>() { // from class: androidx.recyclerview.widget.DiffUtil.1
        @Override // java.util.Comparator
        public int compare(Diagonal diagonal, Diagonal diagonal2) {
            return diagonal.f6844x - diagonal2.f6844x;
        }
    };

    /* loaded from: classes2.dex */
    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int i2, int i4);

        public abstract boolean areItemsTheSame(int i2, int i4);

        @Nullable
        public Object getChangePayload(int i2, int i4) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class CenteredArray {

        /* renamed from: a  reason: collision with root package name */
        private final int[] f6842a;

        /* renamed from: b  reason: collision with root package name */
        private final int f6843b;

        CenteredArray(int i2) {
            int[] iArr = new int[i2];
            this.f6842a = iArr;
            this.f6843b = iArr.length / 2;
        }

        int[] a() {
            return this.f6842a;
        }

        int b(int i2) {
            return this.f6842a[i2 + this.f6843b];
        }

        void c(int i2, int i4) {
            this.f6842a[i2 + this.f6843b] = i4;
        }

        public void fill(int i2) {
            Arrays.fill(this.f6842a, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Diagonal {
        public final int size;

        /* renamed from: x  reason: collision with root package name */
        public final int f6844x;

        /* renamed from: y  reason: collision with root package name */
        public final int f6845y;

        Diagonal(int i2, int i4, int i5) {
            this.f6844x = i2;
            this.f6845y = i4;
            this.size = i5;
        }

        int a() {
            return this.f6844x + this.size;
        }

        int b() {
            return this.f6845y + this.size;
        }
    }

    /* loaded from: classes2.dex */
    public static class DiffResult {
        public static final int NO_POSITION = -1;

        /* renamed from: h  reason: collision with root package name */
        private static final int f6846h = 1;

        /* renamed from: i  reason: collision with root package name */
        private static final int f6847i = 2;

        /* renamed from: j  reason: collision with root package name */
        private static final int f6848j = 4;

        /* renamed from: k  reason: collision with root package name */
        private static final int f6849k = 8;

        /* renamed from: l  reason: collision with root package name */
        private static final int f6850l = 12;

        /* renamed from: m  reason: collision with root package name */
        private static final int f6851m = 4;

        /* renamed from: n  reason: collision with root package name */
        private static final int f6852n = 15;

        /* renamed from: a  reason: collision with root package name */
        private final List<Diagonal> f6853a;

        /* renamed from: b  reason: collision with root package name */
        private final int[] f6854b;

        /* renamed from: c  reason: collision with root package name */
        private final int[] f6855c;

        /* renamed from: d  reason: collision with root package name */
        private final Callback f6856d;

        /* renamed from: e  reason: collision with root package name */
        private final int f6857e;

        /* renamed from: f  reason: collision with root package name */
        private final int f6858f;

        /* renamed from: g  reason: collision with root package name */
        private final boolean f6859g;

        DiffResult(Callback callback, List<Diagonal> list, int[] iArr, int[] iArr2, boolean z3) {
            this.f6853a = list;
            this.f6854b = iArr;
            this.f6855c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.f6856d = callback;
            this.f6857e = callback.getOldListSize();
            this.f6858f = callback.getNewListSize();
            this.f6859g = z3;
            a();
            c();
        }

        private void a() {
            Diagonal diagonal = this.f6853a.isEmpty() ? null : this.f6853a.get(0);
            if (diagonal == null || diagonal.f6844x != 0 || diagonal.f6845y != 0) {
                this.f6853a.add(0, new Diagonal(0, 0, 0));
            }
            this.f6853a.add(new Diagonal(this.f6857e, this.f6858f, 0));
        }

        private void b(int i2) {
            int size = this.f6853a.size();
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                Diagonal diagonal = this.f6853a.get(i5);
                while (i4 < diagonal.f6845y) {
                    if (this.f6855c[i4] == 0 && this.f6856d.areItemsTheSame(i2, i4)) {
                        int i6 = this.f6856d.areContentsTheSame(i2, i4) ? 8 : 4;
                        this.f6854b[i2] = (i4 << 4) | i6;
                        this.f6855c[i4] = (i2 << 4) | i6;
                        return;
                    }
                    i4++;
                }
                i4 = diagonal.b();
            }
        }

        private void c() {
            for (Diagonal diagonal : this.f6853a) {
                for (int i2 = 0; i2 < diagonal.size; i2++) {
                    int i4 = diagonal.f6844x + i2;
                    int i5 = diagonal.f6845y + i2;
                    int i6 = this.f6856d.areContentsTheSame(i4, i5) ? 1 : 2;
                    this.f6854b[i4] = (i5 << 4) | i6;
                    this.f6855c[i5] = (i4 << 4) | i6;
                }
            }
            if (this.f6859g) {
                d();
            }
        }

        private void d() {
            int i2 = 0;
            for (Diagonal diagonal : this.f6853a) {
                while (i2 < diagonal.f6844x) {
                    if (this.f6854b[i2] == 0) {
                        b(i2);
                    }
                    i2++;
                }
                i2 = diagonal.a();
            }
        }

        @Nullable
        private static PostponedUpdate e(Collection<PostponedUpdate> collection, int i2, boolean z3) {
            PostponedUpdate postponedUpdate;
            Iterator<PostponedUpdate> it2 = collection.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    postponedUpdate = null;
                    break;
                }
                postponedUpdate = it2.next();
                if (postponedUpdate.f6860a == i2 && postponedUpdate.f6862c == z3) {
                    it2.remove();
                    break;
                }
            }
            while (it2.hasNext()) {
                PostponedUpdate next = it2.next();
                if (z3) {
                    next.f6861b--;
                } else {
                    next.f6861b++;
                }
            }
            return postponedUpdate;
        }

        public int convertNewPositionToOld(@IntRange(from = 0) int i2) {
            if (i2 >= 0 && i2 < this.f6858f) {
                int i4 = this.f6855c[i2];
                if ((i4 & 15) == 0) {
                    return -1;
                }
                return i4 >> 4;
            }
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i2 + ", new list size = " + this.f6858f);
        }

        public int convertOldPositionToNew(@IntRange(from = 0) int i2) {
            if (i2 >= 0 && i2 < this.f6857e) {
                int i4 = this.f6854b[i2];
                if ((i4 & 15) == 0) {
                    return -1;
                }
                return i4 >> 4;
            }
            throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + i2 + ", old list size = " + this.f6857e);
        }

        public void dispatchUpdatesTo(@NonNull RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }

        public void dispatchUpdatesTo(@NonNull ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback;
            int i2;
            if (listUpdateCallback instanceof BatchingListUpdateCallback) {
                batchingListUpdateCallback = (BatchingListUpdateCallback) listUpdateCallback;
            } else {
                batchingListUpdateCallback = new BatchingListUpdateCallback(listUpdateCallback);
            }
            int i4 = this.f6857e;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i5 = this.f6857e;
            int i6 = this.f6858f;
            for (int size = this.f6853a.size() - 1; size >= 0; size--) {
                Diagonal diagonal = this.f6853a.get(size);
                int a4 = diagonal.a();
                int b4 = diagonal.b();
                while (true) {
                    if (i5 <= a4) {
                        break;
                    }
                    i5--;
                    int i7 = this.f6854b[i5];
                    if ((i7 & 12) != 0) {
                        int i8 = i7 >> 4;
                        PostponedUpdate e4 = e(arrayDeque, i8, false);
                        if (e4 != null) {
                            int i9 = (i4 - e4.f6861b) - 1;
                            batchingListUpdateCallback.onMoved(i5, i9);
                            if ((i7 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i9, 1, this.f6856d.getChangePayload(i5, i8));
                            }
                        } else {
                            arrayDeque.add(new PostponedUpdate(i5, (i4 - i5) - 1, true));
                        }
                    } else {
                        batchingListUpdateCallback.onRemoved(i5, 1);
                        i4--;
                    }
                }
                while (i6 > b4) {
                    i6--;
                    int i10 = this.f6855c[i6];
                    if ((i10 & 12) != 0) {
                        int i11 = i10 >> 4;
                        PostponedUpdate e5 = e(arrayDeque, i11, true);
                        if (e5 == null) {
                            arrayDeque.add(new PostponedUpdate(i6, i4 - i5, false));
                        } else {
                            batchingListUpdateCallback.onMoved((i4 - e5.f6861b) - 1, i5);
                            if ((i10 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i5, 1, this.f6856d.getChangePayload(i11, i6));
                            }
                        }
                    } else {
                        batchingListUpdateCallback.onInserted(i5, 1);
                        i4++;
                    }
                }
                int i12 = diagonal.f6844x;
                int i13 = diagonal.f6845y;
                for (i2 = 0; i2 < diagonal.size; i2++) {
                    if ((this.f6854b[i12] & 15) == 2) {
                        batchingListUpdateCallback.onChanged(i12, 1, this.f6856d.getChangePayload(i12, i13));
                    }
                    i12++;
                    i13++;
                }
                i5 = diagonal.f6844x;
                i6 = diagonal.f6845y;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class ItemCallback<T> {
        public abstract boolean areContentsTheSame(@NonNull T t3, @NonNull T t4);

        public abstract boolean areItemsTheSame(@NonNull T t3, @NonNull T t4);

        @Nullable
        public Object getChangePayload(@NonNull T t3, @NonNull T t4) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class PostponedUpdate {

        /* renamed from: a  reason: collision with root package name */
        int f6860a;

        /* renamed from: b  reason: collision with root package name */
        int f6861b;

        /* renamed from: c  reason: collision with root package name */
        boolean f6862c;

        PostponedUpdate(int i2, int i4, boolean z3) {
            this.f6860a = i2;
            this.f6861b = i4;
            this.f6862c = z3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Range {

        /* renamed from: a  reason: collision with root package name */
        int f6863a;

        /* renamed from: b  reason: collision with root package name */
        int f6864b;

        /* renamed from: c  reason: collision with root package name */
        int f6865c;

        /* renamed from: d  reason: collision with root package name */
        int f6866d;

        public Range() {
        }

        int a() {
            return this.f6866d - this.f6865c;
        }

        int b() {
            return this.f6864b - this.f6863a;
        }

        public Range(int i2, int i4, int i5, int i6) {
            this.f6863a = i2;
            this.f6864b = i4;
            this.f6865c = i5;
            this.f6866d = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Snake {
        public int endX;
        public int endY;
        public boolean reverse;
        public int startX;
        public int startY;

        Snake() {
        }

        int a() {
            return Math.min(this.endX - this.startX, this.endY - this.startY);
        }

        boolean b() {
            return this.endY - this.startY != this.endX - this.startX;
        }

        boolean c() {
            return this.endY - this.startY > this.endX - this.startX;
        }

        @NonNull
        Diagonal d() {
            if (b()) {
                if (this.reverse) {
                    return new Diagonal(this.startX, this.startY, a());
                }
                if (c()) {
                    return new Diagonal(this.startX, this.startY + 1, a());
                }
                return new Diagonal(this.startX + 1, this.startY, a());
            }
            int i2 = this.startX;
            return new Diagonal(i2, this.startY, this.endX - i2);
        }
    }

    private DiffUtil() {
    }

    @Nullable
    private static Snake a(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int i2) {
        int b4;
        int i4;
        int i5;
        boolean z3 = (range.b() - range.a()) % 2 == 0;
        int b5 = range.b() - range.a();
        int i6 = -i2;
        for (int i7 = i6; i7 <= i2; i7 += 2) {
            if (i7 != i6 && (i7 == i2 || centeredArray2.b(i7 + 1) >= centeredArray2.b(i7 - 1))) {
                b4 = centeredArray2.b(i7 - 1);
                i4 = b4 - 1;
            } else {
                b4 = centeredArray2.b(i7 + 1);
                i4 = b4;
            }
            int i8 = range.f6866d - ((range.f6864b - i4) - i7);
            int i9 = (i2 == 0 || i4 != b4) ? i8 : i8 + 1;
            while (i4 > range.f6863a && i8 > range.f6865c && callback.areItemsTheSame(i4 - 1, i8 - 1)) {
                i4--;
                i8--;
            }
            centeredArray2.c(i7, i4);
            if (z3 && (i5 = b5 - i7) >= i6 && i5 <= i2 && centeredArray.b(i5) >= i4) {
                Snake snake = new Snake();
                snake.startX = i4;
                snake.startY = i8;
                snake.endX = b4;
                snake.endY = i9;
                snake.reverse = true;
                return snake;
            }
        }
        return null;
    }

    @Nullable
    private static Snake b(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int i2) {
        int b4;
        int i4;
        int i5;
        boolean z3 = Math.abs(range.b() - range.a()) % 2 == 1;
        int b5 = range.b() - range.a();
        int i6 = -i2;
        for (int i7 = i6; i7 <= i2; i7 += 2) {
            if (i7 != i6 && (i7 == i2 || centeredArray.b(i7 + 1) <= centeredArray.b(i7 - 1))) {
                b4 = centeredArray.b(i7 - 1);
                i4 = b4 + 1;
            } else {
                b4 = centeredArray.b(i7 + 1);
                i4 = b4;
            }
            int i8 = (range.f6865c + (i4 - range.f6863a)) - i7;
            int i9 = (i2 == 0 || i4 != b4) ? i8 : i8 - 1;
            while (i4 < range.f6864b && i8 < range.f6866d && callback.areItemsTheSame(i4, i8)) {
                i4++;
                i8++;
            }
            centeredArray.c(i7, i4);
            if (z3 && (i5 = b5 - i7) >= i6 + 1 && i5 <= i2 - 1 && centeredArray2.b(i5) <= i4) {
                Snake snake = new Snake();
                snake.startX = b4;
                snake.startY = i9;
                snake.endX = i4;
                snake.endY = i8;
                snake.reverse = false;
                return snake;
            }
        }
        return null;
    }

    @Nullable
    private static Snake c(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2) {
        if (range.b() >= 1 && range.a() >= 1) {
            int b4 = ((range.b() + range.a()) + 1) / 2;
            centeredArray.c(1, range.f6863a);
            centeredArray2.c(1, range.f6864b);
            for (int i2 = 0; i2 < b4; i2++) {
                Snake b5 = b(range, callback, centeredArray, centeredArray2, i2);
                if (b5 != null) {
                    return b5;
                }
                Snake a4 = a(range, callback, centeredArray, centeredArray2, i2);
                if (a4 != null) {
                    return a4;
                }
            }
        }
        return null;
    }

    @NonNull
    public static DiffResult calculateDiff(@NonNull Callback callback) {
        return calculateDiff(callback, true);
    }

    @NonNull
    public static DiffResult calculateDiff(@NonNull Callback callback, boolean z3) {
        int oldListSize = callback.getOldListSize();
        int newListSize = callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, oldListSize, 0, newListSize));
        int i2 = ((((oldListSize + newListSize) + 1) / 2) * 2) + 1;
        CenteredArray centeredArray = new CenteredArray(i2);
        CenteredArray centeredArray2 = new CenteredArray(i2);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range = (Range) arrayList2.remove(arrayList2.size() - 1);
            Snake c4 = c(range, callback, centeredArray, centeredArray2);
            if (c4 != null) {
                if (c4.a() > 0) {
                    arrayList.add(c4.d());
                }
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range) arrayList3.remove(arrayList3.size() - 1);
                range2.f6863a = range.f6863a;
                range2.f6865c = range.f6865c;
                range2.f6864b = c4.startX;
                range2.f6866d = c4.startY;
                arrayList2.add(range2);
                range.f6864b = range.f6864b;
                range.f6866d = range.f6866d;
                range.f6863a = c4.endX;
                range.f6865c = c4.endY;
                arrayList2.add(range);
            } else {
                arrayList3.add(range);
            }
        }
        Collections.sort(arrayList, f6841a);
        return new DiffResult(callback, arrayList, centeredArray.a(), centeredArray2.a(), z3);
    }
}
