package androidx.emoji2.viewsintegration;

import android.os.Build;
import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
/* loaded from: classes.dex */
public final class EmojiTextViewHelper {

    /* renamed from: a  reason: collision with root package name */
    private final HelperInternal f5716a;

    /* loaded from: classes.dex */
    static class HelperInternal {
        HelperInternal() {
        }

        @NonNull
        InputFilter[] a(@NonNull InputFilter[] inputFilterArr) {
            return inputFilterArr;
        }

        void b(boolean z3) {
        }

        void c(boolean z3) {
        }

        void d() {
        }

        @Nullable
        TransformationMethod e(@Nullable TransformationMethod transformationMethod) {
            return transformationMethod;
        }

        public boolean isEnabled() {
            return false;
        }
    }

    @RequiresApi(19)
    /* loaded from: classes.dex */
    private static class HelperInternal19 extends HelperInternal {

        /* renamed from: a  reason: collision with root package name */
        private final TextView f5717a;

        /* renamed from: b  reason: collision with root package name */
        private final EmojiInputFilter f5718b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f5719c = true;

        HelperInternal19(TextView textView) {
            this.f5717a = textView;
            this.f5718b = new EmojiInputFilter(textView);
        }

        @NonNull
        private InputFilter[] f(@NonNull InputFilter[] inputFilterArr) {
            int length = inputFilterArr.length;
            for (InputFilter inputFilter : inputFilterArr) {
                if (inputFilter == this.f5718b) {
                    return inputFilterArr;
                }
            }
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length + 1];
            System.arraycopy(inputFilterArr, 0, inputFilterArr2, 0, length);
            inputFilterArr2[length] = this.f5718b;
            return inputFilterArr2;
        }

        private SparseArray<InputFilter> g(@NonNull InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> sparseArray = new SparseArray<>(1);
            for (int i2 = 0; i2 < inputFilterArr.length; i2++) {
                if (inputFilterArr[i2] instanceof EmojiInputFilter) {
                    sparseArray.put(i2, inputFilterArr[i2]);
                }
            }
            return sparseArray;
        }

        @NonNull
        private InputFilter[] h(@NonNull InputFilter[] inputFilterArr) {
            SparseArray<InputFilter> g4 = g(inputFilterArr);
            if (g4.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - g4.size()];
            int i2 = 0;
            for (int i4 = 0; i4 < length; i4++) {
                if (g4.indexOfKey(i4) < 0) {
                    inputFilterArr2[i2] = inputFilterArr[i4];
                    i2++;
                }
            }
            return inputFilterArr2;
        }

        @Nullable
        private TransformationMethod j(@Nullable TransformationMethod transformationMethod) {
            return transformationMethod instanceof EmojiTransformationMethod ? ((EmojiTransformationMethod) transformationMethod).getOriginalTransformationMethod() : transformationMethod;
        }

        private void k() {
            this.f5717a.setFilters(a(this.f5717a.getFilters()));
        }

        @NonNull
        private TransformationMethod l(@Nullable TransformationMethod transformationMethod) {
            return ((transformationMethod instanceof EmojiTransformationMethod) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new EmojiTransformationMethod(transformationMethod);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        @NonNull
        InputFilter[] a(@NonNull InputFilter[] inputFilterArr) {
            if (!this.f5719c) {
                return h(inputFilterArr);
            }
            return f(inputFilterArr);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void b(boolean z3) {
            if (z3) {
                d();
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void c(boolean z3) {
            this.f5719c = z3;
            d();
            k();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void d() {
            this.f5717a.setTransformationMethod(e(this.f5717a.getTransformationMethod()));
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        @Nullable
        TransformationMethod e(@Nullable TransformationMethod transformationMethod) {
            if (this.f5719c) {
                return l(transformationMethod);
            }
            return j(transformationMethod);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        void i(boolean z3) {
            this.f5719c = z3;
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public boolean isEnabled() {
            return this.f5719c;
        }
    }

    @RequiresApi(19)
    /* loaded from: classes.dex */
    private static class SkippingHelper19 extends HelperInternal {

        /* renamed from: a  reason: collision with root package name */
        private final HelperInternal19 f5720a;

        SkippingHelper19(TextView textView) {
            this.f5720a = new HelperInternal19(textView);
        }

        private boolean f() {
            return !EmojiCompat.isConfigured();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        @NonNull
        InputFilter[] a(@NonNull InputFilter[] inputFilterArr) {
            return f() ? inputFilterArr : this.f5720a.a(inputFilterArr);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void b(boolean z3) {
            if (f()) {
                return;
            }
            this.f5720a.b(z3);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void c(boolean z3) {
            if (f()) {
                this.f5720a.i(z3);
            } else {
                this.f5720a.c(z3);
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        void d() {
            if (f()) {
                return;
            }
            this.f5720a.d();
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        @Nullable
        TransformationMethod e(@Nullable TransformationMethod transformationMethod) {
            return f() ? transformationMethod : this.f5720a.e(transformationMethod);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public boolean isEnabled() {
            return this.f5720a.isEnabled();
        }
    }

    public EmojiTextViewHelper(@NonNull TextView textView) {
        this(textView, true);
    }

    @NonNull
    public InputFilter[] getFilters(@NonNull InputFilter[] inputFilterArr) {
        return this.f5716a.a(inputFilterArr);
    }

    public boolean isEnabled() {
        return this.f5716a.isEnabled();
    }

    public void setAllCaps(boolean z3) {
        this.f5716a.b(z3);
    }

    public void setEnabled(boolean z3) {
        this.f5716a.c(z3);
    }

    public void updateTransformationMethod() {
        this.f5716a.d();
    }

    @Nullable
    public TransformationMethod wrapTransformationMethod(@Nullable TransformationMethod transformationMethod) {
        return this.f5716a.e(transformationMethod);
    }

    public EmojiTextViewHelper(@NonNull TextView textView, boolean z3) {
        Preconditions.checkNotNull(textView, "textView cannot be null");
        if (Build.VERSION.SDK_INT < 19) {
            this.f5716a = new HelperInternal();
        } else if (!z3) {
            this.f5716a = new SkippingHelper19(textView);
        } else {
            this.f5716a = new HelperInternal19(textView);
        }
    }
}
