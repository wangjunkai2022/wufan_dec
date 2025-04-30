package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCompoundDrawablesView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.function.IntFunction;
/* loaded from: classes.dex */
public class AppCompatTextView extends TextView implements TintableBackgroundView, TintableCompoundDrawablesView, AutoSizeableTextView, EmojiCompatConfigurationView {
    private final AppCompatBackgroundHelper mBackgroundTintHelper;
    @NonNull
    private AppCompatEmojiTextHelper mEmojiTextViewHelper;
    private boolean mIsSetTypefaceProcessing;
    @Nullable
    private Future<PrecomputedTextCompat> mPrecomputedTextFuture;
    private final AppCompatTextClassifierHelper mTextClassifierHelper;
    private final AppCompatTextHelper mTextHelper;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatTextView> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1104a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f1105b;

        /* renamed from: c  reason: collision with root package name */
        private int f1106c;

        /* renamed from: d  reason: collision with root package name */
        private int f1107d;

        /* renamed from: e  reason: collision with root package name */
        private int f1108e;

        /* renamed from: f  reason: collision with root package name */
        private int f1109f;

        /* renamed from: g  reason: collision with root package name */
        private int f1110g;

        /* renamed from: h  reason: collision with root package name */
        private int f1111h;

        /* renamed from: i  reason: collision with root package name */
        private int f1112i;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1105b = propertyMapper.mapInt("autoSizeMaxTextSize", R.attr.autoSizeMaxTextSize);
            this.f1106c = propertyMapper.mapInt("autoSizeMinTextSize", R.attr.autoSizeMinTextSize);
            this.f1107d = propertyMapper.mapInt("autoSizeStepGranularity", R.attr.autoSizeStepGranularity);
            this.f1108e = propertyMapper.mapIntEnum("autoSizeTextType", R.attr.autoSizeTextType, new IntFunction<String>() { // from class: androidx.appcompat.widget.AppCompatTextView.InspectionCompanion.1
                @Override // java.util.function.IntFunction
                public String apply(int i2) {
                    return i2 != 0 ? i2 != 1 ? String.valueOf(i2) : "uniform" : "none";
                }
            });
            this.f1109f = propertyMapper.mapObject("backgroundTint", R.attr.backgroundTint);
            this.f1110g = propertyMapper.mapObject("backgroundTintMode", R.attr.backgroundTintMode);
            this.f1111h = propertyMapper.mapObject("drawableTint", R.attr.drawableTint);
            this.f1112i = propertyMapper.mapObject("drawableTintMode", R.attr.drawableTintMode);
            this.f1104a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatTextView appCompatTextView, @NonNull PropertyReader propertyReader) {
            if (this.f1104a) {
                propertyReader.readInt(this.f1105b, appCompatTextView.getAutoSizeMaxTextSize());
                propertyReader.readInt(this.f1106c, appCompatTextView.getAutoSizeMinTextSize());
                propertyReader.readInt(this.f1107d, appCompatTextView.getAutoSizeStepGranularity());
                propertyReader.readIntEnum(this.f1108e, appCompatTextView.getAutoSizeTextType());
                propertyReader.readObject(this.f1109f, appCompatTextView.getBackgroundTintList());
                propertyReader.readObject(this.f1110g, appCompatTextView.getBackgroundTintMode());
                propertyReader.readObject(this.f1111h, appCompatTextView.getCompoundDrawableTintList());
                propertyReader.readObject(this.f1112i, appCompatTextView.getCompoundDrawableTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public AppCompatTextView(@NonNull Context context) {
        this(context, null);
    }

    private void consumeTextFutureAndSetBlocking() {
        Future<PrecomputedTextCompat> future = this.mPrecomputedTextFuture;
        if (future != null) {
            try {
                this.mPrecomputedTextFuture = null;
                TextViewCompat.setPrecomputedText(this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    @NonNull
    private AppCompatEmojiTextHelper getEmojiTextViewHelper() {
        if (this.mEmojiTextViewHelper == null) {
            this.mEmojiTextViewHelper = new AppCompatEmojiTextHelper(this);
        }
        return this.mEmojiTextViewHelper;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.b();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMaxTextSize() {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            return super.getAutoSizeMaxTextSize();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.e();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeMinTextSize() {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            return super.getAutoSizeMinTextSize();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.f();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeStepGranularity() {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            return super.getAutoSizeStepGranularity();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.g();
        }
        return -1;
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int[] getAutoSizeTextAvailableSizes() {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            return super.getAutoSizeTextAvailableSizes();
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        return appCompatTextHelper != null ? appCompatTextHelper.h() : new int[0];
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @SuppressLint({"WrongConstant"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeTextType() {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            return appCompatTextHelper.i();
        }
        return 0;
    }

    @Override // android.widget.TextView
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return TextViewCompat.unwrapCustomSelectionActionModeCallback(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return TextViewCompat.getFirstBaselineToTopHeight(this);
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return TextViewCompat.getLastBaselineToBottomHeight(this);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.mTextHelper.j();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.mTextHelper.k();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        consumeTextFutureAndSetBlocking();
        return super.getText();
    }

    @Override // android.widget.TextView
    @NonNull
    @RequiresApi(api = 26)
    public TextClassifier getTextClassifier() {
        AppCompatTextClassifierHelper appCompatTextClassifierHelper;
        if (Build.VERSION.SDK_INT < 28 && (appCompatTextClassifierHelper = this.mTextClassifierHelper) != null) {
            return appCompatTextClassifierHelper.getTextClassifier();
        }
        return super.getTextClassifier();
    }

    @NonNull
    public PrecomputedTextCompat.Params getTextMetricsParamsCompat() {
        return TextViewCompat.getTextMetricsParams(this);
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().isEnabled();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.mTextHelper.r(this, onCreateInputConnection, editorInfo);
        return AppCompatHintHelper.a(onCreateInputConnection, editorInfo, this);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.o(z3, i2, i4, i5, i6);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i2, int i4) {
        consumeTextFutureAndSetBlocking();
        super.onMeasure(i2, i4);
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        super.onTextChanged(charSequence, i2, i4, i5);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper == null || AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE || !appCompatTextHelper.l()) {
            return;
        }
        this.mTextHelper.c();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z3) {
        super.setAllCaps(z3);
        getEmojiTextViewHelper().c(z3);
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i4, int i5, int i6) throws IllegalArgumentException {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i2, i4, i5, i6);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.t(i2, i4, i5, i6);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i2) throws IllegalArgumentException {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.u(iArr, i2);
        }
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setAutoSizeTextTypeWithDefaults(int i2) {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            super.setAutoSizeTextTypeWithDefaults(i2);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.v(i2);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.g(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override // android.widget.TextView
    @RequiresApi(17)
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override // android.widget.TextView
    @RequiresApi(17)
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public void setEmojiCompatEnabled(boolean z3) {
        getEmojiTextViewHelper().d(z3);
    }

    @Override // android.widget.TextView
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(@IntRange(from = 0) @Px int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i2);
        } else {
            TextViewCompat.setFirstBaselineToTopHeight(this, i2);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(@IntRange(from = 0) @Px int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i2);
        } else {
            TextViewCompat.setLastBaselineToBottomHeight(this, i2);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(@IntRange(from = 0) @Px int i2) {
        TextViewCompat.setLineHeight(this, i2);
    }

    public void setPrecomputedText(@NonNull PrecomputedTextCompat precomputedTextCompat) {
        TextViewCompat.setPrecomputedText(this, precomputedTextCompat);
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.mBackgroundTintHelper;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.j(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.mTextHelper.w(colorStateList);
        this.mTextHelper.b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.mTextHelper.x(mode);
        this.mTextHelper.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.q(context, i2);
        }
    }

    @Override // android.widget.TextView
    @RequiresApi(api = 26)
    public void setTextClassifier(@Nullable TextClassifier textClassifier) {
        AppCompatTextClassifierHelper appCompatTextClassifierHelper;
        if (Build.VERSION.SDK_INT < 28 && (appCompatTextClassifierHelper = this.mTextClassifierHelper) != null) {
            appCompatTextClassifierHelper.setTextClassifier(textClassifier);
        } else {
            super.setTextClassifier(textClassifier);
        }
    }

    public void setTextFuture(@Nullable Future<PrecomputedTextCompat> future) {
        this.mPrecomputedTextFuture = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(@NonNull PrecomputedTextCompat.Params params) {
        TextViewCompat.setTextMetricsParams(this, params);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i2, float f4) {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            super.setTextSize(i2, f4);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.A(i2, f4);
        }
    }

    @Override // android.widget.TextView
    public void setTypeface(@Nullable Typeface typeface, int i2) {
        if (this.mIsSetTypefaceProcessing) {
            return;
        }
        Typeface typeface2 = null;
        if (typeface != null && i2 > 0) {
            typeface2 = TypefaceCompat.create(getContext(), typeface, i2);
        }
        this.mIsSetTypefaceProcessing = true;
        if (typeface2 != null) {
            typeface = typeface2;
        }
        try {
            super.setTypeface(typeface, i2);
        } finally {
            this.mIsSetTypefaceProcessing = false;
        }
    }

    public AppCompatTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(TintContextWrapper.wrap(context), attributeSet, i2);
        this.mIsSetTypefaceProcessing = false;
        ThemeUtils.checkAppCompatTheme(this, getContext());
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.mBackgroundTintHelper = appCompatBackgroundHelper;
        appCompatBackgroundHelper.e(attributeSet, i2);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.mTextHelper = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i2);
        appCompatTextHelper.b();
        this.mTextClassifierHelper = new AppCompatTextClassifierHelper(this);
        getEmojiTextViewHelper().b(attributeSet, i2);
    }

    @Override // android.widget.TextView
    @RequiresApi(17)
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i4, int i5, int i6) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i2 != 0 ? AppCompatResources.getDrawable(context, i2) : null, i4 != 0 ? AppCompatResources.getDrawable(context, i4) : null, i5 != 0 ? AppCompatResources.getDrawable(context, i5) : null, i6 != 0 ? AppCompatResources.getDrawable(context, i6) : null);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i4, int i5, int i6) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i2 != 0 ? AppCompatResources.getDrawable(context, i2) : null, i4 != 0 ? AppCompatResources.getDrawable(context, i4) : null, i5 != 0 ? AppCompatResources.getDrawable(context, i5) : null, i6 != 0 ? AppCompatResources.getDrawable(context, i6) : null);
        AppCompatTextHelper appCompatTextHelper = this.mTextHelper;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }
}
