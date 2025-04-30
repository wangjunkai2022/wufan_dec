package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes3.dex */
public class ExpandLayout extends RelativeLayout implements View.OnClickListener {
    private static final String C = ExpandLayout.class.getSimpleName();
    public static final int D = 0;
    public static final int E = 1;
    public static final int F = 2;
    private b A;
    private boolean B;

    /* renamed from: a  reason: collision with root package name */
    private Context f45432a;

    /* renamed from: b  reason: collision with root package name */
    private View f45433b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f45434c;

    /* renamed from: d  reason: collision with root package name */
    private LinearLayout f45435d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f45436e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f45437f;

    /* renamed from: g  reason: collision with root package name */
    private int f45438g;

    /* renamed from: h  reason: collision with root package name */
    private TextView f45439h;

    /* renamed from: i  reason: collision with root package name */
    private int f45440i;

    /* renamed from: j  reason: collision with root package name */
    private int f45441j;

    /* renamed from: k  reason: collision with root package name */
    private String f45442k;

    /* renamed from: l  reason: collision with root package name */
    private String f45443l;

    /* renamed from: m  reason: collision with root package name */
    private int f45444m;

    /* renamed from: n  reason: collision with root package name */
    private int f45445n;

    /* renamed from: o  reason: collision with root package name */
    private int f45446o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f45447p;

    /* renamed from: q  reason: collision with root package name */
    private String f45448q;

    /* renamed from: r  reason: collision with root package name */
    private CharSequence f45449r;

    /* renamed from: s  reason: collision with root package name */
    private int f45450s;

    /* renamed from: t  reason: collision with root package name */
    private int f45451t;

    /* renamed from: u  reason: collision with root package name */
    private int f45452u;

    /* renamed from: v  reason: collision with root package name */
    private int f45453v;

    /* renamed from: w  reason: collision with root package name */
    private int f45454w;

    /* renamed from: x  reason: collision with root package name */
    private float f45455x;

