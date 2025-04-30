package cn.carbs.android.expandabletextview.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.text.DynamicLayout;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import java.lang.reflect.Field;
/* loaded from: classes2.dex */
public class ExpandableTextView extends TextView {
    private static final String A = "android.view.View";
    private static final String B = "android.view.View$ListenerInfo";
    private static final String C = "..";
    private static final String D = " ";
    private static final String E = " ";
    private static final int F = 2;
    private static final int G = -13330213;
    private static final int H = -1618884;
    private static final int I = 1436129689;
    private static final int J = 1436129689;
    private static final boolean K = true;

    /* renamed from: n0  reason: collision with root package name */
    private static final boolean f8431n0 = true;

    /* renamed from: o0  reason: collision with root package name */
    private static final boolean f8432o0 = true;

    /* renamed from: y  reason: collision with root package name */
    public static final int f8433y = 0;

    /* renamed from: z  reason: collision with root package name */
    public static final int f8434z = 1;

    /* renamed from: a  reason: collision with root package name */
    private String f8435a;

    /* renamed from: b  reason: collision with root package name */
    private String f8436b;

    /* renamed from: c  reason: collision with root package name */
    private String f8437c;

    /* renamed from: d  reason: collision with root package name */
    private String f8438d;

    /* renamed from: e  reason: collision with root package name */
    private String f8439e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f8440f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f8441g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f8442h;

    /* renamed from: i  reason: collision with root package name */
    private int f8443i;

    /* renamed from: j  reason: collision with root package name */
    private int f8444j;

    /* renamed from: k  reason: collision with root package name */
    private int f8445k;

    /* renamed from: l  reason: collision with root package name */
    private int f8446l;

    /* renamed from: m  reason: collision with root package name */
    private int f8447m;

    /* renamed from: n  reason: collision with root package name */
    private int f8448n;

    /* renamed from: o  reason: collision with root package name */
    private e f8449o;

    /* renamed from: p  reason: collision with root package name */
    private TextView.BufferType f8450p;

    /* renamed from: q  reason: collision with root package name */
    private TextPaint f8451q;

    /* renamed from: r  reason: collision with root package name */
    private Layout f8452r;

    /* renamed from: s  reason: collision with root package name */
    private int f8453s;

    /* renamed from: t  reason: collision with root package name */
    private int f8454t;

    /* renamed from: u  reason: collision with root package name */
    private int f8455u;

    /* renamed from: v  reason: collision with root package name */
    private CharSequence f8456v;

    /* renamed from: w  reason: collision with root package name */
    private b f8457w;

