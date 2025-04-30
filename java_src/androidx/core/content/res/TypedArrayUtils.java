package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import org.xmlpull.v1.XmlPullParser;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class TypedArrayUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4236a = "http://schemas.android.com/apk/res/android";

    private TypedArrayUtils() {
    }

    @NonNull
    private static ColorStateList a(@NonNull TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    public static int getAttr(@NonNull Context context, int i2, int i4) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i2, typedValue, true);
        return typedValue.resourceId != 0 ? i2 : i4;
    }

    public static boolean getBoolean(@NonNull TypedArray typedArray, @StyleableRes int i2, @StyleableRes int i4, boolean z3) {
        return typedArray.getBoolean(i2, typedArray.getBoolean(i4, z3));
    }

    @Nullable
    public static Drawable getDrawable(@NonNull TypedArray typedArray, @StyleableRes int i2, @StyleableRes int i4) {
        Drawable drawable = typedArray.getDrawable(i2);
        return drawable == null ? typedArray.getDrawable(i4) : drawable;
    }

    public static int getInt(@NonNull TypedArray typedArray, @StyleableRes int i2, @StyleableRes int i4, int i5) {
        return typedArray.getInt(i2, typedArray.getInt(i4, i5));
    }

    public static boolean getNamedBoolean(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2, boolean z3) {
        return !hasAttribute(xmlPullParser, str) ? z3 : typedArray.getBoolean(i2, z3);
    }

    @ColorInt
    public static int getNamedColor(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2, @ColorInt int i4) {
        return !hasAttribute(xmlPullParser, str) ? i4 : typedArray.getColor(i2, i4);
    }

    @Nullable
    public static ColorStateList getNamedColorStateList(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme, @NonNull String str, @StyleableRes int i2) {
        if (hasAttribute(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i2, typedValue);
            int i4 = typedValue.type;
            if (i4 != 2) {
                if (i4 >= 28 && i4 <= 31) {
                    return a(typedValue);
                }
                return ColorStateListInflaterCompat.inflate(typedArray.getResources(), typedArray.getResourceId(i2, 0), theme);
            }
            throw new UnsupportedOperationException("Failed to resolve attribute at index " + i2 + ": " + typedValue);
        }
        return null;
    }

    public static ComplexColorCompat getNamedComplexColor(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme, @NonNull String str, @StyleableRes int i2, @ColorInt int i4) {
        if (hasAttribute(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i2, typedValue);
            int i5 = typedValue.type;
            if (i5 >= 28 && i5 <= 31) {
                return ComplexColorCompat.b(typedValue.data);
            }
            ComplexColorCompat inflate = ComplexColorCompat.inflate(typedArray.getResources(), typedArray.getResourceId(i2, 0), theme);
            if (inflate != null) {
                return inflate;
            }
        }
        return ComplexColorCompat.b(i4);
    }

    public static float getNamedFloat(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2, float f4) {
        return !hasAttribute(xmlPullParser, str) ? f4 : typedArray.getFloat(i2, f4);
    }

    public static int getNamedInt(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2, int i4) {
        return !hasAttribute(xmlPullParser, str) ? i4 : typedArray.getInt(i2, i4);
    }

    @AnyRes
    public static int getNamedResourceId(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2, @AnyRes int i4) {
        return !hasAttribute(xmlPullParser, str) ? i4 : typedArray.getResourceId(i2, i4);
    }

    @Nullable
    public static String getNamedString(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int i2) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.getString(i2);
        }
        return null;
    }

    @AnyRes
    public static int getResourceId(@NonNull TypedArray typedArray, @StyleableRes int i2, @StyleableRes int i4, @AnyRes int i5) {
        return typedArray.getResourceId(i2, typedArray.getResourceId(i4, i5));
    }

    @Nullable
    public static String getString(@NonNull TypedArray typedArray, @StyleableRes int i2, @StyleableRes int i4) {
        String string = typedArray.getString(i2);
        return string == null ? typedArray.getString(i4) : string;
    }

    @Nullable
    public static CharSequence getText(@NonNull TypedArray typedArray, @StyleableRes int i2, @StyleableRes int i4) {
        CharSequence text = typedArray.getText(i2);
        return text == null ? typedArray.getText(i4) : text;
    }

    @Nullable
    public static CharSequence[] getTextArray(@NonNull TypedArray typedArray, @StyleableRes int i2, @StyleableRes int i4) {
        CharSequence[] textArray = typedArray.getTextArray(i2);
        return textArray == null ? typedArray.getTextArray(i4) : textArray;
    }

    public static boolean hasAttribute(@NonNull XmlPullParser xmlPullParser, @NonNull String str) {
        return xmlPullParser.getAttributeValue(f4236a, str) != null;
    }

    @NonNull
    public static TypedArray obtainAttributes(@NonNull Resources resources, @Nullable Resources.Theme theme, @NonNull AttributeSet attributeSet, @NonNull int[] iArr) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, iArr);
        }
        return theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    @Nullable
    public static TypedValue peekNamedValue(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, int i2) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.peekValue(i2);
        }
        return null;
    }
}
