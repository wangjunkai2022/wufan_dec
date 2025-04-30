package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.GestureDetectorCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.R;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {
    public static final int ACTION_STATE_DRAG = 2;
    public static final int ACTION_STATE_IDLE = 0;
    public static final int ACTION_STATE_SWIPE = 1;
    public static final int ANIMATION_TYPE_DRAG = 8;
    public static final int ANIMATION_TYPE_SWIPE_CANCEL = 4;
    public static final int ANIMATION_TYPE_SWIPE_SUCCESS = 2;
    public static final int DOWN = 2;
    private static final String E = "ItemTouchHelper";
    public static final int END = 32;
    private static final boolean F = false;
    private static final int G = -1;
    static final int H = 8;
    private static final int I = 255;
    static final int J = 65280;
    static final int K = 16711680;
    private static final int L = 1000;
    public static final int LEFT = 4;
    public static final int RIGHT = 8;
    public static final int START = 16;
    public static final int UP = 1;
    private ItemTouchHelperGestureListener A;
    private Rect C;
    private long D;

    /* renamed from: d  reason: collision with root package name */
    float f6929d;

    /* renamed from: e  reason: collision with root package name */
    float f6930e;

    /* renamed from: f  reason: collision with root package name */
    private float f6931f;

    /* renamed from: g  reason: collision with root package name */
    private float f6932g;

    /* renamed from: h  reason: collision with root package name */
    float f6933h;

    /* renamed from: i  reason: collision with root package name */
    float f6934i;

    /* renamed from: j  reason: collision with root package name */
    private float f6935j;

    /* renamed from: k  reason: collision with root package name */
    private float f6936k;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    Callback f6938m;

    /* renamed from: o  reason: collision with root package name */
    int f6940o;

    /* renamed from: q  reason: collision with root package name */
    private int f6942q;

    /* renamed from: r  reason: collision with root package name */
    RecyclerView f6943r;

    /* renamed from: t  reason: collision with root package name */
    VelocityTracker f6945t;

    /* renamed from: u  reason: collision with root package name */
    private List<RecyclerView.ViewHolder> f6946u;

    /* renamed from: v  reason: collision with root package name */
    private List<Integer> f6947v;

    /* renamed from: z  reason: collision with root package name */
    GestureDetectorCompat f6951z;

    /* renamed from: a  reason: collision with root package name */
    final List<View> f6926a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final float[] f6927b = new float[2];

    /* renamed from: c  reason: collision with root package name */
    RecyclerView.ViewHolder f6928c = null;

    /* renamed from: l  reason: collision with root package name */
    int f6937l = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f6939n = 0;
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    List<RecoverAnimation> f6941p = new ArrayList();

    /* renamed from: s  reason: collision with root package name */
    final Runnable f6944s = new Runnable() { // from class: androidx.recyclerview.widget.ItemTouchHelper.1
        @Override // java.lang.Runnable
        public void run() {
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            if (itemTouchHelper.f6928c == null || !itemTouchHelper.s()) {
                return;
            }
            ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
            RecyclerView.ViewHolder viewHolder = itemTouchHelper2.f6928c;
            if (viewHolder != null) {
                itemTouchHelper2.n(viewHolder);
            }
            ItemTouchHelper itemTouchHelper3 = ItemTouchHelper.this;
            itemTouchHelper3.f6943r.removeCallbacks(itemTouchHelper3.f6944s);
            ViewCompat.postOnAnimation(ItemTouchHelper.this.f6943r, this);
        }
    };

    /* renamed from: w  reason: collision with root package name */
    private RecyclerView.ChildDrawingOrderCallback f6948w = null;

    /* renamed from: x  reason: collision with root package name */
    View f6949x = null;

    /* renamed from: y  reason: collision with root package name */
    int f6950y = -1;
    private final RecyclerView.OnItemTouchListener B = new RecyclerView.OnItemTouchListener() { // from class: androidx.recyclerview.widget.ItemTouchHelper.2
        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public boolean onInterceptTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            int findPointerIndex;
            RecoverAnimation g4;
            ItemTouchHelper.this.f6951z.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                ItemTouchHelper.this.f6937l = motionEvent.getPointerId(0);
                ItemTouchHelper.this.f6929d = motionEvent.getX();
                ItemTouchHelper.this.f6930e = motionEvent.getY();
                ItemTouchHelper.this.o();
                ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
                if (itemTouchHelper.f6928c == null && (g4 = itemTouchHelper.g(motionEvent)) != null) {
                    ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
                    itemTouchHelper2.f6929d -= g4.f6978j;
                    itemTouchHelper2.f6930e -= g4.f6979k;
                    itemTouchHelper2.f(g4.f6973e, true);
                    if (ItemTouchHelper.this.f6926a.remove(g4.f6973e.itemView)) {
                        ItemTouchHelper itemTouchHelper3 = ItemTouchHelper.this;
                        itemTouchHelper3.f6938m.clearView(itemTouchHelper3.f6943r, g4.f6973e);
                    }
                    ItemTouchHelper.this.t(g4.f6973e, g4.f6974f);
                    ItemTouchHelper itemTouchHelper4 = ItemTouchHelper.this;
                    itemTouchHelper4.y(motionEvent, itemTouchHelper4.f6940o, 0);
                }
            } else if (actionMasked != 3 && actionMasked != 1) {
                int i2 = ItemTouchHelper.this.f6937l;
                if (i2 != -1 && (findPointerIndex = motionEvent.findPointerIndex(i2)) >= 0) {
                    ItemTouchHelper.this.c(actionMasked, motionEvent, findPointerIndex);
                }
            } else {
                ItemTouchHelper itemTouchHelper5 = ItemTouchHelper.this;
                itemTouchHelper5.f6937l = -1;
                itemTouchHelper5.t(null, 0);
            }
            VelocityTracker velocityTracker = ItemTouchHelper.this.f6945t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            return ItemTouchHelper.this.f6928c != null;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onRequestDisallowInterceptTouchEvent(boolean z3) {
            if (z3) {
                ItemTouchHelper.this.t(null, 0);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public void onTouchEvent(@NonNull RecyclerView recyclerView, @NonNull MotionEvent motionEvent) {
            ItemTouchHelper.this.f6951z.onTouchEvent(motionEvent);
            VelocityTracker velocityTracker = ItemTouchHelper.this.f6945t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (ItemTouchHelper.this.f6937l == -1) {
                return;
            }
            int actionMasked = motionEvent.getActionMasked();
            int findPointerIndex = motionEvent.findPointerIndex(ItemTouchHelper.this.f6937l);
            if (findPointerIndex >= 0) {
                ItemTouchHelper.this.c(actionMasked, motionEvent, findPointerIndex);
            }
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            RecyclerView.ViewHolder viewHolder = itemTouchHelper.f6928c;
            if (viewHolder == null) {
                return;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (findPointerIndex >= 0) {
                        itemTouchHelper.y(motionEvent, itemTouchHelper.f6940o, findPointerIndex);
                        ItemTouchHelper.this.n(viewHolder);
                        ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
                        itemTouchHelper2.f6943r.removeCallbacks(itemTouchHelper2.f6944s);
                        ItemTouchHelper.this.f6944s.run();
                        ItemTouchHelper.this.f6943r.invalidate();
                        return;
                    }
                    return;
                } else if (actionMasked != 3) {
                    if (actionMasked != 6) {
                        return;
                    }
                    int actionIndex = motionEvent.getActionIndex();
                    int pointerId = motionEvent.getPointerId(actionIndex);
                    ItemTouchHelper itemTouchHelper3 = ItemTouchHelper.this;
                    if (pointerId == itemTouchHelper3.f6937l) {
                        itemTouchHelper3.f6937l = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                        ItemTouchHelper itemTouchHelper4 = ItemTouchHelper.this;
                        itemTouchHelper4.y(motionEvent, itemTouchHelper4.f6940o, actionIndex);
                        return;
                    }
                    return;
                } else {
                    VelocityTracker velocityTracker2 = itemTouchHelper.f6945t;
                    if (velocityTracker2 != null) {
                        velocityTracker2.clear();
                    }
                }
            }
            ItemTouchHelper.this.t(null, 0);
            ItemTouchHelper.this.f6937l = -1;
        }
    };

    /* loaded from: classes2.dex */
    public static abstract class Callback {
        public static final int DEFAULT_DRAG_ANIMATION_DURATION = 200;
        public static final int DEFAULT_SWIPE_ANIMATION_DURATION = 250;

        /* renamed from: b  reason: collision with root package name */
        static final int f6961b = 3158064;

        /* renamed from: c  reason: collision with root package name */
        private static final int f6962c = 789516;

        /* renamed from: d  reason: collision with root package name */
        private static final Interpolator f6963d = new Interpolator() { // from class: androidx.recyclerview.widget.ItemTouchHelper.Callback.1
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f4) {
                return f4 * f4 * f4 * f4 * f4;
            }
        };

        /* renamed from: e  reason: collision with root package name */
        private static final Interpolator f6964e = new Interpolator() { // from class: androidx.recyclerview.widget.ItemTouchHelper.Callback.2
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f4) {
                float f5 = f4 - 1.0f;
                return (f5 * f5 * f5 * f5 * f5) + 1.0f;
            }
        };

        /* renamed from: f  reason: collision with root package name */
        private static final long f6965f = 2000;

        /* renamed from: a  reason: collision with root package name */
        private int f6966a = -1;

        private int b(RecyclerView recyclerView) {
            if (this.f6966a == -1) {
                this.f6966a = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            return this.f6966a;
        }

        public static int convertToRelativeDirection(int i2, int i4) {
            int i5;
            int i6 = i2 & f6962c;
            if (i6 == 0) {
                return i2;
            }
            int i7 = i2 & (i6 ^ (-1));
            if (i4 == 0) {
                i5 = i6 << 2;
            } else {
                int i8 = i6 << 1;
                i7 |= (-789517) & i8;
                i5 = (i8 & f6962c) << 2;
            }
            return i7 | i5;
        }

        @NonNull
        public static ItemTouchUIUtil getDefaultUIUtil() {
            return ItemTouchUIUtilImpl.f6986a;
        }

        public static int makeFlag(int i2, int i4) {
            return i4 << (i2 * 8);
        }

        public static int makeMovementFlags(int i2, int i4) {
            int makeFlag = makeFlag(0, i4 | i2);
            return makeFlag(2, i2) | makeFlag(1, i4) | makeFlag;
        }

        final int a(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return convertToAbsoluteDirection(getMovementFlags(recyclerView, viewHolder), ViewCompat.getLayoutDirection(recyclerView));
        }

        boolean c(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return (a(recyclerView, viewHolder) & ItemTouchHelper.K) != 0;
        }

        public boolean canDropOver(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2) {
            return true;
        }

        public RecyclerView.ViewHolder chooseDropTarget(@NonNull RecyclerView.ViewHolder viewHolder, @NonNull List<RecyclerView.ViewHolder> list, int i2, int i4) {
            int bottom;
            int abs;
            int top;
            int abs2;
            int left;
            int abs3;
            int right;
            int abs4;
            int width = i2 + viewHolder.itemView.getWidth();
            int height = i4 + viewHolder.itemView.getHeight();
            int left2 = i2 - viewHolder.itemView.getLeft();
            int top2 = i4 - viewHolder.itemView.getTop();
            int size = list.size();
            RecyclerView.ViewHolder viewHolder2 = null;
            int i5 = -1;
            for (int i6 = 0; i6 < size; i6++) {
                RecyclerView.ViewHolder viewHolder3 = list.get(i6);
                if (left2 > 0 && (right = viewHolder3.itemView.getRight() - width) < 0 && viewHolder3.itemView.getRight() > viewHolder.itemView.getRight() && (abs4 = Math.abs(right)) > i5) {
                    viewHolder2 = viewHolder3;
                    i5 = abs4;
                }
                if (left2 < 0 && (left = viewHolder3.itemView.getLeft() - i2) > 0 && viewHolder3.itemView.getLeft() < viewHolder.itemView.getLeft() && (abs3 = Math.abs(left)) > i5) {
                    viewHolder2 = viewHolder3;
                    i5 = abs3;
                }
                if (top2 < 0 && (top = viewHolder3.itemView.getTop() - i4) > 0 && viewHolder3.itemView.getTop() < viewHolder.itemView.getTop() && (abs2 = Math.abs(top)) > i5) {
                    viewHolder2 = viewHolder3;
                    i5 = abs2;
                }
                if (top2 > 0 && (bottom = viewHolder3.itemView.getBottom() - height) < 0 && viewHolder3.itemView.getBottom() > viewHolder.itemView.getBottom() && (abs = Math.abs(bottom)) > i5) {
                    viewHolder2 = viewHolder3;
                    i5 = abs;
                }
            }
            return viewHolder2;
        }

        public void clearView(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            ItemTouchUIUtilImpl.f6986a.clearView(viewHolder.itemView);
        }

        public int convertToAbsoluteDirection(int i2, int i4) {
            int i5;
            int i6 = i2 & f6961b;
            if (i6 == 0) {
                return i2;
            }
            int i7 = i2 & (i6 ^ (-1));
            if (i4 == 0) {
                i5 = i6 >> 2;
            } else {
                int i8 = i6 >> 1;
                i7 |= (-3158065) & i8;
                i5 = (i8 & f6961b) >> 2;
            }
            return i7 | i5;
        }

        boolean d(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return (a(recyclerView, viewHolder) & 65280) != 0;
        }

        void e(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, List<RecoverAnimation> list, int i2, float f4, float f5) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                RecoverAnimation recoverAnimation = list.get(i4);
                recoverAnimation.update();
                int save = canvas.save();
                onChildDraw(canvas, recyclerView, recoverAnimation.f6973e, recoverAnimation.f6978j, recoverAnimation.f6979k, recoverAnimation.f6974f, false);
                canvas.restoreToCount(save);
            }
            if (viewHolder != null) {
                int save2 = canvas.save();
                onChildDraw(canvas, recyclerView, viewHolder, f4, f5, i2, true);
                canvas.restoreToCount(save2);
            }
        }

        void f(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, List<RecoverAnimation> list, int i2, float f4, float f5) {
            int size = list.size();
            boolean z3 = false;
            for (int i4 = 0; i4 < size; i4++) {
                RecoverAnimation recoverAnimation = list.get(i4);
                int save = canvas.save();
                onChildDrawOver(canvas, recyclerView, recoverAnimation.f6973e, recoverAnimation.f6978j, recoverAnimation.f6979k, recoverAnimation.f6974f, false);
                canvas.restoreToCount(save);
            }
            if (viewHolder != null) {
                int save2 = canvas.save();
                onChildDrawOver(canvas, recyclerView, viewHolder, f4, f5, i2, true);
                canvas.restoreToCount(save2);
            }
            for (int i5 = size - 1; i5 >= 0; i5--) {
                RecoverAnimation recoverAnimation2 = list.get(i5);
                boolean z4 = recoverAnimation2.f6981m;
                if (z4 && !recoverAnimation2.f6977i) {
                    list.remove(i5);
                } else if (!z4) {
                    z3 = true;
                }
            }
            if (z3) {
                recyclerView.invalidate();
            }
        }

        public long getAnimationDuration(@NonNull RecyclerView recyclerView, int i2, float f4, float f5) {
            RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
            if (itemAnimator == null) {
                return i2 == 8 ? 200L : 250L;
            } else if (i2 == 8) {
                return itemAnimator.getMoveDuration();
            } else {
                return itemAnimator.getRemoveDuration();
            }
        }

        public int getBoundingBoxMargin() {
            return 0;
        }

        public float getMoveThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        public abstract int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder);

        public float getSwipeEscapeVelocity(float f4) {
            return f4;
        }

        public float getSwipeThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        public float getSwipeVelocityThreshold(float f4) {
            return f4;
        }

        public int interpolateOutOfBoundsScroll(@NonNull RecyclerView recyclerView, int i2, int i4, int i5, long j4) {
            int signum = (int) (((int) (((int) Math.signum(i4)) * b(recyclerView) * f6964e.getInterpolation(Math.min(1.0f, (Math.abs(i4) * 1.0f) / i2)))) * f6963d.getInterpolation(j4 <= f6965f ? ((float) j4) / 2000.0f : 1.0f));
            return signum == 0 ? i4 > 0 ? 1 : -1 : signum;
        }

        public boolean isItemViewSwipeEnabled() {
            return true;
        }

        public boolean isLongPressDragEnabled() {
            return true;
        }

        public void onChildDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, float f4, float f5, int i2, boolean z3) {
            ItemTouchUIUtilImpl.f6986a.onDraw(canvas, recyclerView, viewHolder.itemView, f4, f5, i2, z3);
        }

        public void onChildDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f4, float f5, int i2, boolean z3) {
            ItemTouchUIUtilImpl.f6986a.onDrawOver(canvas, recyclerView, viewHolder.itemView, f4, f5, i2, z3);
        }

        public abstract boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2);

        public void onMoved(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, int i2, @NonNull RecyclerView.ViewHolder viewHolder2, int i4, int i5, int i6) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof ViewDropHandler) {
                ((ViewDropHandler) layoutManager).prepareForDrop(viewHolder.itemView, viewHolder2.itemView, i5, i6);
                return;
            }
            if (layoutManager.canScrollHorizontally()) {
                if (layoutManager.getDecoratedLeft(viewHolder2.itemView) <= recyclerView.getPaddingLeft()) {
                    recyclerView.scrollToPosition(i4);
                }
                if (layoutManager.getDecoratedRight(viewHolder2.itemView) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                    recyclerView.scrollToPosition(i4);
                }
            }
            if (layoutManager.canScrollVertically()) {
                if (layoutManager.getDecoratedTop(viewHolder2.itemView) <= recyclerView.getPaddingTop()) {
                    recyclerView.scrollToPosition(i4);
                }
                if (layoutManager.getDecoratedBottom(viewHolder2.itemView) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                    recyclerView.scrollToPosition(i4);
                }
            }
        }

        public void onSelectedChanged(@Nullable RecyclerView.ViewHolder viewHolder, int i2) {
            if (viewHolder != null) {
                ItemTouchUIUtilImpl.f6986a.onSelected(viewHolder.itemView);
            }
        }

        public abstract void onSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class ItemTouchHelperGestureListener extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: a  reason: collision with root package name */
        private boolean f6967a = true;

        ItemTouchHelperGestureListener() {
        }

        void a() {
            this.f6967a = false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            View h4;
            RecyclerView.ViewHolder childViewHolder;
            if (!this.f6967a || (h4 = ItemTouchHelper.this.h(motionEvent)) == null || (childViewHolder = ItemTouchHelper.this.f6943r.getChildViewHolder(h4)) == null) {
                return;
            }
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            if (itemTouchHelper.f6938m.c(itemTouchHelper.f6943r, childViewHolder)) {
                int pointerId = motionEvent.getPointerId(0);
                int i2 = ItemTouchHelper.this.f6937l;
                if (pointerId == i2) {
                    int findPointerIndex = motionEvent.findPointerIndex(i2);
                    float x3 = motionEvent.getX(findPointerIndex);
                    float y3 = motionEvent.getY(findPointerIndex);
                    ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
                    itemTouchHelper2.f6929d = x3;
                    itemTouchHelper2.f6930e = y3;
                    itemTouchHelper2.f6934i = 0.0f;
                    itemTouchHelper2.f6933h = 0.0f;
                    if (itemTouchHelper2.f6938m.isLongPressDragEnabled()) {
                        ItemTouchHelper.this.t(childViewHolder, 2);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class RecoverAnimation implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final float f6969a;

        /* renamed from: b  reason: collision with root package name */
        final float f6970b;

        /* renamed from: c  reason: collision with root package name */
        final float f6971c;

        /* renamed from: d  reason: collision with root package name */
        final float f6972d;

        /* renamed from: e  reason: collision with root package name */
        final RecyclerView.ViewHolder f6973e;

        /* renamed from: f  reason: collision with root package name */
        final int f6974f;
        @VisibleForTesting

        /* renamed from: g  reason: collision with root package name */
        final ValueAnimator f6975g;

        /* renamed from: h  reason: collision with root package name */
        final int f6976h;

        /* renamed from: i  reason: collision with root package name */
        boolean f6977i;

        /* renamed from: j  reason: collision with root package name */
        float f6978j;

        /* renamed from: k  reason: collision with root package name */
        float f6979k;

        /* renamed from: l  reason: collision with root package name */
        boolean f6980l = false;

        /* renamed from: m  reason: collision with root package name */
        boolean f6981m = false;

        /* renamed from: n  reason: collision with root package name */
        private float f6982n;

        RecoverAnimation(RecyclerView.ViewHolder viewHolder, int i2, int i4, float f4, float f5, float f6, float f7) {
            this.f6974f = i4;
            this.f6976h = i2;
            this.f6973e = viewHolder;
            this.f6969a = f4;
            this.f6970b = f5;
            this.f6971c = f6;
            this.f6972d = f7;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.f6975g = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ItemTouchHelper.RecoverAnimation.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    RecoverAnimation.this.setFraction(valueAnimator.getAnimatedFraction());
                }
            });
            ofFloat.setTarget(viewHolder.itemView);
            ofFloat.addListener(this);
            setFraction(0.0f);
        }

        public void cancel() {
            this.f6975g.cancel();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            setFraction(1.0f);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f6981m) {
                this.f6973e.setIsRecyclable(true);
            }
            this.f6981m = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        public void setDuration(long j4) {
            this.f6975g.setDuration(j4);
        }

        public void setFraction(float f4) {
            this.f6982n = f4;
        }

        public void start() {
            this.f6973e.setIsRecyclable(false);
            this.f6975g.start();
        }

        public void update() {
            float f4 = this.f6969a;
            float f5 = this.f6971c;
            if (f4 == f5) {
                this.f6978j = this.f6973e.itemView.getTranslationX();
            } else {
                this.f6978j = f4 + (this.f6982n * (f5 - f4));
            }
            float f6 = this.f6970b;
            float f7 = this.f6972d;
            if (f6 == f7) {
                this.f6979k = this.f6973e.itemView.getTranslationY();
            } else {
                this.f6979k = f6 + (this.f6982n * (f7 - f6));
            }
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class SimpleCallback extends Callback {

        /* renamed from: g  reason: collision with root package name */
        private int f6984g;

        /* renamed from: h  reason: collision with root package name */
        private int f6985h;

        public SimpleCallback(int i2, int i4) {
            this.f6984g = i4;
            this.f6985h = i2;
        }

        public int getDragDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return this.f6985h;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return Callback.makeMovementFlags(getDragDirs(recyclerView, viewHolder), getSwipeDirs(recyclerView, viewHolder));
        }

        public int getSwipeDirs(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
            return this.f6984g;
        }

        public void setDefaultDragDirs(int i2) {
            this.f6985h = i2;
        }

        public void setDefaultSwipeDirs(int i2) {
            this.f6984g = i2;
        }
    }

    /* loaded from: classes2.dex */
    public interface ViewDropHandler {
        void prepareForDrop(@NonNull View view, @NonNull View view2, int i2, int i4);
    }

    public ItemTouchHelper(@NonNull Callback callback) {
        this.f6938m = callback;
    }

    private void a() {
        if (Build.VERSION.SDK_INT >= 21) {
            return;
        }
        if (this.f6948w == null) {
            this.f6948w = new RecyclerView.ChildDrawingOrderCallback() { // from class: androidx.recyclerview.widget.ItemTouchHelper.5
                @Override // androidx.recyclerview.widget.RecyclerView.ChildDrawingOrderCallback
                public int onGetChildDrawingOrder(int i2, int i4) {
                    ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
                    View view = itemTouchHelper.f6949x;
                    if (view == null) {
                        return i4;
                    }
                    int i5 = itemTouchHelper.f6950y;
                    if (i5 == -1) {
                        i5 = itemTouchHelper.f6943r.indexOfChild(view);
                        ItemTouchHelper.this.f6950y = i5;
                    }
                    return i4 == i2 + (-1) ? i5 : i4 < i5 ? i4 : i4 + 1;
                }
            };
        }
        this.f6943r.setChildDrawingOrderCallback(this.f6948w);
    }

    private int b(RecyclerView.ViewHolder viewHolder, int i2) {
        if ((i2 & 12) != 0) {
            int i4 = this.f6933h > 0.0f ? 8 : 4;
            VelocityTracker velocityTracker = this.f6945t;
            if (velocityTracker != null && this.f6937l > -1) {
                velocityTracker.computeCurrentVelocity(1000, this.f6938m.getSwipeVelocityThreshold(this.f6932g));
                float xVelocity = this.f6945t.getXVelocity(this.f6937l);
                float yVelocity = this.f6945t.getYVelocity(this.f6937l);
                int i5 = xVelocity <= 0.0f ? 4 : 8;
                float abs = Math.abs(xVelocity);
                if ((i5 & i2) != 0 && i4 == i5 && abs >= this.f6938m.getSwipeEscapeVelocity(this.f6931f) && abs > Math.abs(yVelocity)) {
                    return i5;
                }
            }
            float width = this.f6943r.getWidth() * this.f6938m.getSwipeThreshold(viewHolder);
            if ((i2 & i4) == 0 || Math.abs(this.f6933h) <= width) {
                return 0;
            }
            return i4;
        }
        return 0;
    }

    private int d(RecyclerView.ViewHolder viewHolder, int i2) {
        if ((i2 & 3) != 0) {
            int i4 = this.f6934i > 0.0f ? 2 : 1;
            VelocityTracker velocityTracker = this.f6945t;
            if (velocityTracker != null && this.f6937l > -1) {
                velocityTracker.computeCurrentVelocity(1000, this.f6938m.getSwipeVelocityThreshold(this.f6932g));
                float xVelocity = this.f6945t.getXVelocity(this.f6937l);
                float yVelocity = this.f6945t.getYVelocity(this.f6937l);
                int i5 = yVelocity <= 0.0f ? 1 : 2;
                float abs = Math.abs(yVelocity);
                if ((i5 & i2) != 0 && i5 == i4 && abs >= this.f6938m.getSwipeEscapeVelocity(this.f6931f) && abs > Math.abs(xVelocity)) {
                    return i5;
                }
            }
            float height = this.f6943r.getHeight() * this.f6938m.getSwipeThreshold(viewHolder);
            if ((i2 & i4) == 0 || Math.abs(this.f6934i) <= height) {
                return 0;
            }
            return i4;
        }
        return 0;
    }

    private void e() {
        this.f6943r.removeItemDecoration(this);
        this.f6943r.removeOnItemTouchListener(this.B);
        this.f6943r.removeOnChildAttachStateChangeListener(this);
        for (int size = this.f6941p.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = this.f6941p.get(0);
            recoverAnimation.cancel();
            this.f6938m.clearView(this.f6943r, recoverAnimation.f6973e);
        }
        this.f6941p.clear();
        this.f6949x = null;
        this.f6950y = -1;
        q();
        w();
    }

    private List<RecyclerView.ViewHolder> i(RecyclerView.ViewHolder viewHolder) {
        RecyclerView.ViewHolder viewHolder2 = viewHolder;
        List<RecyclerView.ViewHolder> list = this.f6946u;
        if (list == null) {
            this.f6946u = new ArrayList();
            this.f6947v = new ArrayList();
        } else {
            list.clear();
            this.f6947v.clear();
        }
        int boundingBoxMargin = this.f6938m.getBoundingBoxMargin();
        int round = Math.round(this.f6935j + this.f6933h) - boundingBoxMargin;
        int round2 = Math.round(this.f6936k + this.f6934i) - boundingBoxMargin;
        int i2 = boundingBoxMargin * 2;
        int width = viewHolder2.itemView.getWidth() + round + i2;
        int height = viewHolder2.itemView.getHeight() + round2 + i2;
        int i4 = (round + width) / 2;
        int i5 = (round2 + height) / 2;
        RecyclerView.LayoutManager layoutManager = this.f6943r.getLayoutManager();
        int childCount = layoutManager.getChildCount();
        int i6 = 0;
        while (i6 < childCount) {
            View childAt = layoutManager.getChildAt(i6);
            if (childAt != viewHolder2.itemView && childAt.getBottom() >= round2 && childAt.getTop() <= height && childAt.getRight() >= round && childAt.getLeft() <= width) {
                RecyclerView.ViewHolder childViewHolder = this.f6943r.getChildViewHolder(childAt);
                if (this.f6938m.canDropOver(this.f6943r, this.f6928c, childViewHolder)) {
                    int abs = Math.abs(i4 - ((childAt.getLeft() + childAt.getRight()) / 2));
                    int abs2 = Math.abs(i5 - ((childAt.getTop() + childAt.getBottom()) / 2));
                    int i7 = (abs * abs) + (abs2 * abs2);
                    int size = this.f6946u.size();
                    int i8 = 0;
                    for (int i9 = 0; i9 < size && i7 > this.f6947v.get(i9).intValue(); i9++) {
                        i8++;
                    }
                    this.f6946u.add(i8, childViewHolder);
                    this.f6947v.add(i8, Integer.valueOf(i7));
                }
            }
            i6++;
            viewHolder2 = viewHolder;
        }
        return this.f6946u;
    }

    private RecyclerView.ViewHolder j(MotionEvent motionEvent) {
        View h4;
        RecyclerView.LayoutManager layoutManager = this.f6943r.getLayoutManager();
        int i2 = this.f6937l;
        if (i2 == -1) {
            return null;
        }
        int findPointerIndex = motionEvent.findPointerIndex(i2);
        float abs = Math.abs(motionEvent.getX(findPointerIndex) - this.f6929d);
        float abs2 = Math.abs(motionEvent.getY(findPointerIndex) - this.f6930e);
        int i4 = this.f6942q;
        if (abs >= i4 || abs2 >= i4) {
            if (abs <= abs2 || !layoutManager.canScrollHorizontally()) {
                if ((abs2 <= abs || !layoutManager.canScrollVertically()) && (h4 = h(motionEvent)) != null) {
                    return this.f6943r.getChildViewHolder(h4);
                }
                return null;
            }
            return null;
        }
        return null;
    }

    private void k(float[] fArr) {
        if ((this.f6940o & 12) != 0) {
            fArr[0] = (this.f6935j + this.f6933h) - this.f6928c.itemView.getLeft();
        } else {
            fArr[0] = this.f6928c.itemView.getTranslationX();
        }
        if ((this.f6940o & 3) != 0) {
            fArr[1] = (this.f6936k + this.f6934i) - this.f6928c.itemView.getTop();
        } else {
            fArr[1] = this.f6928c.itemView.getTranslationY();
        }
    }

    private static boolean m(View view, float f4, float f5, float f6, float f7) {
        return f4 >= f6 && f4 <= f6 + ((float) view.getWidth()) && f5 >= f7 && f5 <= f7 + ((float) view.getHeight());
    }

    private void q() {
        VelocityTracker velocityTracker = this.f6945t;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f6945t = null;
        }
    }

    private void u() {
        this.f6942q = ViewConfiguration.get(this.f6943r.getContext()).getScaledTouchSlop();
        this.f6943r.addItemDecoration(this);
        this.f6943r.addOnItemTouchListener(this.B);
        this.f6943r.addOnChildAttachStateChangeListener(this);
        v();
    }

    private void v() {
        this.A = new ItemTouchHelperGestureListener();
        this.f6951z = new GestureDetectorCompat(this.f6943r.getContext(), this.A);
    }

    private void w() {
        ItemTouchHelperGestureListener itemTouchHelperGestureListener = this.A;
        if (itemTouchHelperGestureListener != null) {
            itemTouchHelperGestureListener.a();
            this.A = null;
        }
        if (this.f6951z != null) {
            this.f6951z = null;
        }
    }

    private int x(RecyclerView.ViewHolder viewHolder) {
        if (this.f6939n == 2) {
            return 0;
        }
        int movementFlags = this.f6938m.getMovementFlags(this.f6943r, viewHolder);
        int convertToAbsoluteDirection = (this.f6938m.convertToAbsoluteDirection(movementFlags, ViewCompat.getLayoutDirection(this.f6943r)) & 65280) >> 8;
        if (convertToAbsoluteDirection == 0) {
            return 0;
        }
        int i2 = (movementFlags & 65280) >> 8;
        if (Math.abs(this.f6933h) > Math.abs(this.f6934i)) {
            int b4 = b(viewHolder, convertToAbsoluteDirection);
            if (b4 > 0) {
                return (i2 & b4) == 0 ? Callback.convertToRelativeDirection(b4, ViewCompat.getLayoutDirection(this.f6943r)) : b4;
            }
            int d4 = d(viewHolder, convertToAbsoluteDirection);
            if (d4 > 0) {
                return d4;
            }
        } else {
            int d5 = d(viewHolder, convertToAbsoluteDirection);
            if (d5 > 0) {
                return d5;
            }
            int b5 = b(viewHolder, convertToAbsoluteDirection);
            if (b5 > 0) {
                return (i2 & b5) == 0 ? Callback.convertToRelativeDirection(b5, ViewCompat.getLayoutDirection(this.f6943r)) : b5;
            }
        }
        return 0;
    }

    public void attachToRecyclerView(@Nullable RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f6943r;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            e();
        }
        this.f6943r = recyclerView;
        if (recyclerView != null) {
            Resources resources = recyclerView.getResources();
            this.f6931f = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
            this.f6932g = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
            u();
        }
    }

    void c(int i2, MotionEvent motionEvent, int i4) {
        RecyclerView.ViewHolder j4;
        int a4;
        if (this.f6928c != null || i2 != 2 || this.f6939n == 2 || !this.f6938m.isItemViewSwipeEnabled() || this.f6943r.getScrollState() == 1 || (j4 = j(motionEvent)) == null || (a4 = (this.f6938m.a(this.f6943r, j4) & 65280) >> 8) == 0) {
            return;
        }
        float x3 = motionEvent.getX(i4);
        float y3 = motionEvent.getY(i4);
        float f4 = x3 - this.f6929d;
        float f5 = y3 - this.f6930e;
        float abs = Math.abs(f4);
        float abs2 = Math.abs(f5);
        int i5 = this.f6942q;
        if (abs >= i5 || abs2 >= i5) {
            if (abs > abs2) {
                if (f4 < 0.0f && (a4 & 4) == 0) {
                    return;
                }
                if (f4 > 0.0f && (a4 & 8) == 0) {
                    return;
                }
            } else if (f5 < 0.0f && (a4 & 1) == 0) {
                return;
            } else {
                if (f5 > 0.0f && (a4 & 2) == 0) {
                    return;
                }
            }
            this.f6934i = 0.0f;
            this.f6933h = 0.0f;
            this.f6937l = motionEvent.getPointerId(0);
            t(j4, 1);
        }
    }

    void f(RecyclerView.ViewHolder viewHolder, boolean z3) {
        for (int size = this.f6941p.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = this.f6941p.get(size);
            if (recoverAnimation.f6973e == viewHolder) {
                recoverAnimation.f6980l |= z3;
                if (!recoverAnimation.f6981m) {
                    recoverAnimation.cancel();
                }
                this.f6941p.remove(size);
                return;
            }
        }
    }

    RecoverAnimation g(MotionEvent motionEvent) {
        if (this.f6941p.isEmpty()) {
            return null;
        }
        View h4 = h(motionEvent);
        for (int size = this.f6941p.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = this.f6941p.get(size);
            if (recoverAnimation.f6973e.itemView == h4) {
                return recoverAnimation;
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.setEmpty();
    }

    View h(MotionEvent motionEvent) {
        float x3 = motionEvent.getX();
        float y3 = motionEvent.getY();
        RecyclerView.ViewHolder viewHolder = this.f6928c;
        if (viewHolder != null) {
            View view = viewHolder.itemView;
            if (m(view, x3, y3, this.f6935j + this.f6933h, this.f6936k + this.f6934i)) {
                return view;
            }
        }
        for (int size = this.f6941p.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = this.f6941p.get(size);
            View view2 = recoverAnimation.f6973e.itemView;
            if (m(view2, x3, y3, recoverAnimation.f6978j, recoverAnimation.f6979k)) {
                return view2;
            }
        }
        return this.f6943r.findChildViewUnder(x3, y3);
    }

    boolean l() {
        int size = this.f6941p.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (!this.f6941p.get(i2).f6981m) {
                return true;
            }
        }
        return false;
    }

    void n(RecyclerView.ViewHolder viewHolder) {
        if (!this.f6943r.isLayoutRequested() && this.f6939n == 2) {
            float moveThreshold = this.f6938m.getMoveThreshold(viewHolder);
            int i2 = (int) (this.f6935j + this.f6933h);
            int i4 = (int) (this.f6936k + this.f6934i);
            if (Math.abs(i4 - viewHolder.itemView.getTop()) >= viewHolder.itemView.getHeight() * moveThreshold || Math.abs(i2 - viewHolder.itemView.getLeft()) >= viewHolder.itemView.getWidth() * moveThreshold) {
                List<RecyclerView.ViewHolder> i5 = i(viewHolder);
                if (i5.size() == 0) {
                    return;
                }
                RecyclerView.ViewHolder chooseDropTarget = this.f6938m.chooseDropTarget(viewHolder, i5, i2, i4);
                if (chooseDropTarget == null) {
                    this.f6946u.clear();
                    this.f6947v.clear();
                    return;
                }
                int absoluteAdapterPosition = chooseDropTarget.getAbsoluteAdapterPosition();
                int absoluteAdapterPosition2 = viewHolder.getAbsoluteAdapterPosition();
                if (this.f6938m.onMove(this.f6943r, viewHolder, chooseDropTarget)) {
                    this.f6938m.onMoved(this.f6943r, viewHolder, absoluteAdapterPosition2, chooseDropTarget, absoluteAdapterPosition, i2, i4);
                }
            }
        }
    }

    void o() {
        VelocityTracker velocityTracker = this.f6945t;
        if (velocityTracker != null) {
            velocityTracker.recycle();
        }
        this.f6945t = VelocityTracker.obtain();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public void onChildViewAttachedToWindow(@NonNull View view) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public void onChildViewDetachedFromWindow(@NonNull View view) {
        r(view);
        RecyclerView.ViewHolder childViewHolder = this.f6943r.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        RecyclerView.ViewHolder viewHolder = this.f6928c;
        if (viewHolder != null && childViewHolder == viewHolder) {
            t(null, 0);
            return;
        }
        f(childViewHolder, false);
        if (this.f6926a.remove(childViewHolder.itemView)) {
            this.f6938m.clearView(this.f6943r, childViewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        float f4;
        float f5;
        this.f6950y = -1;
        if (this.f6928c != null) {
            k(this.f6927b);
            float[] fArr = this.f6927b;
            float f6 = fArr[0];
            f5 = fArr[1];
            f4 = f6;
        } else {
            f4 = 0.0f;
            f5 = 0.0f;
        }
        this.f6938m.e(canvas, recyclerView, this.f6928c, this.f6941p, this.f6939n, f4, f5);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        float f4;
        float f5;
        if (this.f6928c != null) {
            k(this.f6927b);
            float[] fArr = this.f6927b;
            float f6 = fArr[0];
            f5 = fArr[1];
            f4 = f6;
        } else {
            f4 = 0.0f;
            f5 = 0.0f;
        }
        this.f6938m.f(canvas, recyclerView, this.f6928c, this.f6941p, this.f6939n, f4, f5);
    }

    void p(final RecoverAnimation recoverAnimation, final int i2) {
        this.f6943r.post(new Runnable() { // from class: androidx.recyclerview.widget.ItemTouchHelper.4
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView recyclerView = ItemTouchHelper.this.f6943r;
                if (recyclerView == null || !recyclerView.isAttachedToWindow()) {
                    return;
                }
                RecoverAnimation recoverAnimation2 = recoverAnimation;
                if (recoverAnimation2.f6980l || recoverAnimation2.f6973e.getAbsoluteAdapterPosition() == -1) {
                    return;
                }
                RecyclerView.ItemAnimator itemAnimator = ItemTouchHelper.this.f6943r.getItemAnimator();
                if ((itemAnimator == null || !itemAnimator.isRunning(null)) && !ItemTouchHelper.this.l()) {
                    ItemTouchHelper.this.f6938m.onSwiped(recoverAnimation.f6973e, i2);
                } else {
                    ItemTouchHelper.this.f6943r.post(this);
                }
            }
        });
    }

    void r(View view) {
        if (view == this.f6949x) {
            this.f6949x = null;
            if (this.f6948w != null) {
                this.f6943r.setChildDrawingOrderCallback(null);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c1, code lost:
        if (r1 > 0) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0100 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean s() {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.s():boolean");
    }

    public void startDrag(@NonNull RecyclerView.ViewHolder viewHolder) {
        if (this.f6938m.c(this.f6943r, viewHolder) && viewHolder.itemView.getParent() == this.f6943r) {
            o();
            this.f6934i = 0.0f;
            this.f6933h = 0.0f;
            t(viewHolder, 2);
        }
    }

    public void startSwipe(@NonNull RecyclerView.ViewHolder viewHolder) {
        if (this.f6938m.d(this.f6943r, viewHolder) && viewHolder.itemView.getParent() == this.f6943r) {
            o();
            this.f6934i = 0.0f;
            this.f6933h = 0.0f;
            t(viewHolder, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0137  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void t(@androidx.annotation.Nullable androidx.recyclerview.widget.RecyclerView.ViewHolder r24, int r25) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.ItemTouchHelper.t(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    void y(MotionEvent motionEvent, int i2, int i4) {
        float x3 = motionEvent.getX(i4);
        float y3 = motionEvent.getY(i4);
        float f4 = x3 - this.f6929d;
        this.f6933h = f4;
        this.f6934i = y3 - this.f6930e;
        if ((i2 & 4) == 0) {
            this.f6933h = Math.max(0.0f, f4);
        }
        if ((i2 & 8) == 0) {
            this.f6933h = Math.min(0.0f, this.f6933h);
        }
        if ((i2 & 1) == 0) {
            this.f6934i = Math.max(0.0f, this.f6934i);
        }
        if ((i2 & 2) == 0) {
            this.f6934i = Math.min(0.0f, this.f6934i);
        }
    }
}
