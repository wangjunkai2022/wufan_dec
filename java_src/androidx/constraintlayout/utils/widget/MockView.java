package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.R;
/* loaded from: classes.dex */
public class MockView extends View {

    /* renamed from: a  reason: collision with root package name */
    private Paint f3284a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f3285b;

    /* renamed from: c  reason: collision with root package name */
    private Paint f3286c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f3287d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3288e;

    /* renamed from: f  reason: collision with root package name */
    protected String f3289f;

    /* renamed from: g  reason: collision with root package name */
    private Rect f3290g;

    /* renamed from: h  reason: collision with root package name */
    private int f3291h;

    /* renamed from: i  reason: collision with root package name */
    private int f3292i;

    /* renamed from: j  reason: collision with root package name */
    private int f3293j;

    /* renamed from: k  reason: collision with root package name */
    private int f3294k;

    public MockView(Context context) {
        super(context);
        this.f3284a = new Paint();
        this.f3285b = new Paint();
        this.f3286c = new Paint();
        this.f3287d = true;
        this.f3288e = true;
        this.f3289f = null;
        this.f3290g = new Rect();
        this.f3291h = Color.argb(255, 0, 0, 0);
        this.f3292i = Color.argb(255, 200, 200, 200);
        this.f3293j = Color.argb(255, 50, 50, 50);
        this.f3294k = 4;
        a(context, null);
    }

    private void a(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.MockView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.MockView_mock_label) {
                    this.f3289f = obtainStyledAttributes.getString(index);
                } else if (index == R.styleable.MockView_mock_showDiagonals) {
                    this.f3287d = obtainStyledAttributes.getBoolean(index, this.f3287d);
                } else if (index == R.styleable.MockView_mock_diagonalsColor) {
                    this.f3291h = obtainStyledAttributes.getColor(index, this.f3291h);
                } else if (index == R.styleable.MockView_mock_labelBackgroundColor) {
                    this.f3293j = obtainStyledAttributes.getColor(index, this.f3293j);
                } else if (index == R.styleable.MockView_mock_labelColor) {
                    this.f3292i = obtainStyledAttributes.getColor(index, this.f3292i);
                } else if (index == R.styleable.MockView_mock_showLabel) {
                    this.f3288e = obtainStyledAttributes.getBoolean(index, this.f3288e);
                }
            }
            obtainStyledAttributes.recycle();
        }
        if (this.f3289f == null) {
            try {
                this.f3289f = context.getResources().getResourceEntryName(getId());
            } catch (Exception unused) {
            }
        }
        this.f3284a.setColor(this.f3291h);
        this.f3284a.setAntiAlias(true);
        this.f3285b.setColor(this.f3292i);
        this.f3285b.setAntiAlias(true);
        this.f3286c.setColor(this.f3293j);
        this.f3294k = Math.round(this.f3294k * (getResources().getDisplayMetrics().xdpi / 160.0f));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f3287d) {
            width--;
            height--;
            float f4 = width;
            float f5 = height;
            canvas.drawLine(0.0f, 0.0f, f4, f5, this.f3284a);
            canvas.drawLine(0.0f, f5, f4, 0.0f, this.f3284a);
            canvas.drawLine(0.0f, 0.0f, f4, 0.0f, this.f3284a);
            canvas.drawLine(f4, 0.0f, f4, f5, this.f3284a);
            canvas.drawLine(f4, f5, 0.0f, f5, this.f3284a);
            canvas.drawLine(0.0f, f5, 0.0f, 0.0f, this.f3284a);
        }
        String str = this.f3289f;
        if (str == null || !this.f3288e) {
            return;
        }
        this.f3285b.getTextBounds(str, 0, str.length(), this.f3290g);
        float width2 = (width - this.f3290g.width()) / 2.0f;
        float height2 = ((height - this.f3290g.height()) / 2.0f) + this.f3290g.height();
        this.f3290g.offset((int) width2, (int) height2);
        Rect rect = this.f3290g;
        int i2 = rect.left;
        int i4 = this.f3294k;
        rect.set(i2 - i4, rect.top - i4, rect.right + i4, rect.bottom + i4);
        canvas.drawRect(this.f3290g, this.f3286c);
        canvas.drawText(this.f3289f, width2, height2, this.f3285b);
    }

    public MockView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f3284a = new Paint();
        this.f3285b = new Paint();
        this.f3286c = new Paint();
        this.f3287d = true;
        this.f3288e = true;
        this.f3289f = null;
        this.f3290g = new Rect();
        this.f3291h = Color.argb(255, 0, 0, 0);
        this.f3292i = Color.argb(255, 200, 200, 200);
        this.f3293j = Color.argb(255, 50, 50, 50);
        this.f3294k = 4;
        a(context, attrs);
    }

    public MockView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f3284a = new Paint();
        this.f3285b = new Paint();
        this.f3286c = new Paint();
        this.f3287d = true;
        this.f3288e = true;
        this.f3289f = null;
        this.f3290g = new Rect();
        this.f3291h = Color.argb(255, 0, 0, 0);
        this.f3292i = Color.argb(255, 200, 200, 200);
        this.f3293j = Color.argb(255, 50, 50, 50);
        this.f3294k = 4;
        a(context, attrs);
    }
}
