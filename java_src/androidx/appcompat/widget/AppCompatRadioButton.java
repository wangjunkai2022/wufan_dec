package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.RadioButton;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TintableCompoundButton;
/* loaded from: classes.dex */
public class AppCompatRadioButton extends RadioButton implements TintableCompoundButton, TintableBackgroundView, EmojiCompatConfigurationView {

    /* renamed from: a  reason: collision with root package name */
    private final AppCompatCompoundButtonHelper f1022a;

    /* renamed from: b  reason: collision with root package name */
    private final AppCompatBackgroundHelper f1023b;

    /* renamed from: c  reason: collision with root package name */
    private final AppCompatTextHelper f1024c;

    /* renamed from: d  reason: collision with root package name */
    private AppCompatEmojiTextHelper f1025d;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatRadioButton> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1026a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f1027b;

        /* renamed from: c  reason: collision with root package name */
        private int f1028c;

        /* renamed from: d  reason: collision with root package name */
        private int f1029d;

        /* renamed from: e  reason: collision with root package name */
        private int f1030e;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f1027b = propertyMapper.mapObject("backgroundTint", R.attr.backgroundTint);
            this.f1028c = propertyMapper.mapObject("backgroundTintMode", R.attr.backgroundTintMode);
            this.f1029d = propertyMapper.mapObject("buttonTint", R.attr.buttonTint);
            this.f1030e = propertyMapper.mapObject("buttonTintMode", R.attr.buttonTintMode);
            this.f1026a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatRadioButton appCompatRadioButton, @NonNull PropertyReader propertyReader) {
            if (this.f1026a) {
                propertyReader.readObject(this.f1027b, appCompatRadioButton.getBackgroundTintList());
                propertyReader.readObject(this.f1028c, appCompatRadioButton.getBackgroundTintMode());
                propertyReader.readObject(this.f1029d, appCompatRadioButton.getButtonTintList());
                propertyReader.readObject(this.f1030e, appCompatRadioButton.getButtonTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public AppCompatRadioButton(Context context) {
        this(context, null);
    }

    @NonNull
    private AppCompatEmojiTextHelper getEmojiTextViewHelper() {
        if (this.f1025d == null) {
            this.f1025d = new AppCompatEmojiTextHelper(this);
        }
        return this.f1025d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1023b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.b();
        }
        AppCompatTextHelper appCompatTextHelper = this.f1024c;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f1022a;
        return appCompatCompoundButtonHelper != null ? appCompatCompoundButtonHelper.b(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1023b;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1023b;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportButtonTintList() {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f1022a;
        if (appCompatCompoundButtonHelper != null) {
            return appCompatCompoundButtonHelper.c();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportButtonTintMode() {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f1022a;
        if (appCompatCompoundButtonHelper != null) {
            return appCompatCompoundButtonHelper.d();
        }
        return null;
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().isEnabled();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z3) {
        super.setAllCaps(z3);
        getEmojiTextViewHelper().c(z3);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1023b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1023b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.g(i2);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f1022a;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.f();
        }
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public void setEmojiCompatEnabled(boolean z3) {
        getEmojiTextViewHelper().d(z3);
    }

    @Override // android.widget.TextView
    public void setFilters(@NonNull InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1023b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f1023b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.j(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportButtonTintList(@Nullable ColorStateList colorStateList) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f1022a;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.g(colorStateList);
        }
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportButtonTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f1022a;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.h(mode);
        }
    }

    public AppCompatRadioButton(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.radioButtonStyle);
    }

    public AppCompatRadioButton(Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(TintContextWrapper.wrap(context), attributeSet, i2);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = new AppCompatCompoundButtonHelper(this);
        this.f1022a = appCompatCompoundButtonHelper;
        appCompatCompoundButtonHelper.e(attributeSet, i2);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.f1023b = appCompatBackgroundHelper;
        appCompatBackgroundHelper.e(attributeSet, i2);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f1024c = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i2);
        getEmojiTextViewHelper().b(attributeSet, i2);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i2) {
        setButtonDrawable(AppCompatResources.getDrawable(getContext(), i2));
    }
}
