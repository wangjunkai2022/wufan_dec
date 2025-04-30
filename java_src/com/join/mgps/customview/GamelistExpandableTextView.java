package com.join.mgps.customview;

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
import androidx.appcompat.widget.AppCompatTextView;
import com.join.android.app.mgsim.wufun.R;
import java.lang.reflect.Field;
/* loaded from: classes3.dex */
public class GamelistExpandableTextView extends AppCompatTextView {
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
    private static final boolean f45571n0 = true;

    /* renamed from: o0  reason: collision with root package name */
    private static final boolean f45572o0 = true;

    /* renamed from: y  reason: collision with root package name */
    public static final int f45573y = 0;

    /* renamed from: z  reason: collision with root package name */
    public static final int f45574z = 1;

    /* renamed from: a  reason: collision with root package name */
    private String f45575a;

    /* renamed from: b  reason: collision with root package name */
    private String f45576b;

    /* renamed from: c  reason: collision with root package name */
    private String f45577c;

    /* renamed from: d  reason: collision with root package name */
    private String f45578d;

    /* renamed from: e  reason: collision with root package name */
    private String f45579e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f45580f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f45581g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f45582h;

    /* renamed from: i  reason: collision with root package name */
    private int f45583i;

    /* renamed from: j  reason: collision with root package name */
    private int f45584j;

    /* renamed from: k  reason: collision with root package name */
    private int f45585k;

    /* renamed from: l  reason: collision with root package name */
    private int f45586l;

    /* renamed from: m  reason: collision with root package name */
    private int f45587m;

    /* renamed from: n  reason: collision with root package name */
    private int f45588n;

    /* renamed from: o  reason: collision with root package name */
    private e f45589o;

    /* renamed from: p  reason: collision with root package name */
    private TextView.BufferType f45590p;

    /* renamed from: q  reason: collision with root package name */
    private TextPaint f45591q;

    /* renamed from: r  reason: collision with root package name */
    private Layout f45592r;

    /* renamed from: s  reason: collision with root package name */
    private int f45593s;

    /* renamed from: t  reason: collision with root package name */
    private int f45594t;

    /* renamed from: u  reason: collision with root package name */
    private int f45595u;

    /* renamed from: v  reason: collision with root package name */
    private CharSequence f45596v;

    /* renamed from: w  reason: collision with root package name */
    private b f45597w;

