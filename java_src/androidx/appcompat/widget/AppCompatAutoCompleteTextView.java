package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.AutoCompleteTextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.TintableBackgroundView;
import androidx.core.widget.TextViewCompat;
/* loaded from: classes.dex */
public class AppCompatAutoCompleteTextView extends AutoCompleteTextView implements TintableBackgroundView, EmojiCompatConfigurationView {

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f910d = {16843126};

    /* renamed from: a  reason: collision with root package name */
    private final AppCompatBackgroundHelper f911a;

    /* renamed from: b  reason: collision with root package name */
    private final AppCompatTextHelper f912b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final AppCompatEmojiEditTextHelper f913c;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<AppCompatAutoCompleteTextView> {

        /* renamed from: a  reason: collision with root package name */
        private boolean f914a = false;

        /* renamed from: b  reason: collision with root package name */
        private int f915b;

        /* renamed from: c  reason: collision with root package name */
        private int f916c;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f915b = propertyMapper.mapObject("backgroundTint", R.attr.backgroundTint);
            this.f916c = propertyMapper.mapObject("backgroundTintMode", R.attr.backgroundTintMode);
            this.f914a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull AppCompatAutoCompleteTextView appCompatAutoCompleteTextView, @NonNull PropertyReader propertyReader) {
            if (this.f914a) {
                propertyReader.readObject(this.f915b, appCompatAutoCompleteTextView.getBackgroundTintList());
                propertyReader.readObject(this.f916c, appCompatAutoCompleteTextView.getBackgroundTintMode());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    public AppCompatAutoCompleteTextView(@NonNull Context context) {
        this(context, null);
    }

    void a(AppCompatEmojiEditTextHelper appCompatEmojiEditTextHelper) {
        KeyListener keyListener = getKeyListener();
        if (appCompatEmojiEditTextHelper.b(keyListener)) {
            boolean isFocusable = super.isFocusable();
            int inputType = super.getInputType();
            KeyListener a4 = appCompatEmojiEditTextHelper.a(keyListener);
            if (a4 == keyListener) {
                return;
            }
            super.setKeyListener(a4);
            super.setRawInputType(inputType);
            super.setFocusable(isFocusable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f911a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.b();
        }
        AppCompatTextHelper appCompatTextHelper = this.f912b;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
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
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f911a;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f911a;
        if (appCompatBackgroundHelper != null) {
            return appCompatBackgroundHelper.d();
        }
        return null;
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public boolean isEmojiCompatEnabled() {
        return this.f913c.c();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return this.f913c.e(AppCompatHintHelper.a(super.onCreateInputConnection(editorInfo), editorInfo, this), editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f911a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@DrawableRes int i2) {
        super.setBackgroundResource(i2);
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f911a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.g(i2);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(TextViewCompat.wrapCustomSelectionActionModeCallback(this, callback));
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(@DrawableRes int i2) {
        setDropDownBackgroundDrawable(AppCompatResources.getDrawable(getContext(), i2));
    }

    @Override // androidx.appcompat.widget.EmojiCompatConfigurationView
    public void setEmojiCompatEnabled(boolean z3) {
        this.f913c.f(z3);
    }

    @Override // android.widget.TextView
    public void setKeyListener(@Nullable KeyListener keyListener) {
        super.setKeyListener(this.f913c.a(keyListener));
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f911a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        AppCompatBackgroundHelper appCompatBackgroundHelper = this.f911a;
        if (appCompatBackgroundHelper != null) {
            appCompatBackgroundHelper.j(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        AppCompatTextHelper appCompatTextHelper = this.f912b;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.q(context, i2);
        }
    }

    public AppCompatAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
    }

    public AppCompatAutoCompleteTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(TintContextWrapper.wrap(context), attributeSet, i2);
        ThemeUtils.checkAppCompatTheme(this, getContext());
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, f910d, i2, 0);
        if (obtainStyledAttributes.hasValue(0)) {
            setDropDownBackgroundDrawable(obtainStyledAttributes.getDrawable(0));
        }
        obtainStyledAttributes.recycle();
        AppCompatBackgroundHelper appCompatBackgroundHelper = new AppCompatBackgroundHelper(this);
        this.f911a = appCompatBackgroundHelper;
        appCompatBackgroundHelper.e(attributeSet, i2);
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f912b = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i2);
        appCompatTextHelper.b();
        AppCompatEmojiEditTextHelper appCompatEmojiEditTextHelper = new AppCompatEmojiEditTextHelper(this);
        this.f913c = appCompatEmojiEditTextHelper;
        appCompatEmojiEditTextHelper.d(attributeSet, i2);
        a(appCompatEmojiEditTextHelper);
    }
}
