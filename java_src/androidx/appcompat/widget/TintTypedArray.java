package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class TintTypedArray {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1469a;

    /* renamed from: b  reason: collision with root package name */
    private final TypedArray f1470b;

    /* renamed from: c  reason: collision with root package name */
    private TypedValue f1471c;

    private TintTypedArray(Context context, TypedArray typedArray) {
        this.f1469a = context;
        this.f1470b = typedArray;
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public boolean getBoolean(int i2, boolean z3) {
        return this.f1470b.getBoolean(i2, z3);
    }

    @RequiresApi(21)
    public int getChangingConfigurations() {
        return this.f1470b.getChangingConfigurations();
    }

    public int getColor(int i2, int i4) {
        return this.f1470b.getColor(i2, i4);
    }

    public ColorStateList getColorStateList(int i2) {
        int resourceId;
        ColorStateList colorStateList;
        return (!this.f1470b.hasValue(i2) || (resourceId = this.f1470b.getResourceId(i2, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(this.f1469a, resourceId)) == null) ? this.f1470b.getColorStateList(i2) : colorStateList;
    }

    public float getDimension(int i2, float f4) {
        return this.f1470b.getDimension(i2, f4);
    }

    public int getDimensionPixelOffset(int i2, int i4) {
        return this.f1470b.getDimensionPixelOffset(i2, i4);
    }

    public int getDimensionPixelSize(int i2, int i4) {
        return this.f1470b.getDimensionPixelSize(i2, i4);
    }

    public Drawable getDrawable(int i2) {
        int resourceId;
        if (this.f1470b.hasValue(i2) && (resourceId = this.f1470b.getResourceId(i2, 0)) != 0) {
            return AppCompatResources.getDrawable(this.f1469a, resourceId);
        }
        return this.f1470b.getDrawable(i2);
    }

    public Drawable getDrawableIfKnown(int i2) {
        int resourceId;
        if (!this.f1470b.hasValue(i2) || (resourceId = this.f1470b.getResourceId(i2, 0)) == 0) {
            return null;
        }
        return AppCompatDrawableManager.get().b(this.f1469a, resourceId, true);
    }

    public float getFloat(int i2, float f4) {
        return this.f1470b.getFloat(i2, f4);
    }

    @Nullable
    public Typeface getFont(@StyleableRes int i2, int i4, @Nullable ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.f1470b.getResourceId(i2, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1471c == null) {
            this.f1471c = new TypedValue();
        }
        return ResourcesCompat.getFont(this.f1469a, resourceId, this.f1471c, i4, fontCallback);
    }

    public float getFraction(int i2, int i4, int i5, float f4) {
        return this.f1470b.getFraction(i2, i4, i5, f4);
    }

    public int getIndex(int i2) {
        return this.f1470b.getIndex(i2);
    }

    public int getIndexCount() {
        return this.f1470b.getIndexCount();
    }

    public int getInt(int i2, int i4) {
        return this.f1470b.getInt(i2, i4);
    }

    public int getInteger(int i2, int i4) {
        return this.f1470b.getInteger(i2, i4);
    }

    public int getLayoutDimension(int i2, String str) {
        return this.f1470b.getLayoutDimension(i2, str);
    }

    public String getNonResourceString(int i2) {
        return this.f1470b.getNonResourceString(i2);
    }

    public String getPositionDescription() {
        return this.f1470b.getPositionDescription();
    }

    public int getResourceId(int i2, int i4) {
        return this.f1470b.getResourceId(i2, i4);
    }

    public Resources getResources() {
        return this.f1470b.getResources();
    }

    public String getString(int i2) {
        return this.f1470b.getString(i2);
    }

    public CharSequence getText(int i2) {
        return this.f1470b.getText(i2);
    }

    public CharSequence[] getTextArray(int i2) {
        return this.f1470b.getTextArray(i2);
    }

    public int getType(int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f1470b.getType(i2);
        }
        if (this.f1471c == null) {
            this.f1471c = new TypedValue();
        }
        this.f1470b.getValue(i2, this.f1471c);
        return this.f1471c.type;
    }

    public boolean getValue(int i2, TypedValue typedValue) {
        return this.f1470b.getValue(i2, typedValue);
    }

    public TypedArray getWrappedTypeArray() {
        return this.f1470b;
    }

    public boolean hasValue(int i2) {
        return this.f1470b.hasValue(i2);
    }

    public int length() {
        return this.f1470b.length();
    }

    public TypedValue peekValue(int i2) {
        return this.f1470b.peekValue(i2);
    }

    public void recycle() {
        this.f1470b.recycle();
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i2, int i4) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, iArr, i2, i4));
    }

    public int getLayoutDimension(int i2, int i4) {
        return this.f1470b.getLayoutDimension(i2, i4);
    }

    public static TintTypedArray obtainStyledAttributes(Context context, int i2, int[] iArr) {
        return new TintTypedArray(context, context.obtainStyledAttributes(i2, iArr));
    }
}