    /* renamed from: y  reason: collision with root package name */
    private float f45456y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f45457z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT >= 16) {
                ExpandLayout.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            } else {
                ExpandLayout.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
            ExpandLayout expandLayout = ExpandLayout.this;
            expandLayout.f45438g = expandLayout.getMeasuredWidth();
            String unused = ExpandLayout.C;
            StringBuilder sb = new StringBuilder();
            sb.append("onGlobalLayout,控件宽度 = ");
            sb.append(ExpandLayout.this.f45438g);
            ExpandLayout expandLayout2 = ExpandLayout.this;
            expandLayout2.n(expandLayout2.f45438g);
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a();

        void b();

        void c();
    }

    public ExpandLayout(Context context) {
        this(context, null);
    }

    private int f(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private float getExpandLayoutReservedWidth() {
        int i2 = this.f45452u;
        int i4 = (i2 == 0 || i2 == 1) ? this.f45453v : 0;
        float f4 = 0.0f;
        if (i2 == 0 || i2 == 2) {
            f4 = this.f45437f.getPaint().measureText(this.f45442k);
        }
        return i4 + f4;
    }

    private void h(StaticLayout staticLayout, int i2) {
        if (staticLayout == null) {
            return;
        }
        TextPaint paint = this.f45434c.getPaint();
        int lineStart = staticLayout.getLineStart(this.f45444m - 1);
        int lineEnd = staticLayout.getLineEnd(this.f45444m - 1);
        StringBuilder sb = new StringBuilder();
        sb.append("startPos = ");
        sb.append(lineStart);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("endPos = ");
        sb2.append(lineEnd);
        if (lineStart < 0) {
            lineStart = 0;
        }
        if (lineEnd < 0) {
            lineEnd = 0;
        }
        if (lineEnd > this.f45448q.length()) {
            lineEnd = this.f45448q.length();
        }
        if (lineStart > lineEnd) {
            lineStart = lineEnd;
        }
        String substring = this.f45448q.substring(lineStart, lineEnd);
        float measureText = substring != null ? paint.measureText(substring) : 0.0f;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("第");
        sb3.append(this.f45444m);
        sb3.append("行 = ");
        sb3.append(substring);
        StringBuilder sb4 = new StringBuilder();
        sb4.append("第");
        sb4.append(this.f45444m);
        sb4.append("行 文本长度 = ");
        sb4.append(measureText);
        float measureText2 = this.f45454w + paint.measureText("...") + getExpandLayoutReservedWidth();
        StringBuilder sb5 = new StringBuilder();
        sb5.append("需要预留的长度 = ");
        sb5.append(measureText2);
        float f4 = measureText2 + measureText;
        float f5 = i2;
        if (f4 > f5) {
            float f6 = f4 - f5;
            if (measureText != 0.0f) {
                lineEnd -= (int) (((f6 / measureText) * 1.0f) * (lineEnd - lineStart));
            }
        }
        StringBuilder sb6 = new StringBuilder();
        sb6.append("correctEndPos = ");
        sb6.append(lineEnd);
        String substring2 = this.f45448q.substring(0, lineEnd);
        this.f45449r = o(substring2) + "...";
    }

    private void i(StaticLayout staticLayout, int i2) {
        int lineCount;
        if (staticLayout != null && (lineCount = staticLayout.getLineCount()) >= 1) {
            int i4 = lineCount - 1;
            int lineStart = staticLayout.getLineStart(i4);
            int lineEnd = staticLayout.getLineEnd(i4) - 2;
            StringBuilder sb = new StringBuilder();
            sb.append("最后一行 startPos = ");
            sb.append(lineStart);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("最后一行 endPos = ");
            sb2.append(lineEnd);
            if (lineStart < 0) {
                lineStart = 0;
            }
            if (lineEnd < 0) {
                lineEnd = 0;
            }
            if (lineEnd > this.f45448q.length()) {
                lineEnd = this.f45448q.length();
            }
            if (lineStart > lineEnd) {
                lineStart = lineEnd;
            }
            String substring = this.f45448q.substring(lineStart, lineEnd);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("最后一行 内容 = ");
            sb3.append(substring);
            float measureText = substring != null ? this.f45434c.getPaint().measureText(substring) : 0.0f;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("最后一行 文本长度 = ");
            sb4.append(measureText);
            if (measureText + getExpandLayoutReservedWidth() > i2) {
                this.f45448q += "\n";
            }
        }
    }

    private void j(int i2) {
        StaticLayout staticLayout = new StaticLayout(this.f45448q, this.f45434c.getPaint(), i2, Layout.Alignment.ALIGN_NORMAL, this.f45456y, this.f45455x, false);
        int lineCount = staticLayout.getLineCount();
        if (lineCount <= this.f45444m) {
            this.f45449r = this.f45448q;
            this.f45435d.setVisibility(8);
            this.f45434c.setMaxLines(Integer.MAX_VALUE);
            this.f45434c.setText(this.f45448q);
            if (this.B) {
                this.f45435d.setVisibility(0);
                this.f45436e.setOnClickListener(this);
                this.f45437f.setOnClickListener(this);
                this.f45444m = lineCount;
                h(staticLayout, i2);
                i(staticLayout, i2);
                e();
                return;
            }
            return;
        }
        if (this.f45457z) {
            this.f45433b.setOnClickListener(this);
        } else {
            this.f45436e.setOnClickListener(this);
            this.f45437f.setOnClickListener(this);
        }
        this.f45435d.setVisibility(0);
        h(staticLayout, i2);
        i(staticLayout, i2);
        if (this.f45447p) {
            g();
        } else {
            e();
        }
    }

    private void k(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExpandLayout);
        if (obtainStyledAttributes != null) {
            this.f45444m = obtainStyledAttributes.getInt(12, 2);
            this.f45440i = obtainStyledAttributes.getResourceId(4, 0);
            this.f45441j = obtainStyledAttributes.getResourceId(0, 0);
            this.f45442k = obtainStyledAttributes.getString(6);
            this.f45443l = obtainStyledAttributes.getString(1);
            this.f45445n = obtainStyledAttributes.getDimensionPixelSize(3, p(context, 14.0f));
            this.f45450s = obtainStyledAttributes.getColor(2, 0);
            this.f45446o = obtainStyledAttributes.getDimensionPixelSize(9, p(context, 14.0f));
            this.f45451t = obtainStyledAttributes.getColor(8, 0);
            this.f45452u = obtainStyledAttributes.getInt(7, 0);
            this.f45453v = obtainStyledAttributes.getDimensionPixelSize(5, f(context, 15.0f));
            this.f45454w = obtainStyledAttributes.getDimensionPixelSize(13, f(context, 20.0f));
            this.f45455x = obtainStyledAttributes.getDimensionPixelSize(10, 0);
            this.f45456y = obtainStyledAttributes.getFloat(11, 1.0f);
            obtainStyledAttributes.recycle();
        }
        if (this.f45444m < 1) {
            this.f45444m = 1;
        }
    }

    private void l() {
        this.f45433b = RelativeLayout.inflate(this.f45432a, R.layout.layout_expand, this);
        this.f45434c = (TextView) findViewById(R.id.expand_content_tv);
        this.f45435d = (LinearLayout) findViewById(R.id.expand_ll);
        this.f45436e = (ImageView) findViewById(R.id.expand_iv);
        this.f45437f = (TextView) findViewById(R.id.expand_tv);
        this.f45439h = (TextView) findViewById(R.id.expand_helper_tv);
        this.f45437f.setText(this.f45442k);
        this.f45434c.setTextSize(0, this.f45445n);
        this.f45439h.setTextSize(0, this.f45445n);
        this.f45437f.setTextSize(0, this.f45446o);
        this.f45434c.setLineSpacing(this.f45455x, this.f45456y);
        this.f45439h.setLineSpacing(this.f45455x, this.f45456y);
        this.f45437f.setLineSpacing(this.f45455x, this.f45456y);
        setExpandMoreIcon(this.f45440i);
        setContentTextColor(this.f45450s);
        setExpandTextColor(this.f45451t);
        r(this.f45452u);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int i2) {
        if (TextUtils.isEmpty(this.f45448q)) {
            return;
        }
        j(i2);
    }

    private String o(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        String charSequence2 = charSequence.toString();
        return charSequence2.endsWith("\n") ? charSequence2.substring(0, charSequence2.length() - 1) : charSequence2;
    }

    private void q() {
        if (this.f45447p) {
            this.f45437f.setText(this.f45443l);
        } else {
            this.f45437f.setText(this.f45442k);
        }
    }

    private void r(int i2) {
        if (i2 == 1) {
            this.f45436e.setVisibility(0);
            this.f45437f.setVisibility(8);
        } else if (i2 != 2) {
            this.f45436e.setVisibility(0);
            this.f45437f.setVisibility(0);
        } else {
            this.f45436e.setVisibility(8);
            this.f45437f.setVisibility(0);
        }
    }

    public void e() {
        setIsExpand(false);
        this.f45434c.setMaxLines(Integer.MAX_VALUE);
        this.f45434c.setText(this.f45449r);
        this.f45437f.setText(this.f45442k);
        int i2 = this.f45440i;
        if (i2 != 0) {
            this.f45436e.setImageResource(i2);
        }
    }

    public void g() {
        setIsExpand(true);
        this.f45434c.setMaxLines(Integer.MAX_VALUE);
        this.f45434c.setText(this.f45448q);
        this.f45437f.setText(this.f45443l);
        int i2 = this.f45441j;
        if (i2 != 0) {
            this.f45436e.setImageResource(i2);
        }
    }

    public int getLineCount() {
        TextView textView = this.f45434c;
        if (textView == null) {
            return 0;
        }
        return textView.getLineCount();
    }

    public boolean m() {
        return this.f45447p;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f45457z) {
            if (!this.f45447p) {
                g();
                b bVar = this.A;
                if (bVar != null) {
                    bVar.c();
                    return;
                }
                return;
            }
            e();
            b bVar2 = this.A;
            if (bVar2 != null) {
                bVar2.a();
            }
        } else if (view == this.f45437f || view == this.f45436e) {
            this.A.b();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i2, int i4) {
        super.onMeasure(i2, i4);
        StringBuilder sb = new StringBuilder();
        sb.append("onMeasure,measureWidth = ");
        sb.append(getMeasuredWidth());
        if (this.f45438g > 0 || getMeasuredWidth() <= 0) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        this.f45438g = measuredWidth;
        n(measuredWidth);
    }

    public int p(Context context, float f4) {
        return (int) ((f4 * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public void setAlwaysShowMore(boolean z3) {
        this.B = z3;
    }

    public void setCollapseLessIcon(int i2) {
        if (i2 != 0) {
            this.f45441j = i2;
            if (this.f45447p) {
                this.f45436e.setImageResource(i2);
            }
        }
    }

    public void setCollapseLessText(String str) {
        this.f45443l = str;
        q();
    }

    public void setContent(String str) {
        setContent(str, null);
    }

    public void setContentTextColor(int i2) {
        if (i2 != 0) {
            this.f45450s = i2;
            this.f45434c.setTextColor(i2);
        }
    }

    public void setExpandMoreIcon(int i2) {
        if (i2 != 0) {
            this.f45440i = i2;
            if (this.f45447p) {
                return;
            }
            this.f45436e.setImageResource(i2);
        }
    }

    public void setExpandMoreText(String str) {
        this.f45442k = str;
        q();
    }

    public void setExpandStyle(int i2) {
        this.f45452u = i2;
        r(i2);
    }

    public void setExpandTextColor(int i2) {
        if (i2 != 0) {
            this.f45451t = i2;
            this.f45437f.setTextColor(i2);
        }
    }

    public void setExpandable(boolean z3) {
        this.f45457z = z3;
    }

    public void setIsExpand(boolean z3) {
        this.f45447p = z3;
    }

    public void setShrinkLines(int i2) {
        this.f45444m = i2;
    }

    public ExpandLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setContent(String str, b bVar) {
        if (TextUtils.isEmpty(str) || this.f45433b == null) {
            return;
        }
        this.f45448q = str;
        this.A = bVar;
        this.f45434c.setMaxLines(this.f45444m);
        this.f45434c.setText(this.f45448q);
        if (this.f45438g <= 0) {
            getViewTreeObserver().addOnGlobalLayoutListener(new a());
        } else {
            n(this.f45438g);
        }
    }

    public ExpandLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45444m = 2;
        this.f45447p = false;
        this.f45452u = 0;
        this.f45453v = 15;
        this.f45454w = 20;
        this.f45455x = 0.0f;
        this.f45456y = 1.0f;
        this.f45457z = true;
        this.f45432a = context;
        k(context, attributeSet);
        l();
    }
}
