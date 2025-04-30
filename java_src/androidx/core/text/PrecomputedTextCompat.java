package androidx.core.text;

import android.os.Build;
import android.text.Layout;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.GuardedBy;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.core.os.TraceCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
/* loaded from: classes.dex */
public class PrecomputedTextCompat implements Spannable {

    /* renamed from: e  reason: collision with root package name */
    private static final char f4629e = '\n';

    /* renamed from: f  reason: collision with root package name */
    private static final Object f4630f = new Object();
    @NonNull
    @GuardedBy("sLock")

    /* renamed from: g  reason: collision with root package name */
    private static Executor f4631g;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Spannable f4632a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final Params f4633b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final int[] f4634c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final PrecomputedText f4635d;

    /* loaded from: classes.dex */
    private static class PrecomputedTextFutureTask extends FutureTask<PrecomputedTextCompat> {

        /* loaded from: classes.dex */
        private static class PrecomputedTextCallback implements Callable<PrecomputedTextCompat> {

            /* renamed from: a  reason: collision with root package name */
            private Params f4645a;

            /* renamed from: b  reason: collision with root package name */
            private CharSequence f4646b;

            PrecomputedTextCallback(@NonNull Params params, @NonNull CharSequence charSequence) {
                this.f4645a = params;
                this.f4646b = charSequence;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public PrecomputedTextCompat call() throws Exception {
                return PrecomputedTextCompat.create(this.f4646b, this.f4645a);
            }
        }

        PrecomputedTextFutureTask(@NonNull Params params, @NonNull CharSequence charSequence) {
            super(new PrecomputedTextCallback(params, charSequence));
        }
    }

    private PrecomputedTextCompat(@NonNull CharSequence charSequence, @NonNull Params params, @NonNull int[] iArr) {
        this.f4632a = new SpannableString(charSequence);
        this.f4633b = params;
        this.f4634c = iArr;
        this.f4635d = null;
    }

