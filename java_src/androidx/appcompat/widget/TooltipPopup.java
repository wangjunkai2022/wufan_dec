package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class TooltipPopup {

    /* renamed from: h  reason: collision with root package name */
    private static final String f1548h = "TooltipPopup";

    /* renamed from: a  reason: collision with root package name */
    private final Context f1549a;

    /* renamed from: b  reason: collision with root package name */
    private final View f1550b;

    /* renamed from: c  reason: collision with root package name */
    private final TextView f1551c;

    /* renamed from: d  reason: collision with root package name */
    private final WindowManager.LayoutParams f1552d;

    /* renamed from: e  reason: collision with root package name */
    private final Rect f1553e;

    /* renamed from: f  reason: collision with root package name */
    private final int[] f1554f;

    /* renamed from: g  reason: collision with root package name */
    private final int[] f1555g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TooltipPopup(@NonNull Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f1552d = layoutParams;
        this.f1553e = new Rect();
        this.f1554f = new int[2];
        this.f1555g = new int[2];
        this.f1549a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
        this.f1550b = inflate;
        this.f1551c = (TextView) inflate.findViewById(R.id.message);
        layoutParams.setTitle(getClass().getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    private void a(View view, int i2, int i4, boolean z3, WindowManager.LayoutParams layoutParams) {
        int height;
        int i5;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1549a.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i2 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1549a.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
            height = i4 + dimensionPixelOffset2;
            i5 = i4 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i5 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1549a.getResources().getDimensionPixelOffset(z3 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
        View b4 = b(view);
        if (b4 == null) {
            return;
        }
        b4.getWindowVisibleDisplayFrame(this.f1553e);
        Rect rect = this.f1553e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f1549a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", q.a.f73954a);
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1553e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        b4.getLocationOnScreen(this.f1555g);
        view.getLocationOnScreen(this.f1554f);
        int[] iArr = this.f1554f;
        int i6 = iArr[0];
        int[] iArr2 = this.f1555g;
        iArr[0] = i6 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i2) - (b4.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1550b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f1550b.getMeasuredHeight();
        int[] iArr3 = this.f1554f;
        int i7 = ((iArr3[1] + i5) - dimensionPixelOffset3) - measuredHeight;
        int i8 = iArr3[1] + height + dimensionPixelOffset3;
        if (z3) {
            if (i7 >= 0) {
                layoutParams.y = i7;
            } else {
                layoutParams.y = i8;
            }
        } else if (measuredHeight + i8 <= this.f1553e.height()) {
            layoutParams.y = i8;
        } else {
            layoutParams.y = i7;
        }
    }

    private static View b(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (d()) {
            ((WindowManager) this.f1549a.getSystemService("window")).removeView(this.f1550b);
        }
    }

    boolean d() {
        return this.f1550b.getParent() != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(View view, int i2, int i4, boolean z3, CharSequence charSequence) {
        if (d()) {
            c();
        }
        this.f1551c.setText(charSequence);
        a(view, i2, i4, z3, this.f1552d);
        ((WindowManager) this.f1549a.getSystemService("window")).addView(this.f1550b, this.f1552d);
    }
}
