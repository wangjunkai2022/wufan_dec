package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes2.dex */
public class GhostViewPort extends ViewGroup implements GhostView {

    /* renamed from: a  reason: collision with root package name */
    ViewGroup f7654a;

    /* renamed from: b  reason: collision with root package name */
    View f7655b;

    /* renamed from: c  reason: collision with root package name */
    final View f7656c;

    /* renamed from: d  reason: collision with root package name */
    int f7657d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Matrix f7658e;

    /* renamed from: f  reason: collision with root package name */
    private final ViewTreeObserver.OnPreDrawListener f7659f;

    GhostViewPort(View view) {
        super(view.getContext());
        this.f7659f = new ViewTreeObserver.OnPreDrawListener() { // from class: androidx.transition.GhostViewPort.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                View view2;
                ViewCompat.postInvalidateOnAnimation(GhostViewPort.this);
                GhostViewPort ghostViewPort = GhostViewPort.this;
                ViewGroup viewGroup = ghostViewPort.f7654a;
                if (viewGroup == null || (view2 = ghostViewPort.f7655b) == null) {
                    return true;
                }
                viewGroup.endViewTransition(view2);
                ViewCompat.postInvalidateOnAnimation(GhostViewPort.this.f7654a);
                GhostViewPort ghostViewPort2 = GhostViewPort.this;
                ghostViewPort2.f7654a = null;
                ghostViewPort2.f7655b = null;
                return true;
            }
        };
        this.f7656c = view;
        setWillNotDraw(false);
        setLayerType(2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static GhostViewPort a(View view, ViewGroup viewGroup, Matrix matrix) {
        GhostViewHolder ghostViewHolder;
        if (view.getParent() instanceof ViewGroup) {
            GhostViewHolder b4 = GhostViewHolder.b(viewGroup);
            GhostViewPort d4 = d(view);
            int i2 = 0;
            if (d4 != null && (ghostViewHolder = (GhostViewHolder) d4.getParent()) != b4) {
                i2 = d4.f7657d;
                ghostViewHolder.removeView(d4);
                d4 = null;
            }
            if (d4 == null) {
                if (matrix == null) {
                    matrix = new Matrix();
                    b(view, viewGroup, matrix);
                }
                d4 = new GhostViewPort(view);
                d4.g(matrix);
                if (b4 == null) {
                    b4 = new GhostViewHolder(viewGroup);
                } else {
                    b4.g();
                }
                c(viewGroup, b4);
                c(viewGroup, d4);
                b4.a(d4);
                d4.f7657d = i2;
            } else if (matrix != null) {
                d4.g(matrix);
            }
            d4.f7657d++;
            return d4;
        }
        throw new IllegalArgumentException("Ghosted views must be parented by a ViewGroup");
    }

    static void b(View view, ViewGroup viewGroup, Matrix matrix) {
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        matrix.reset();
        ViewUtils.j(viewGroup2, matrix);
        matrix.preTranslate(-viewGroup2.getScrollX(), -viewGroup2.getScrollY());
        ViewUtils.k(viewGroup, matrix);
    }

    static void c(View view, View view2) {
        ViewUtils.g(view2, view2.getLeft(), view2.getTop(), view2.getLeft() + view.getWidth(), view2.getTop() + view.getHeight());
    }

    static GhostViewPort d(View view) {
        return (GhostViewPort) view.getTag(R.id.ghost_view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(View view) {
        GhostViewPort d4 = d(view);
        if (d4 != null) {
            int i2 = d4.f7657d - 1;
            d4.f7657d = i2;
            if (i2 <= 0) {
                ((GhostViewHolder) d4.getParent()).removeView(d4);
            }
        }
    }

    static void f(@NonNull View view, @Nullable GhostViewPort ghostViewPort) {
        view.setTag(R.id.ghost_view, ghostViewPort);
    }

    void g(@NonNull Matrix matrix) {
        this.f7658e = matrix;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        f(this.f7656c, this);
        this.f7656c.getViewTreeObserver().addOnPreDrawListener(this.f7659f);
        ViewUtils.i(this.f7656c, 4);
        if (this.f7656c.getParent() != null) {
            ((View) this.f7656c.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f7656c.getViewTreeObserver().removeOnPreDrawListener(this.f7659f);
        ViewUtils.i(this.f7656c, 0);
        f(this.f7656c, null);
        if (this.f7656c.getParent() != null) {
            ((View) this.f7656c.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        CanvasUtils.a(canvas, true);
        canvas.setMatrix(this.f7658e);
        ViewUtils.i(this.f7656c, 0);
        this.f7656c.invalidate();
        ViewUtils.i(this.f7656c, 4);
        drawChild(canvas, this.f7656c, getDrawingTime());
        CanvasUtils.a(canvas, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
    }

    @Override // androidx.transition.GhostView
    public void reserveEndViewTransition(ViewGroup viewGroup, View view) {
        this.f7654a = viewGroup;
        this.f7655b = view;
    }

    @Override // android.view.View, androidx.transition.GhostView
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        if (d(this.f7656c) == this) {
            ViewUtils.i(this.f7656c, i2 == 0 ? 4 : 0);
        }
    }
}