    public static PrecomputedTextCompat create(@NonNull CharSequence charSequence, @NonNull Params params) {
        PrecomputedText.Params params2;
        Preconditions.checkNotNull(charSequence);
        Preconditions.checkNotNull(params);
        try {
            TraceCompat.beginSection("PrecomputedText");
            if (Build.VERSION.SDK_INT >= 29 && (params2 = params.f4640e) != null) {
                return new PrecomputedTextCompat(PrecomputedText.create(charSequence, params2), params);
            }
            ArrayList arrayList = new ArrayList();
            int length = charSequence.length();
            int i2 = 0;
            while (i2 < length) {
                int indexOf = TextUtils.indexOf(charSequence, '\n', i2, length);
                i2 = indexOf < 0 ? length : indexOf + 1;
                arrayList.add(Integer.valueOf(i2));
            }
            int[] iArr = new int[arrayList.size()];
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                iArr[i4] = ((Integer) arrayList.get(i4)).intValue();
            }
            int i5 = Build.VERSION.SDK_INT;
            if (i5 >= 23) {
                StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), params.getTextPaint(), Integer.MAX_VALUE).setBreakStrategy(params.getBreakStrategy()).setHyphenationFrequency(params.getHyphenationFrequency()).setTextDirection(params.getTextDirection()).build();
            } else if (i5 >= 21) {
                new StaticLayout(charSequence, params.getTextPaint(), Integer.MAX_VALUE, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            }
            return new PrecomputedTextCompat(charSequence, params, iArr);
        } finally {
            TraceCompat.endSection();
        }
    }

    @UiThread
    public static Future<PrecomputedTextCompat> getTextFuture(@NonNull CharSequence charSequence, @NonNull Params params, @Nullable Executor executor) {
        PrecomputedTextFutureTask precomputedTextFutureTask = new PrecomputedTextFutureTask(params, charSequence);
        if (executor == null) {
            synchronized (f4630f) {
                if (f4631g == null) {
                    f4631g = Executors.newFixedThreadPool(1);
                }
                executor = f4631g;
            }
        }
        executor.execute(precomputedTextFutureTask);
        return precomputedTextFutureTask;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i2) {
        return this.f4632a.charAt(i2);
    }

    @IntRange(from = 0)
    public int getParagraphCount() {
        if (Build.VERSION.SDK_INT >= 29) {
            return this.f4635d.getParagraphCount();
        }
        return this.f4634c.length;
    }

    @IntRange(from = 0)
    public int getParagraphEnd(@IntRange(from = 0) int i2) {
        Preconditions.checkArgumentInRange(i2, 0, getParagraphCount(), "paraIndex");
        if (Build.VERSION.SDK_INT >= 29) {
            return this.f4635d.getParagraphEnd(i2);
        }
        return this.f4634c[i2];
    }

    @IntRange(from = 0)
    public int getParagraphStart(@IntRange(from = 0) int i2) {
        Preconditions.checkArgumentInRange(i2, 0, getParagraphCount(), "paraIndex");
        if (Build.VERSION.SDK_INT >= 29) {
            return this.f4635d.getParagraphStart(i2);
        }
        if (i2 == 0) {
            return 0;
        }
        return this.f4634c[i2 - 1];
    }

    @NonNull
    public Params getParams() {
        return this.f4633b;
    }

    @Nullable
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PrecomputedText getPrecomputedText() {
        Spannable spannable = this.f4632a;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f4632a.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f4632a.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f4632a.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i2, int i4, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            return (T[]) this.f4635d.getSpans(i2, i4, cls);
        }
        return (T[]) this.f4632a.getSpans(i2, i4, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f4632a.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i2, int i4, Class cls) {
        return this.f4632a.nextSpanTransition(i2, i4, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f4635d.removeSpan(obj);
                return;
            } else {
                this.f4632a.removeSpan(obj);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i2, int i4, int i5) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f4635d.setSpan(obj, i2, i4, i5);
                return;
            } else {
                this.f4632a.setSpan(obj, i2, i4, i5);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i2, int i4) {
        return this.f4632a.subSequence(i2, i4);
    }

    @Override // java.lang.CharSequence
    @NonNull
    public String toString() {
        return this.f4632a.toString();
    }

    @RequiresApi(28)
    private PrecomputedTextCompat(@NonNull PrecomputedText precomputedText, @NonNull Params params) {
        this.f4632a = precomputedText;
        this.f4633b = params;
        this.f4634c = null;
        this.f4635d = Build.VERSION.SDK_INT < 29 ? null : precomputedText;
    }

    /* loaded from: classes.dex */
    public static final class Params {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final TextPaint f4636a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final TextDirectionHeuristic f4637b;

        /* renamed from: c  reason: collision with root package name */
        private final int f4638c;

        /* renamed from: d  reason: collision with root package name */
        private final int f4639d;

        /* renamed from: e  reason: collision with root package name */
        final PrecomputedText.Params f4640e;

        /* loaded from: classes.dex */
        public static class Builder {
            @NonNull

            /* renamed from: a  reason: collision with root package name */
            private final TextPaint f4641a;

            /* renamed from: b  reason: collision with root package name */
            private TextDirectionHeuristic f4642b;

            /* renamed from: c  reason: collision with root package name */
            private int f4643c;

            /* renamed from: d  reason: collision with root package name */
            private int f4644d;

            public Builder(@NonNull TextPaint textPaint) {
                this.f4641a = textPaint;
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 23) {
                    this.f4643c = 1;
                    this.f4644d = 1;
                } else {
                    this.f4644d = 0;
                    this.f4643c = 0;
                }
                if (i2 >= 18) {
                    this.f4642b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f4642b = null;
                }
            }

            @NonNull
            public Params build() {
                return new Params(this.f4641a, this.f4642b, this.f4643c, this.f4644d);
            }

            @RequiresApi(23)
            public Builder setBreakStrategy(int i2) {
                this.f4643c = i2;
                return this;
            }

            @RequiresApi(23)
            public Builder setHyphenationFrequency(int i2) {
                this.f4644d = i2;
                return this;
            }

            @RequiresApi(18)
            public Builder setTextDirection(@NonNull TextDirectionHeuristic textDirectionHeuristic) {
                this.f4642b = textDirectionHeuristic;
                return this;
            }
        }

        Params(@NonNull TextPaint textPaint, @NonNull TextDirectionHeuristic textDirectionHeuristic, int i2, int i4) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f4640e = new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i2).setHyphenationFrequency(i4).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.f4640e = null;
            }
            this.f4636a = textPaint;
            this.f4637b = textDirectionHeuristic;
            this.f4638c = i2;
            this.f4639d = i4;
        }

        public boolean equals(@Nullable Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Params) {
                Params params = (Params) obj;
                if (equalsWithoutTextDirection(params)) {
                    return Build.VERSION.SDK_INT < 18 || this.f4637b == params.getTextDirection();
                }
                return false;
            }
            return false;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public boolean equalsWithoutTextDirection(@NonNull Params params) {
            int i2 = Build.VERSION.SDK_INT;
            if ((i2 < 23 || (this.f4638c == params.getBreakStrategy() && this.f4639d == params.getHyphenationFrequency())) && this.f4636a.getTextSize() == params.getTextPaint().getTextSize() && this.f4636a.getTextScaleX() == params.getTextPaint().getTextScaleX() && this.f4636a.getTextSkewX() == params.getTextPaint().getTextSkewX()) {
                if ((i2 < 21 || (this.f4636a.getLetterSpacing() == params.getTextPaint().getLetterSpacing() && TextUtils.equals(this.f4636a.getFontFeatureSettings(), params.getTextPaint().getFontFeatureSettings()))) && this.f4636a.getFlags() == params.getTextPaint().getFlags()) {
                    if (i2 >= 24) {
                        if (!this.f4636a.getTextLocales().equals(params.getTextPaint().getTextLocales())) {
                            return false;
                        }
                    } else if (i2 >= 17 && !this.f4636a.getTextLocale().equals(params.getTextPaint().getTextLocale())) {
                        return false;
                    }
                    return this.f4636a.getTypeface() == null ? params.getTextPaint().getTypeface() == null : this.f4636a.getTypeface().equals(params.getTextPaint().getTypeface());
                }
                return false;
            }
            return false;
        }

        @RequiresApi(23)
        public int getBreakStrategy() {
            return this.f4638c;
        }

        @RequiresApi(23)
        public int getHyphenationFrequency() {
            return this.f4639d;
        }

        @Nullable
        @RequiresApi(18)
        public TextDirectionHeuristic getTextDirection() {
            return this.f4637b;
        }

        @NonNull
        public TextPaint getTextPaint() {
            return this.f4636a;
        }

        public int hashCode() {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 24) {
                return ObjectsCompat.hash(Float.valueOf(this.f4636a.getTextSize()), Float.valueOf(this.f4636a.getTextScaleX()), Float.valueOf(this.f4636a.getTextSkewX()), Float.valueOf(this.f4636a.getLetterSpacing()), Integer.valueOf(this.f4636a.getFlags()), this.f4636a.getTextLocales(), this.f4636a.getTypeface(), Boolean.valueOf(this.f4636a.isElegantTextHeight()), this.f4637b, Integer.valueOf(this.f4638c), Integer.valueOf(this.f4639d));
            }
            if (i2 >= 21) {
                return ObjectsCompat.hash(Float.valueOf(this.f4636a.getTextSize()), Float.valueOf(this.f4636a.getTextScaleX()), Float.valueOf(this.f4636a.getTextSkewX()), Float.valueOf(this.f4636a.getLetterSpacing()), Integer.valueOf(this.f4636a.getFlags()), this.f4636a.getTextLocale(), this.f4636a.getTypeface(), Boolean.valueOf(this.f4636a.isElegantTextHeight()), this.f4637b, Integer.valueOf(this.f4638c), Integer.valueOf(this.f4639d));
            }
            if (i2 >= 18) {
                return ObjectsCompat.hash(Float.valueOf(this.f4636a.getTextSize()), Float.valueOf(this.f4636a.getTextScaleX()), Float.valueOf(this.f4636a.getTextSkewX()), Integer.valueOf(this.f4636a.getFlags()), this.f4636a.getTextLocale(), this.f4636a.getTypeface(), this.f4637b, Integer.valueOf(this.f4638c), Integer.valueOf(this.f4639d));
            }
            if (i2 >= 17) {
                return ObjectsCompat.hash(Float.valueOf(this.f4636a.getTextSize()), Float.valueOf(this.f4636a.getTextScaleX()), Float.valueOf(this.f4636a.getTextSkewX()), Integer.valueOf(this.f4636a.getFlags()), this.f4636a.getTextLocale(), this.f4636a.getTypeface(), this.f4637b, Integer.valueOf(this.f4638c), Integer.valueOf(this.f4639d));
            }
            return ObjectsCompat.hash(Float.valueOf(this.f4636a.getTextSize()), Float.valueOf(this.f4636a.getTextScaleX()), Float.valueOf(this.f4636a.getTextSkewX()), Integer.valueOf(this.f4636a.getFlags()), this.f4636a.getTypeface(), this.f4637b, Integer.valueOf(this.f4638c), Integer.valueOf(this.f4639d));
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append("textSize=" + this.f4636a.getTextSize());
            sb.append(", textScaleX=" + this.f4636a.getTextScaleX());
            sb.append(", textSkewX=" + this.f4636a.getTextSkewX());
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 21) {
                sb.append(", letterSpacing=" + this.f4636a.getLetterSpacing());
                sb.append(", elegantTextHeight=" + this.f4636a.isElegantTextHeight());
            }
            if (i2 >= 24) {
                sb.append(", textLocale=" + this.f4636a.getTextLocales());
            } else if (i2 >= 17) {
                sb.append(", textLocale=" + this.f4636a.getTextLocale());
            }
            sb.append(", typeface=" + this.f4636a.getTypeface());
            if (i2 >= 26) {
                sb.append(", variationSettings=" + this.f4636a.getFontVariationSettings());
            }
            sb.append(", textDir=" + this.f4637b);
            sb.append(", breakStrategy=" + this.f4638c);
            sb.append(", hyphenationFrequency=" + this.f4639d);
            sb.append("}");
            return sb.toString();
        }

        @RequiresApi(28)
        public Params(@NonNull PrecomputedText.Params params) {
            this.f4636a = params.getTextPaint();
            this.f4637b = params.getTextDirection();
            this.f4638c = params.getBreakStrategy();
            this.f4639d = params.getHyphenationFrequency();
            this.f4640e = Build.VERSION.SDK_INT < 29 ? null : params;
        }
    }
}
