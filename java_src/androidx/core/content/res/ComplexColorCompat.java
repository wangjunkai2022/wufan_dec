package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class ComplexColorCompat {

    /* renamed from: d  reason: collision with root package name */
    private static final String f4198d = "ComplexColorCompat";

    /* renamed from: a  reason: collision with root package name */
    private final Shader f4199a;

    /* renamed from: b  reason: collision with root package name */
    private final ColorStateList f4200b;

    /* renamed from: c  reason: collision with root package name */
    private int f4201c;

    private ComplexColorCompat(Shader shader, ColorStateList colorStateList, @ColorInt int i2) {
        this.f4199a = shader;
        this.f4200b = colorStateList;
        this.f4201c = i2;
    }

    @NonNull
    private static ComplexColorCompat a(@NonNull Resources resources, @ColorRes int i2, @Nullable Resources.Theme theme) throws IOException, XmlPullParserException {
        int next;
        XmlResourceParser xml = resources.getXml(i2);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            String name = xml.getName();
            name.hashCode();
            if (name.equals("gradient")) {
                return d(GradientColorInflaterCompat.c(resources, xml, asAttributeSet, theme));
            }
            if (name.equals("selector")) {
                return c(ColorStateListInflaterCompat.createFromXmlInner(resources, xml, asAttributeSet, theme));
            }
            throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ComplexColorCompat b(@ColorInt int i2) {
        return new ComplexColorCompat(null, null, i2);
    }

    static ComplexColorCompat c(@NonNull ColorStateList colorStateList) {
        return new ComplexColorCompat(null, colorStateList, colorStateList.getDefaultColor());
    }

    static ComplexColorCompat d(@NonNull Shader shader) {
        return new ComplexColorCompat(shader, null, 0);
    }

    @Nullable
    public static ComplexColorCompat inflate(@NonNull Resources resources, @ColorRes int i2, @Nullable Resources.Theme theme) {
        try {
            return a(resources, i2, theme);
        } catch (Exception unused) {
            return null;
        }
    }

    @ColorInt
    public int getColor() {
        return this.f4201c;
    }

    @Nullable
    public Shader getShader() {
        return this.f4199a;
    }

    public boolean isGradient() {
        return this.f4199a != null;
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        return this.f4199a == null && (colorStateList = this.f4200b) != null && colorStateList.isStateful();
    }

    public boolean onStateChanged(int[] iArr) {
        if (isStateful()) {
            ColorStateList colorStateList = this.f4200b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f4201c) {
                this.f4201c = colorForState;
                return true;
            }
        }
        return false;
    }

    public void setColor(@ColorInt int i2) {
        this.f4201c = i2;
    }

    public boolean willDraw() {
        return isGradient() || this.f4201c != 0;
    }
}
