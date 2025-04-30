package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.Button;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.AutoSizeableTextView;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCompoundDrawablesView;
import java.util.function.IntFunction;
/* loaded from: classes.dex */
public class AppCompatButton extends Button implements TintableBackgroundView, AutoSizeableTextView, TintableCompoundDrawablesView, EmojiCompatConfigurationView {

    /* renamed from: a  reason: collision with root package name */
    private final AppCompatBackgroundHelper f923a;

    /* renamed from: b  reason: collision with root package name */
    private final AppCompatTextHelper f924b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private AppCompatEmojiTextHelper f925c;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatButton> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f926a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f927b;

        /* renamed from: c  reason: collision with root package name */
        private int f928c;

        /* renamed from: d  reason: collision with root package name */
        private int f929d;

        /* renamed from: e  reason: collision with root package name */
        private int f930e;

        /* renamed from: f  reason: collision with root package name */
        private int f931f;

        /* renamed from: g  reason: collision with root package name */
        private int f932g;

        /* renamed from: h  reason: collision with root package name */
        private int f933h;

        /* renamed from: i  reason: collision with root package name */
        private int f934i;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f927b = propertyMapper.mapInt("autoSizeMaxTextSize", R.attr.autoSizeMaxTextSize);
            this.f928c = propertyMapper.mapInt("autoSizeMinTextSize", R.attr.autoSizeMinTextSize);
            this.f929d = propertyMapper.mapInt("autoSizeStepGranularity", R.attr.autoSizeStepGranularity);
            this.f930e = propertyMapper.mapIntEnum("autoSizeTextType", R.attr.autoSizeTextType, new IntFunction<String>() { // from class: androidx.appcompat.widget.AppCompatButton.InspectionCompanion.1
                @Override // java.util.function.IntFunction
                public String apply(int i2) {
                    return i2 != 0 ? i2 != 1 ? String.valueOf(i2) : "uniform" : "none";
                }
            });
            this.f931f = propertyMapper.mapObject("backgroundTint", R.attr.backgroundTint);
            this.f932g = propertyMapper.mapObject("backgroundTintMode", R.attr.backgroundTintMode);
            this.f933h = propertyMapper.mapObject("drawableTint", R.attr.drawableTint);
            this.f934i = propertyMapper.mapObject("drawableTintMode", R.attr.drawableTintMode);
            this.f926a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatButton appCompatButton, @NonNull PropertyReader propertyReader) {
            if (this.f926a) {
                propertyReader.readInt(this.f927b, appCompatButton.getAutoSizeMaxTextSize());
                propertyReader.readInt(this.f928c, appCompatButton.getAutoSizeMinTextSize());
                propertyReader.readInt(this.f929d, appCompatButton.getAutoSizeStepGranularity());
                propertyReader.readIntEnum(this.f930e, appCompatButton.getAutoSizeTextType());
                propertyReader.readObject(this.f931f, appCompatButton.getBackgroundTintList());
                propertyReader.readObject(this.f932g, appCompatButton.getBackgroundTintMode());
                propertyReader.readObject(this.f933h, appCompatButton.getCompoundDrawableTintList());
                propertyReader.readObject(this.f934i, appCompatButton.getCompoundDrawableTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public AppCompatButton(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private AppCompatEmojiTextHelper getEmojiTextViewHelper() {
        if (this.f925c == null) {
            this.f925c = new AppCompatEmojiTextHelper(this);
        }
        return this.f925c;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f923a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.b();
        }
        AppCompatTextHelper appCompatTextHelper = this.f924b;
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
        AppCompatTextHelper appCompatTextHelper = this.f924b;
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
        AppCompatTextHelper appCompatTextHelper = this.f924b;
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
        AppCompatTextHelper appCompatTextHelper = this.f924b;
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
        AppCompatTextHelper appCompatTextHelper = this.f924b;
        return appCompatTextHelper != null ? appCompatTextHelper.h() : new int[0];
    }

    @Override // android.widget.TextView, androidx.core.widget.AutoSizeableTextView
    @SuppressLint({"WrongConstant"})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getAutoSizeTextType() {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        AppCompatTextHelper appCompatTextHelper = this.f924b;
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

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f923a;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f923a;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f924b.j();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f924b.k();
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().isEnabled();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        AppCompatTextHelper appCompatTextHelper = this.f924b;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.o(z3, i2, i4, i5, i6);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
        super.onTextChanged(charSequence, i2, i4, i5);
        AppCompatTextHelper appCompatTextHelper = this.f924b;
        if (appCompatTextHelper == null || AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE || !appCompatTextHelper.l()) {
            return;
        }
        this.f924b.c();
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
        AppCompatTextHelper appCompatTextHelper = this.f924b;
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
        AppCompatTextHelper appCompatTextHelper = this.f924b;
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
        AppCompatTextHelper appCompatTextHelper = this.f924b;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.v(i2);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f923a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f923a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.g(i2);
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

    public void setSupportAllCaps(boolean z3) {
        AppCompatTextHelper appCompatTextHelper = this.f924b;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.s(z3);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f923a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f923a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.j(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.f924b.w(colorStateList);
        this.f924b.b();
    }

    @Override // androidx.core.widget.TintableCompoundDrawablesView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.f924b.x(mode);
        this.f924b.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        AppCompatTextHelper appCompatTextHelper = this.f924b;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.q(context, i2);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i2, float f4) {
        if (AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            super.setTextSize(i2, f4);
            return;
        }
        AppCompatTextHelper appCompatTextHelper = this.f924b;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.A(i2, f4);
        }
    }

    public AppCompatButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyle);
    }

    public AppCompatButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(TintContextWrapper.wrap(context), attributeSet, i2);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.f923a = appCompatBackgroundHelper;
        appCompatBackgroundHelper.e(attributeSet, i2);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f924b = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i2);
        appCompatTextHelper.b();
        getEmojiTextViewHelper().b(attributeSet, i2);
    }
}