    /* renamed from: x  reason: collision with root package name */
    private d f8458x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ViewTreeObserver viewTreeObserver = ExpandableTextView.this.getViewTreeObserver();
            if (Build.VERSION.SDK_INT >= 16) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            } else {
                viewTreeObserver.removeGlobalOnLayoutListener(this);
            }
            ExpandableTextView expandableTextView = ExpandableTextView.this;
            expandableTextView.r(expandableTextView.getNewTextByConfig(), ExpandableTextView.this.f8450p);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ExpandableTextView.this.s();
        }

        /* synthetic */ b(ExpandableTextView expandableTextView, a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public class c extends LinkMovementMethod {

        /* renamed from: a  reason: collision with root package name */
        private e f8461a;

        public c() {
        }

        private e a(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            int x3 = ((int) motionEvent.getX()) - textView.getTotalPaddingLeft();
            int y3 = ((int) motionEvent.getY()) - textView.getTotalPaddingTop();
            int scrollX = x3 + textView.getScrollX();
            Layout layout = textView.getLayout();
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(y3 + textView.getScrollY()), scrollX);
            e[] eVarArr = (e[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, e.class);
            if (eVarArr.length > 0) {
                return eVarArr[0];
            }
            return null;
        }

        @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                e a4 = a(textView, spannable, motionEvent);
                this.f8461a = a4;
                if (a4 != null) {
                    a4.a(true);
                    Selection.setSelection(spannable, spannable.getSpanStart(this.f8461a), spannable.getSpanEnd(this.f8461a));
                }
            } else if (motionEvent.getAction() == 2) {
                e a5 = a(textView, spannable, motionEvent);
                e eVar = this.f8461a;
                if (eVar != null && a5 != eVar) {
                    eVar.a(false);
                    this.f8461a = null;
                    Selection.removeSelection(spannable);
                }
            } else {
                e eVar2 = this.f8461a;
                if (eVar2 != null) {
                    eVar2.a(false);
                    super.onTouchEvent(textView, spannable, motionEvent);
                }
                this.f8461a = null;
                Selection.removeSelection(spannable);
            }
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(ExpandableTextView expandableTextView);

        void b(ExpandableTextView expandableTextView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class e extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        private boolean f8463a;

        private e() {
        }

        public void a(boolean z3) {
            this.f8463a = z3;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            if (ExpandableTextView.this.hasOnClickListeners()) {
                ExpandableTextView expandableTextView = ExpandableTextView.this;
                if (expandableTextView.l(expandableTextView) instanceof b) {
                    return;
                }
            }
            ExpandableTextView.this.s();
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            int i2 = ExpandableTextView.this.f8448n;
            if (i2 == 0) {
                textPaint.setColor(ExpandableTextView.this.f8444j);
                textPaint.bgColor = this.f8463a ? ExpandableTextView.this.f8446l : 0;
            } else if (i2 == 1) {
                textPaint.setColor(ExpandableTextView.this.f8445k);
                textPaint.bgColor = this.f8463a ? ExpandableTextView.this.f8447m : 0;
            }
            textPaint.setUnderlineText(false);
        }

        /* synthetic */ e(ExpandableTextView expandableTextView, a aVar) {
            this();
        }
    }

    public ExpandableTextView(Context context) {
        super(context);
        this.f8438d = " ";
        this.f8439e = " ";
        this.f8440f = true;
        this.f8441g = true;
        this.f8442h = true;
        this.f8443i = 2;
        this.f8444j = G;
        this.f8445k = H;
        this.f8446l = 1436129689;
        this.f8447m = 1436129689;
        this.f8448n = 0;
        this.f8450p = TextView.BufferType.NORMAL;
        this.f8453s = -1;
        this.f8454t = 0;
        this.f8455u = 0;
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getNewTextByConfig() {
        String str;
        int i2;
        int i4;
        int i5;
        if (TextUtils.isEmpty(this.f8456v)) {
            return this.f8456v;
        }
        Layout layout = getLayout();
        this.f8452r = layout;
        if (layout != null) {
            this.f8454t = layout.getWidth();
        }
        if (this.f8454t <= 0) {
            if (getWidth() == 0) {
                int i6 = this.f8455u;
                if (i6 == 0) {
                    return this.f8456v;
                }
                this.f8454t = (i6 - getPaddingLeft()) - getPaddingRight();
            } else {
                this.f8454t = (getWidth() - getPaddingLeft()) - getPaddingRight();
            }
        }
        this.f8451q = getPaint();
        this.f8453s = -1;
        int i7 = this.f8448n;
        if (i7 != 0) {
            if (i7 != 1) {
                return this.f8456v;
            }
            if (!this.f8442h) {
                return this.f8456v;
            }
            DynamicLayout dynamicLayout = new DynamicLayout(this.f8456v, this.f8451q, this.f8454t, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            this.f8452r = dynamicLayout;
            int lineCount = dynamicLayout.getLineCount();
            this.f8453s = lineCount;
            if (lineCount <= this.f8443i) {
                return this.f8456v;
            }
            SpannableStringBuilder append = new SpannableStringBuilder(this.f8456v).append((CharSequence) this.f8439e).append((CharSequence) this.f8437c);
            append.setSpan(this.f8449o, append.length() - k(this.f8437c), append.length(), 33);
            return append;
        }
        DynamicLayout dynamicLayout2 = new DynamicLayout(this.f8456v, this.f8451q, this.f8454t, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        this.f8452r = dynamicLayout2;
        int lineCount2 = dynamicLayout2.getLineCount();
        this.f8453s = lineCount2;
        if (lineCount2 <= this.f8443i) {
            return this.f8456v;
        }
        int lineEnd = getValidLayout().getLineEnd(this.f8443i - 1);
        int lineStart = getValidLayout().getLineStart(this.f8443i - 1);
        int k4 = (lineEnd - k(this.f8435a)) - (this.f8441g ? k(this.f8436b) + k(this.f8438d) : 0);
        if (k4 > lineStart) {
            lineEnd = k4;
        }
        int width = getValidLayout().getWidth();
        double measureText = this.f8451q.measureText(this.f8456v.subSequence(lineStart, lineEnd).toString());
        Double.isNaN(measureText);
        int i8 = width - ((int) (measureText + 0.5d));
        TextPaint textPaint = this.f8451q;
        StringBuilder sb = new StringBuilder();
        sb.append(j(this.f8435a));
        if (this.f8441g) {
            str = j(this.f8436b) + j(this.f8438d);
        } else {
            str = "";
        }
        sb.append(str);
        float measureText2 = textPaint.measureText(sb.toString());
        float f4 = i8;
        if (f4 > measureText2) {
            int i9 = 0;
            int i10 = 0;
            while (f4 > i9 + measureText2 && (i5 = lineEnd + (i10 = i10 + 1)) <= this.f8456v.length()) {
                double measureText3 = this.f8451q.measureText(this.f8456v.subSequence(lineEnd, i5).toString());
                Double.isNaN(measureText3);
                i9 = (int) (measureText3 + 0.5d);
            }
            i2 = lineEnd + (i10 - 1);
        } else {
            int i11 = 0;
            int i12 = 0;
            while (i11 + i8 < measureText2 && (i4 = lineEnd + (i12 - 1)) > lineStart) {
                double measureText4 = this.f8451q.measureText(this.f8456v.subSequence(i4, lineEnd).toString());
                Double.isNaN(measureText4);
                i11 = (int) (measureText4 + 0.5d);
            }
            i2 = lineEnd + i12;
        }
        SpannableStringBuilder append2 = new SpannableStringBuilder(q(this.f8456v.subSequence(0, i2))).append((CharSequence) this.f8435a);
        if (this.f8441g) {
            append2.append((CharSequence) (j(this.f8438d) + j(this.f8436b)));
            append2.setSpan(this.f8449o, append2.length() - k(this.f8436b), append2.length(), 33);
        }
        return append2;
    }

    private Layout getValidLayout() {
        Layout layout = this.f8452r;
        return layout != null ? layout : getLayout();
    }

    private String j(String str) {
        return str == null ? "" : str;
    }

    private int k(String str) {
        if (str == null) {
            return 0;
        }
        return str.length();
    }

    private View.OnClickListener m(View view) {
        try {
            Field declaredField = Class.forName(A).getDeclaredField("mOnClickListener");
            declaredField.setAccessible(true);
            return (View.OnClickListener) declaredField.get(view);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private View.OnClickListener n(View view) {
        Object obj;
        try {
            Field declaredField = Class.forName(A).getDeclaredField("mListenerInfo");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                obj = declaredField.get(view);
            } else {
                obj = null;
            }
            Field declaredField2 = Class.forName(B).getDeclaredField("mOnClickListener");
            if (declaredField2 == null || obj == null) {
                return null;
            }
            declaredField2.setAccessible(true);
            return (View.OnClickListener) declaredField2.get(obj);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private void o() {
        this.f8449o = new e(this, null);
        setMovementMethod(new c());
        if (TextUtils.isEmpty(this.f8435a)) {
            this.f8435a = C;
        }
        if (TextUtils.isEmpty(this.f8436b)) {
            this.f8436b = getResources().getString(R.string.to_expand_hint);
        }
        if (TextUtils.isEmpty(this.f8437c)) {
            this.f8437c = getResources().getString(R.string.to_shrink_hint);
        }
        if (this.f8440f) {
            b bVar = new b(this, null);
            this.f8457w = bVar;
            setOnClickListener(bVar);
        }
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void p(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes;
        if (attributeSet == null || (obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExpandableTextView)) == null) {
            return;
        }
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.ExpandableTextView_etv_MaxLinesOnShrink) {
                this.f8443i = obtainStyledAttributes.getInteger(index, 2);
            } else if (index == R.styleable.ExpandableTextView_etv_EllipsisHint) {
                this.f8435a = obtainStyledAttributes.getString(index);
            } else if (index == R.styleable.ExpandableTextView_etv_ToExpandHint) {
                this.f8436b = obtainStyledAttributes.getString(index);
            } else if (index == R.styleable.ExpandableTextView_etv_ToShrinkHint) {
                this.f8437c = obtainStyledAttributes.getString(index);
            } else if (index == R.styleable.ExpandableTextView_etv_EnableToggle) {
                this.f8440f = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == R.styleable.ExpandableTextView_etv_ToExpandHintShow) {
                this.f8441g = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == R.styleable.ExpandableTextView_etv_ToShrinkHintShow) {
                this.f8442h = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == R.styleable.ExpandableTextView_etv_ToExpandHintColor) {
                this.f8444j = obtainStyledAttributes.getInteger(index, G);
            } else if (index == R.styleable.ExpandableTextView_etv_ToShrinkHintColor) {
                this.f8445k = obtainStyledAttributes.getInteger(index, H);
            } else if (index == R.styleable.ExpandableTextView_etv_ToExpandHintColorBgPressed) {
                this.f8446l = obtainStyledAttributes.getInteger(index, 1436129689);
            } else if (index == R.styleable.ExpandableTextView_etv_ToShrinkHintColorBgPressed) {
                this.f8447m = obtainStyledAttributes.getInteger(index, 1436129689);
            } else if (index == R.styleable.ExpandableTextView_etv_InitState) {
                this.f8448n = obtainStyledAttributes.getInteger(index, 0);
            } else if (index == R.styleable.ExpandableTextView_etv_GapToExpandHint) {
                this.f8438d = obtainStyledAttributes.getString(index);
            } else if (index == R.styleable.ExpandableTextView_etv_GapToShrinkHint) {
                this.f8439e = obtainStyledAttributes.getString(index);
            }
        }
        obtainStyledAttributes.recycle();
    }

    private String q(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        while (charSequence2.endsWith("\n")) {
            charSequence2 = charSequence2.substring(0, charSequence2.length() - 1);
        }
        return charSequence2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        int i2 = this.f8448n;
        if (i2 == 0) {
            this.f8448n = 1;
            d dVar = this.f8458x;
            if (dVar != null) {
                dVar.b(this);
            }
        } else if (i2 == 1) {
            this.f8448n = 0;
            d dVar2 = this.f8458x;
            if (dVar2 != null) {
                dVar2.a(this);
            }
        }
        r(getNewTextByConfig(), this.f8450p);
    }

    public int getExpandState() {
        return this.f8448n;
    }

    public View.OnClickListener l(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            return n(view);
        }
        return m(view);
    }

    public void setExpandListener(d dVar) {
        this.f8458x = dVar;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        this.f8456v = charSequence;
        this.f8450p = bufferType;
        r(getNewTextByConfig(), bufferType);
    }

    public void t(CharSequence charSequence, int i2) {
        this.f8455u = i2;
        setText(charSequence);
    }

    public void u(CharSequence charSequence, int i2, int i4) {
        this.f8455u = i2;
        this.f8448n = i4;
        setText(charSequence);
    }

    public void v(CharSequence charSequence, TextView.BufferType bufferType, int i2) {
        this.f8455u = i2;
        setText(charSequence, bufferType);
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8438d = " ";
        this.f8439e = " ";
        this.f8440f = true;
        this.f8441g = true;
        this.f8442h = true;
        this.f8443i = 2;
        this.f8444j = G;
        this.f8445k = H;
        this.f8446l = 1436129689;
        this.f8447m = 1436129689;
        this.f8448n = 0;
        this.f8450p = TextView.BufferType.NORMAL;
        this.f8453s = -1;
        this.f8454t = 0;
        this.f8455u = 0;
        p(context, attributeSet);
        o();
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f8438d = " ";
        this.f8439e = " ";
        this.f8440f = true;
        this.f8441g = true;
        this.f8442h = true;
        this.f8443i = 2;
        this.f8444j = G;
        this.f8445k = H;
        this.f8446l = 1436129689;
        this.f8447m = 1436129689;
        this.f8448n = 0;
        this.f8450p = TextView.BufferType.NORMAL;
        this.f8453s = -1;
        this.f8454t = 0;
        this.f8455u = 0;
        p(context, attributeSet);
        o();
    }
}
