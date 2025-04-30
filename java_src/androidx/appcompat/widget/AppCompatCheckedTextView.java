package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.CheckedTextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TextViewCompat;
import androidx.core.widget.TintableCheckedTextView;
/* loaded from: classes.dex */
public class AppCompatCheckedTextView extends CheckedTextView implements TintableCheckedTextView, TintableBackgroundView, EmojiCompatConfigurationView {

    /* renamed from: a  reason: collision with root package name */
    private final AppCompatCheckedTextViewHelper f945a;

    /* renamed from: b  reason: collision with root package name */
    private final AppCompatBackgroundHelper f946b;

    /* renamed from: c  reason: collision with root package name */
    private final AppCompatTextHelper f947c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private AppCompatEmojiTextHelper f948d;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatCheckedTextView> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f949a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f950b;

        /* renamed from: c  reason: collision with root package name */
        private int f951c;

        /* renamed from: d  reason: collision with root package name */
        private int f952d;

        /* renamed from: e  reason: collision with root package name */
        private int f953e;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f950b = propertyMapper.mapObject("backgroundTint", R.attr.backgroundTint);
            this.f951c = propertyMapper.mapObject("backgroundTintMode", R.attr.backgroundTintMode);
            this.f952d = propertyMapper.mapObject("checkMarkTint", R.attr.checkMarkTint);
            this.f953e = propertyMapper.mapObject("checkMarkTintMode", R.attr.checkMarkTintMode);
            this.f949a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatCheckedTextView appCompatCheckedTextView, @NonNull PropertyReader propertyReader) {
            if (this.f949a) {
                propertyReader.readObject(this.f950b, appCompatCheckedTextView.getBackgroundTintList());
                propertyReader.readObject(this.f951c, appCompatCheckedTextView.getBackgroundTintMode());
                propertyReader.readObject(this.f952d, appCompatCheckedTextView.getCheckMarkTintList());
                propertyReader.readObject(this.f953e, appCompatCheckedTextView.getCheckMarkTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public AppCompatCheckedTextView(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private AppCompatEmojiTextHelper getEmojiTextViewHelper() {
        if (this.f948d == null) {
            this.f948d = new AppCompatEmojiTextHelper(this);
        }
        return this.f948d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatTextHelper appCompatTextHelper = this.f947c;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f946b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.b();
        }
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f945a;
        if (appCompatCheckedTextViewHelper != null) {
            appCompatCheckedTextViewHelper.a();
        }
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
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f946b;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f946b;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.d();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportCheckMarkTintList() {
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f945a;
        if (appCompatCheckedTextViewHelper != null) {
            return appCompatCheckedTextViewHelper.b();
        }
        return null;
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f945a;
        if (appCompatCheckedTextViewHelper != null) {
            return appCompatCheckedTextViewHelper.c();
        }
        return null;
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().isEnabled();
    }

    @Override // android.widget.TextView, android.view.View
    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        return AppCompatHintHelper.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z3) {
        super.setAllCaps(z3);
        getEmojiTextViewHelper().c(z3);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f946b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f946b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.g(i2);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(@Nullable Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f945a;
        if (appCompatCheckedTextViewHelper != null) {
            appCompatCheckedTextViewHelper.e();
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

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f946b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f946b;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.j(mode);
        }
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCheckMarkTintList(@Nullable ColorStateList colorStateList) {
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f945a;
        if (appCompatCheckedTextViewHelper != null) {
            appCompatCheckedTextViewHelper.f(colorStateList);
        }
    }

    @Override // androidx.core.widget.TintableCheckedTextView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportCheckMarkTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = this.f945a;
        if (appCompatCheckedTextViewHelper != null) {
            appCompatCheckedTextViewHelper.g(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(@NonNull Context context, int i2) {
        super.setTextAppearance(context, i2);
        AppCompatTextHelper appCompatTextHelper = this.f947c;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.q(context, i2);
        }
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(TintContextWrapper.wrap(context), attributeSet, i2);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f947c = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i2);
        appCompatTextHelper.b();
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.f946b = appCompatBackgroundHelper;
        appCompatBackgroundHelper.e(attributeSet, i2);
        AppCompatCheckedTextViewHelper appCompatCheckedTextViewHelper = new AppCompatCheckedTextViewHelper(this);
        this.f945a = appCompatCheckedTextViewHelper;
        appCompatCheckedTextViewHelper.d(attributeSet, i2);
        getEmojiTextViewHelper().b(attributeSet, i2);
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(@DrawableRes int i2) {
        setCheckMarkDrawable(AppCompatResources.getDrawable(getContext(), i2));
    }
}
