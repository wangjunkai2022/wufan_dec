package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.dx.io.Opcodes;
/* loaded from: classes.dex */
public class Placeholder extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f3637a;

    /* renamed from: b  reason: collision with root package name */
    private View f3638b;

    /* renamed from: c  reason: collision with root package name */
    private int f3639c;

    public Placeholder(Context context) {
        super(context);
        this.f3637a = -1;
        this.f3638b = null;
        this.f3639c = 4;
        a(null);
    }

    private void a(AttributeSet attrs) {
        super.setVisibility(this.f3639c);
        this.f3637a = -1;
        if (attrs != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.ConstraintLayout_placeholder);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.ConstraintLayout_placeholder_content) {
                    this.f3637a = obtainStyledAttributes.getResourceId(index, this.f3637a);
                } else if (index == R.styleable.ConstraintLayout_placeholder_placeholder_emptyVisibility) {
                    this.f3639c = obtainStyledAttributes.getInt(index, this.f3639c);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public View getContent() {
        return this.f3638b;
    }

    public int getEmptyVisibility() {
        return this.f3639c;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(Opcodes.XOR_INT_LIT8, Opcodes.XOR_INT_LIT8, Opcodes.XOR_INT_LIT8);
            Paint paint = new Paint();
            paint.setARGB(255, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((width / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((height / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int id) {
        View findViewById;
        if (this.f3637a == id) {
            return;
        }
        View view = this.f3638b;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.LayoutParams) this.f3638b.getLayoutParams()).f3409j = false;
            this.f3638b = null;
        }
        this.f3637a = id;
        if (id == -1 || (findViewById = ((View) getParent()).findViewById(id)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int visibility) {
        this.f3639c = visibility;
    }

    public void updatePostMeasure(ConstraintLayout container) {
        if (this.f3638b == null) {
            return;
        }
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) this.f3638b.getLayoutParams();
        layoutParams2.f3421v.setVisibility(0);
        ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = layoutParams.f3421v.getHorizontalDimensionBehaviour();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.FIXED;
        if (horizontalDimensionBehaviour != dimensionBehaviour) {
            layoutParams.f3421v.setWidth(layoutParams2.f3421v.getWidth());
        }
        if (layoutParams.f3421v.getVerticalDimensionBehaviour() != dimensionBehaviour) {
            layoutParams.f3421v.setHeight(layoutParams2.f3421v.getHeight());
        }
        layoutParams2.f3421v.setVisibility(8);
    }

    public void updatePreLayout(ConstraintLayout container) {
        if (this.f3637a == -1 && !isInEditMode()) {
            setVisibility(this.f3639c);
        }
        View findViewById = container.findViewById(this.f3637a);
        this.f3638b = findViewById;
        if (findViewById != null) {
            ((ConstraintLayout.LayoutParams) findViewById.getLayoutParams()).f3409j = true;
            this.f3638b.setVisibility(0);
            setVisibility(0);
        }
    }

    public Placeholder(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3637a = -1;
        this.f3638b = null;
        this.f3639c = 4;
        a(attrs);
    }

    public Placeholder(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3637a = -1;
        this.f3638b = null;
        this.f3639c = 4;
        a(attrs);
    }

    public Placeholder(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr);
        this.f3637a = -1;
        this.f3638b = null;
        this.f3639c = 4;
        a(attrs);
    }
}
