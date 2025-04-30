package com.papa91.arc.widget.htmltext;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.util.AttributeSet;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class JellyBeanSpanFixTextView extends TextView {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class FixingResult {
        public final boolean fixed;
        public final List<Object> spansWithSpacesAfter;
        public final List<Object> spansWithSpacesBefore;

        private FixingResult(boolean z3, List<Object> list, List<Object> list2) {
            this.fixed = z3;
            this.spansWithSpacesBefore = list;
            this.spansWithSpacesAfter = list2;
        }

        public static FixingResult fixed(List<Object> list, List<Object> list2) {
            return new FixingResult(true, list, list2);
        }

        public static FixingResult notFixed() {
            return new FixingResult(false, null, null);
        }
    }

    public JellyBeanSpanFixTextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }

    private FixingResult addSpacesAroundSpansUntilFixed(SpannableStringBuilder spannableStringBuilder, int i2, int i4) {
        Object[] spans = spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), Object.class);
        ArrayList arrayList = new ArrayList(spans.length);
        ArrayList arrayList2 = new ArrayList(spans.length);
        for (Object obj : spans) {
            int spanStart = spannableStringBuilder.getSpanStart(obj);
            if (isNotSpace(spannableStringBuilder, spanStart - 1)) {
                spannableStringBuilder.insert(spanStart, " ");
                arrayList.add(obj);
            }
            int spanEnd = spannableStringBuilder.getSpanEnd(obj);
            if (isNotSpace(spannableStringBuilder, spanEnd)) {
                spannableStringBuilder.insert(spanEnd, " ");
                arrayList2.add(obj);
            }
            try {
                continue;
                setTextAndMeasure(spannableStringBuilder, i2, i4);
                return FixingResult.fixed(arrayList, arrayList2);
            } catch (IndexOutOfBoundsException unused) {
            }
        }
        return FixingResult.notFixed();
    }

    private void fallbackToString(int i2, int i4) {
        setTextAndMeasure(getText().toString(), i2, i4);
    }

    private void fixOnMeasure(int i2, int i4) {
        CharSequence text = getText();
        if (text instanceof Spanned) {
            fixSpannedWithSpaces(new SpannableStringBuilder(text), i2, i4);
        } else {
            fallbackToString(i2, i4);
        }
    }

    private void fixSpannedWithSpaces(SpannableStringBuilder spannableStringBuilder, int i2, int i4) {
        System.currentTimeMillis();
        FixingResult addSpacesAroundSpansUntilFixed = addSpacesAroundSpansUntilFixed(spannableStringBuilder, i2, i4);
        if (addSpacesAroundSpansUntilFixed.fixed) {
            removeUnneededSpaces(i2, i4, spannableStringBuilder, addSpacesAroundSpansUntilFixed);
        } else {
            fallbackToString(i2, i4);
        }
    }

    private boolean isNotSpace(CharSequence charSequence, int i2) {
        return i2 < 0 || i2 >= charSequence.length() || charSequence.charAt(i2) != ' ';
    }

    @SuppressLint({"WrongCall"})
    private void removeUnneededSpaces(int i2, int i4, SpannableStringBuilder spannableStringBuilder, FixingResult fixingResult) {
        boolean z3;
        for (Object obj : fixingResult.spansWithSpacesAfter) {
            int spanEnd = spannableStringBuilder.getSpanEnd(obj);
            spannableStringBuilder.delete(spanEnd, spanEnd + 1);
            try {
                setTextAndMeasure(spannableStringBuilder, i2, i4);
            } catch (IndexOutOfBoundsException unused) {
                spannableStringBuilder.insert(spanEnd, " ");
            }
        }
        loop1: while (true) {
            z3 = true;
            for (Object obj2 : fixingResult.spansWithSpacesBefore) {
                int spanStart = spannableStringBuilder.getSpanStart(obj2);
                int i5 = spanStart - 1;
                spannableStringBuilder.delete(i5, spanStart);
                try {
                    setTextAndMeasure(spannableStringBuilder, i2, i4);
                    z3 = false;
                } catch (IndexOutOfBoundsException unused2) {
                    spannableStringBuilder.insert(i5, " ");
                }
            }
            break loop1;
        }
        if (z3) {
            setText(spannableStringBuilder);
            super.onMeasure(i2, i4);
        }
    }

    @SuppressLint({"WrongCall"})
    private void setTextAndMeasure(CharSequence charSequence, int i2, int i4) {
        setText(charSequence);
        super.onMeasure(i2, i4);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i2, int i4) {
        try {
            super.onMeasure(i2, i4);
        } catch (IndexOutOfBoundsException unused) {
            fixOnMeasure(i2, i4);
        }
    }

    public JellyBeanSpanFixTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public JellyBeanSpanFixTextView(Context context) {
        super(context);
    }
}