    /* renamed from: x  reason: collision with root package name */
    private d f45598x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ViewTreeObserver viewTreeObserver = GamelistExpandableTextView.this.getViewTreeObserver();
            if (Build.VERSION.SDK_INT >= 16) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            } else {
                viewTreeObserver.removeGlobalOnLayoutListener(this);
            }
            GamelistExpandableTextView gamelistExpandableTextView = GamelistExpandableTextView.this;
            gamelistExpandableTextView.r(gamelistExpandableTextView.getNewTextByConfig(), GamelistExpandableTextView.this.f45590p);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamelistExpandableTextView.this.s();
        }

        /* synthetic */ b(GamelistExpandableTextView gamelistExpandableTextView, a aVar) {
            this();
        }
    }

    /* loaded from: classes3.dex */
    public class c extends LinkMovementMethod {

        /* renamed from: a  reason: collision with root package name */
        private e f45601a;

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
                this.f45601a = a4;
                if (a4 != null) {
                    a4.a(true);
                    Selection.setSelection(spannable, spannable.getSpanStart(this.f45601a), spannable.getSpanEnd(this.f45601a));
                }
            } else if (motionEvent.getAction() == 2) {
                e a5 = a(textView, spannable, motionEvent);
                e eVar = this.f45601a;
                if (eVar != null && a5 != eVar) {
                    eVar.a(false);
                    this.f45601a = null;
                    Selection.removeSelection(spannable);
                }
            } else {
                e eVar2 = this.f45601a;
                if (eVar2 != null) {
                    eVar2.a(false);
                    super.onTouchEvent(textView, spannable, motionEvent);
                }
                this.f45601a = null;
                Selection.removeSelection(spannable);
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a(GamelistExpandableTextView gamelistExpandableTextView);

        void b(GamelistExpandableTextView gamelistExpandableTextView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class e extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        private boolean f45603a;

        private e() {
        }

        public void a(boolean z3) {
            this.f45603a = z3;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            int i2 = GamelistExpandableTextView.this.f45588n;
            if (i2 == 0) {
                textPaint.setColor(GamelistExpandableTextView.this.f45584j);
                textPaint.bgColor = this.f45603a ? GamelistExpandableTextView.this.f45586l : 0;
            } else if (i2 == 1) {
                textPaint.setColor(GamelistExpandableTextView.this.f45585k);
                textPaint.bgColor = this.f45603a ? GamelistExpandableTextView.this.f45587m : 0;
            }
            textPaint.setUnderlineText(false);
        }

        /* synthetic */ e(GamelistExpandableTextView gamelistExpandableTextView, a aVar) {
            this();
        }
    }

    public GamelistExpandableTextView(Context context) {
        super(context);
        this.f45578d = " ";
        this.f45579e = " ";
        this.f45580f = true;
        this.f45581g = true;
        this.f45582h = true;
        this.f45583i = 2;
        this.f45584j = G;
        this.f45585k = H;
        this.f45586l = 1436129689;
        this.f45587m = 1436129689;
        this.f45588n = 0;
        this.f45590p = TextView.BufferType.NORMAL;
        this.f45593s = -1;
        this.f45594t = 0;
        this.f45595u = 0;
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getNewTextByConfig() {
        String str;
        int i2;
        int i4;
        int i5;
        if (TextUtils.isEmpty(this.f45596v)) {
            return this.f45596v;
        }
        Layout layout = getLayout();
        this.f45592r = layout;
        if (layout != null) {
            this.f45594t = layout.getWidth();
        }
        if (this.f45594t <= 0) {
            if (getWidth() == 0) {
                int i6 = this.f45595u;
                if (i6 == 0) {
                    return this.f45596v;
                }
                this.f45594t = (i6 - getPaddingLeft()) - getPaddingRight();
            } else {
                this.f45594t = (getWidth() - getPaddingLeft()) - getPaddingRight();
            }
        }
        this.f45591q = getPaint();
        this.f45593s = -1;
        int i7 = this.f45588n;
        if (i7 != 0) {
            if (i7 != 1) {
                return this.f45596v;
            }
            if (!this.f45582h) {
                return this.f45596v;
            }
            DynamicLayout dynamicLayout = new DynamicLayout(this.f45596v, this.f45591q, this.f45594t, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            this.f45592r = dynamicLayout;
            int lineCount = dynamicLayout.getLineCount();
            this.f45593s = lineCount;
            if (lineCount <= this.f45583i) {
                return this.f45596v;
            }
            SpannableStringBuilder append = new SpannableStringBuilder(this.f45596v).append((CharSequence) this.f45579e).append((CharSequence) this.f45577c);
            append.setSpan(this.f45589o, append.length() - k(this.f45577c), append.length(), 33);
            return append;
        }
        DynamicLayout dynamicLayout2 = new DynamicLayout(this.f45596v, this.f45591q, this.f45594t, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        this.f45592r = dynamicLayout2;
        int lineCount2 = dynamicLayout2.getLineCount();
        this.f45593s = lineCount2;
        if (lineCount2 <= this.f45583i) {
            return this.f45596v;
        }
        int lineEnd = getValidLayout().getLineEnd(this.f45583i - 1);
        int lineStart = getValidLayout().getLineStart(this.f45583i - 1);
        int k4 = (lineEnd - k(this.f45575a)) - (this.f45581g ? k(this.f45576b) + k(this.f45578d) : 0);
        if (k4 > lineStart) {
            lineEnd = k4;
        }
        int width = getValidLayout().getWidth();
        double measureText = this.f45591q.measureText(this.f45596v.subSequence(lineStart, lineEnd).toString());
        Double.isNaN(measureText);
        int i8 = width - ((int) (measureText + 0.5d));
        TextPaint textPaint = this.f45591q;
        StringBuilder sb = new StringBuilder();
        sb.append(j(this.f45575a));
        if (this.f45581g) {
            str = j(this.f45576b) + j(this.f45578d);
        } else {
            str = "";
        }
        sb.append(str);
        float measureText2 = textPaint.measureText(sb.toString());
        float f4 = i8;
        if (f4 > measureText2) {
            int i9 = 0;
            int i10 = 0;
            while (f4 > i9 + measureText2 && (i5 = lineEnd + (i10 = i10 + 1)) <= this.f45596v.length()) {
                double measureText3 = this.f45591q.measureText(this.f45596v.subSequence(lineEnd, i5).toString());
                Double.isNaN(measureText3);
                i9 = (int) (measureText3 + 0.5d);
            }
            i2 = lineEnd + (i10 - 1);
        } else {
            int i11 = 0;
            int i12 = 0;
            while (i11 + i8 < measureText2 && (i4 = lineEnd + (i12 - 1)) > lineStart) {
                double measureText4 = this.f45591q.measureText(this.f45596v.subSequence(i4, lineEnd).toString());
                Double.isNaN(measureText4);
                i11 = (int) (measureText4 + 0.5d);
            }
            i2 = lineEnd + i12;
        }
        SpannableStringBuilder append2 = new SpannableStringBuilder(q(this.f45596v.subSequence(0, i2))).append((CharSequence) this.f45575a);
        if (this.f45581g) {
            append2.append((CharSequence) (j(this.f45578d) + j(this.f45576b)));
            append2.setSpan(this.f45589o, append2.length() - k(this.f45576b), append2.length(), 33);
        }
        return append2;
    }

    private Layout getValidLayout() {
        Layout layout = this.f45592r;
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
        this.f45589o = new e(this, null);
        setMovementMethod(new c());
        if (TextUtils.isEmpty(this.f45575a)) {
            this.f45575a = C;
        }
        if (TextUtils.isEmpty(this.f45576b)) {
            this.f45576b = getResources().getString(R.string.to_expand_hint);
        }
        if (TextUtils.isEmpty(this.f45577c)) {
            this.f45577c = getResources().getString(R.string.to_shrink_hint);
        }
        if (this.f45580f) {
            b bVar = new b(this, null);
            this.f45597w = bVar;
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
            if (index == 5) {
                this.f45583i = obtainStyledAttributes.getInteger(index, 2);
            } else if (index == 0) {
                this.f45575a = obtainStyledAttributes.getString(index);
            } else if (index == 6) {
                this.f45576b = obtainStyledAttributes.getString(index);
            } else if (index == 10) {
                this.f45577c = obtainStyledAttributes.getString(index);
            } else if (index == 1) {
                this.f45580f = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == 9) {
                this.f45581g = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == 13) {
                this.f45582h = obtainStyledAttributes.getBoolean(index, true);
            } else if (index == 7) {
                this.f45584j = obtainStyledAttributes.getInteger(index, G);
            } else if (index == 11) {
                this.f45585k = obtainStyledAttributes.getInteger(index, H);
            } else if (index == 8) {
                this.f45586l = obtainStyledAttributes.getInteger(index, 1436129689);
            } else if (index == 12) {
                this.f45587m = obtainStyledAttributes.getInteger(index, 1436129689);
            } else if (index == 4) {
                this.f45588n = obtainStyledAttributes.getInteger(index, 0);
            } else if (index == 2) {
                this.f45578d = obtainStyledAttributes.getString(index);
            } else if (index == 3) {
                this.f45579e = obtainStyledAttributes.getString(index);
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
        int i2 = this.f45588n;
        if (i2 == 0) {
            this.f45588n = 1;
            d dVar = this.f45598x;
            if (dVar != null) {
                dVar.a(this);
            }
        } else if (i2 == 1) {
            this.f45588n = 0;
            d dVar2 = this.f45598x;
            if (dVar2 != null) {
                dVar2.b(this);
            }
        }
        r(getNewTextByConfig(), this.f45590p);
    }

    public int getExpandState() {
        return this.f45588n;
    }

    public View.OnClickListener l(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            return n(view);
        }
        return m(view);
    }

    public void setExpandListener(d dVar) {
        this.f45598x = dVar;
    }

    public void setMaxLinesOnShrink(int i2) {
        if (i2 > 2) {
            this.f45583i = i2;
        }
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        this.f45596v = charSequence;
        this.f45590p = bufferType;
        r(getNewTextByConfig(), bufferType);
    }

    public void t(CharSequence charSequence, int i2) {
        this.f45595u = i2;
        setText(charSequence);
    }

    public void u(CharSequence charSequence, int i2, int i4) {
        this.f45595u = i2;
        this.f45588n = i4;
        setText(charSequence);
    }

    public void v(CharSequence charSequence, TextView.BufferType bufferType, int i2) {
        this.f45595u = i2;
        setText(charSequence, bufferType);
    }

    public GamelistExpandableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45578d = " ";
        this.f45579e = " ";
        this.f45580f = true;
        this.f45581g = true;
        this.f45582h = true;
        this.f45583i = 2;
        this.f45584j = G;
        this.f45585k = H;
        this.f45586l = 1436129689;
        this.f45587m = 1436129689;
        this.f45588n = 0;
        this.f45590p = TextView.BufferType.NORMAL;
        this.f45593s = -1;
        this.f45594t = 0;
        this.f45595u = 0;
        p(context, attributeSet);
        o();
    }

    public GamelistExpandableTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45578d = " ";
        this.f45579e = " ";
        this.f45580f = true;
        this.f45581g = true;
        this.f45582h = true;
        this.f45583i = 2;
        this.f45584j = G;
        this.f45585k = H;
        this.f45586l = 1436129689;
        this.f45587m = 1436129689;
        this.f45588n = 0;
        this.f45590p = TextView.BufferType.NORMAL;
        this.f45593s = -1;
        this.f45594t = 0;
        this.f45595u = 0;
        p(context, attributeSet);
        o();
    }
}
