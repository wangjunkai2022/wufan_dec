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
import android.widget.CheckBox;
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
public class AppCompatCheckBox extends CheckBox implements TintableCompoundButton, TintableBackgroundView, EmojiCompatConfigurationView {

    /* renamed from: a  reason: collision with root package name */
    private final AppCompatCompoundButtonHelper f936a;

    /* renamed from: b  reason: collision with root package name */
    private final AppCompatBackgroundHelper f937b;

    /* renamed from: c  reason: collision with root package name */
    private final AppCompatTextHelper f938c;

    /* renamed from: d  reason: collision with root package name */
    private AppCompatEmojiTextHelper f939d;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatCheckBox> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f940a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f941b;

        /* renamed from: c  reason: collision with root package name */
        private int f942c;

        /* renamed from: d  reason: collision with root package name */
        private int f943d;

        /* renamed from: e  reason: collision with root package name */
        private int f944e;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f941b = propertyMapper.mapObject("backgroundTint", R.attr.backgroundTint);
            this.f942c = propertyMapper.mapObject("backgroundTintMode", R.attr.backgroundTintMode);
            this.f943d = propertyMapper.mapObject("buttonTint", R.attr.buttonTint);
            this.f944e = propertyMapper.mapObject("buttonTintMode", R.attr.buttonTintMode);
            this.f940a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatCheckBox appCompatCheckBox, @NonNull PropertyReader propertyReader) {
            if (this.f940a) {
                propertyReader.readObject(this.f941b, appCompatCheckBox.getBackgroundTintList());
                propertyReader.readObject(this.f942c, appCompatCheckBox.getBackgroundTintMode());
                propertyReader.readObject(this.f943d, appCompatCheckBox.getButtonTintList());
                propertyReader.readObject(this.f944e, appCompatCheckBox.getButtonTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public AppCompatCheckBox(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private AppCompatEmojiTextHelper getEmojiTextViewHelper() {
        if (this.f939d == null) {
            this.f939d = new AppCompatEmojiTextHelper(this);
        }
        return this.f939d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f937b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.b();
        }
        AppCompatTextHelper appCompatTextHelper = this.f938c;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f936a;
        return appCompatCompoundButtonHelper != null ? appCompatCompoundButtonHelper.b(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f937b;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f937b;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportButtonTintList() {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f936a;
        if (appCompatCompoundButtonHelper != null) {
            return appCompatCompoundButtonHelper.c();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportButtonTintMode() {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f936a;
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
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f937b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f937b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.g(i2);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f936a;
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
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f937b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f937b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.j(mode);
        }
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportButtonTintList(@Nullable ColorStateList colorStateList) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f936a;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.g(colorStateList);
        }
    }

    @Override // androidx.core.widget.TintableCompoundButton
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportButtonTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = this.f936a;
        if (appCompatCompoundButtonHelper != null) {
            appCompatCompoundButtonHelper.h(mode);
        }
    }

    public AppCompatCheckBox(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    public AppCompatCheckBox(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(TintContextWrapper.wrap(context), attributeSet, i2);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        AppCompatCompoundButtonHelper appCompatCompoundButtonHelper = new AppCompatCompoundButtonHelper(this);
        this.f936a = appCompatCompoundButtonHelper;
        appCompatCompoundButtonHelper.e(attributeSet, i2);
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.f937b = appCompatBackgroundHelper;
        appCompatBackgroundHelper.e(attributeSet, i2);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f938c = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i2);
        getEmojiTextViewHelper().b(attributeSet, i2);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i2) {
        setButtonDrawable(AppCompatResources.getDrawable(getContext(), i2));
    }
}
