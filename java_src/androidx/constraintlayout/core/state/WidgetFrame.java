package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.state.Transition;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import io.reactivex.annotations.SchedulerSupport;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes.dex */
public class WidgetFrame {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f2402a = true;
    public static float phone_orientation = Float.NaN;
    public float alpha;
    public int bottom;
    public float interpolatedPos;
    public int left;
    public final HashMap<String, CustomVariable> mCustom;
    public String name;
    public float pivotX;
    public float pivotY;
    public int right;
    public float rotationX;
    public float rotationY;
    public float rotationZ;
    public float scaleX;
    public float scaleY;
    public int top;
    public float translationX;
    public float translationY;
    public float translationZ;
    public int visibility;
    public ConstraintWidget widget;

    public WidgetFrame() {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
    }

    private static void a(StringBuilder sb, String str, float f4) {
        if (Float.isNaN(f4)) {
            return;
        }
        sb.append(str);
        sb.append(": ");
        sb.append(f4);
        sb.append(",\n");
    }

    private static void b(StringBuilder sb, String str, int i2) {
        sb.append(str);
        sb.append(": ");
        sb.append(i2);
        sb.append(",\n");
    }

    private static float c(float f4, float f5, float f6, float f7) {
        boolean isNaN = Float.isNaN(f4);
        boolean isNaN2 = Float.isNaN(f5);
        if (isNaN && isNaN2) {
            return Float.NaN;
        }
        if (isNaN) {
            f4 = f6;
        }
        if (isNaN2) {
            f5 = f6;
        }
        return f4 + (f7 * (f5 - f4));
    }

    private void g(StringBuilder sb, ConstraintAnchor.Type type) {
        ConstraintAnchor anchor = this.widget.getAnchor(type);
        if (anchor == null || anchor.mTarget == null) {
            return;
        }
        sb.append("Anchor");
        sb.append(type.name());
        sb.append(": ['");
        String str = anchor.mTarget.getOwner().stringId;
        if (str == null) {
            str = "#PARENT";
        }
        sb.append(str);
        sb.append("', '");
        sb.append(anchor.mTarget.getType().name());
        sb.append("', '");
        sb.append(anchor.mMargin);
        sb.append("'],\n");
    }

    public static void interpolate(int i2, int i4, WidgetFrame widgetFrame, WidgetFrame widgetFrame2, WidgetFrame widgetFrame3, Transition transition, float f4) {
        int i5;
        float f5;
        int i6;
        float f6;
        float f7;
        int i7;
        float f8;
        int i8;
        int i9;
        int i10;
        int i11;
        float f9 = 100.0f * f4;
        int i12 = (int) f9;
        int i13 = widgetFrame2.left;
        int i14 = widgetFrame2.top;
        int i15 = widgetFrame3.left;
        int i16 = widgetFrame3.top;
        int i17 = widgetFrame2.right - i13;
        int i18 = widgetFrame2.bottom - i14;
        int i19 = widgetFrame3.right - i15;
        int i20 = widgetFrame3.bottom - i16;
        float f10 = widgetFrame2.alpha;
        float f11 = widgetFrame3.alpha;
        if (widgetFrame2.visibility == 8) {
            i13 = (int) (i13 - (i19 / 2.0f));
            i14 = (int) (i14 - (i20 / 2.0f));
            if (Float.isNaN(f10)) {
                i6 = i20;
                i5 = i19;
                f5 = 0.0f;
            } else {
                f5 = f10;
                i5 = i19;
                i6 = i20;
            }
        } else {
            i5 = i17;
            f5 = f10;
            i6 = i18;
        }
        if (widgetFrame3.visibility == 8) {
            i15 = (int) (i15 - (i5 / 2.0f));
            i16 = (int) (i16 - (i6 / 2.0f));
            i19 = i5;
            i20 = i6;
            if (Float.isNaN(f11)) {
                f11 = 0.0f;
            }
        }
        if (Float.isNaN(f5) && !Float.isNaN(f11)) {
            f5 = 1.0f;
        }
        if (!Float.isNaN(f5) && Float.isNaN(f11)) {
            f11 = 1.0f;
        }
        if (widgetFrame2.visibility == 4) {
            f7 = f11;
            f6 = 0.0f;
        } else {
            f6 = f5;
            f7 = f11;
        }
        float f12 = widgetFrame3.visibility == 4 ? 0.0f : f7;
        if (widgetFrame.widget == null || !transition.hasPositionKeyframes()) {
            i7 = i13;
            f8 = f4;
        } else {
            Transition.KeyPosition findPreviousPosition = transition.findPreviousPosition(widgetFrame.widget.stringId, i12);
            i7 = i13;
            Transition.KeyPosition findNextPosition = transition.findNextPosition(widgetFrame.widget.stringId, i12);
            if (findPreviousPosition == findNextPosition) {
                findNextPosition = null;
            }
            if (findPreviousPosition != null) {
                i7 = (int) (findPreviousPosition.f2390d * i2);
                i9 = i4;
                i14 = (int) (findPreviousPosition.f2391e * i9);
                i10 = findPreviousPosition.f2387a;
                i8 = i2;
            } else {
                i8 = i2;
                i9 = i4;
                i10 = 0;
            }
            if (findNextPosition != null) {
                i15 = (int) (findNextPosition.f2390d * i8);
                i16 = (int) (findNextPosition.f2391e * i9);
                i11 = findNextPosition.f2387a;
            } else {
                i11 = 100;
            }
            f8 = (f9 - i10) / (i11 - i10);
        }
        int i21 = i7;
        widgetFrame.widget = widgetFrame2.widget;
        int i22 = (int) (i21 + ((i15 - i21) * f8));
        widgetFrame.left = i22;
        int i23 = (int) (i14 + (f8 * (i16 - i14)));
        widgetFrame.top = i23;
        float f13 = 1.0f - f4;
        widgetFrame.right = i22 + ((int) ((i5 * f13) + (i19 * f4)));
        widgetFrame.bottom = i23 + ((int) ((f13 * i6) + (i20 * f4)));
        widgetFrame.pivotX = c(widgetFrame2.pivotX, widgetFrame3.pivotX, 0.5f, f4);
        widgetFrame.pivotY = c(widgetFrame2.pivotY, widgetFrame3.pivotY, 0.5f, f4);
        widgetFrame.rotationX = c(widgetFrame2.rotationX, widgetFrame3.rotationX, 0.0f, f4);
        widgetFrame.rotationY = c(widgetFrame2.rotationY, widgetFrame3.rotationY, 0.0f, f4);
        widgetFrame.rotationZ = c(widgetFrame2.rotationZ, widgetFrame3.rotationZ, 0.0f, f4);
        widgetFrame.scaleX = c(widgetFrame2.scaleX, widgetFrame3.scaleX, 1.0f, f4);
        widgetFrame.scaleY = c(widgetFrame2.scaleY, widgetFrame3.scaleY, 1.0f, f4);
        widgetFrame.translationX = c(widgetFrame2.translationX, widgetFrame3.translationX, 0.0f, f4);
        widgetFrame.translationY = c(widgetFrame2.translationY, widgetFrame3.translationY, 0.0f, f4);
        widgetFrame.translationZ = c(widgetFrame2.translationZ, widgetFrame3.translationZ, 0.0f, f4);
        widgetFrame.alpha = c(f6, f12, 1.0f, f4);
        Set<String> keySet = widgetFrame3.mCustom.keySet();
        widgetFrame.mCustom.clear();
        for (String str : keySet) {
            if (widgetFrame2.mCustom.containsKey(str)) {
                CustomVariable customVariable = widgetFrame2.mCustom.get(str);
                CustomVariable customVariable2 = widgetFrame3.mCustom.get(str);
                CustomVariable customVariable3 = new CustomVariable(customVariable);
                widgetFrame.mCustom.put(str, customVariable3);
                if (customVariable.numberOfInterpolatedValues() == 1) {
                    customVariable3.setValue(Float.valueOf(c(customVariable.getValueToInterpolate(), customVariable2.getValueToInterpolate(), 0.0f, f4)));
                } else {
                    int numberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
                    float[] fArr = new float[numberOfInterpolatedValues];
                    float[] fArr2 = new float[numberOfInterpolatedValues];
                    customVariable.getValuesToInterpolate(fArr);
                    customVariable2.getValuesToInterpolate(fArr2);
                    for (int i24 = 0; i24 < numberOfInterpolatedValues; i24++) {
                        fArr[i24] = c(fArr[i24], fArr2[i24], 0.0f, f4);
                        customVariable3.setValue(fArr);
                    }
                }
            }
        }
    }

    public void addCustomColor(String str, int i2) {
        setCustomAttribute(str, 902, i2);
    }

    public void addCustomFloat(String str, float f4) {
        setCustomAttribute(str, 901, f4);
    }

    public float centerX() {
        int i2 = this.left;
        return i2 + ((this.right - i2) / 2.0f);
    }

    public float centerY() {
        int i2 = this.top;
        return i2 + ((this.bottom - i2) / 2.0f);
    }

    void d(String str) {
        String str2;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str3 = (".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName()) + " " + (hashCode() % 1000);
        if (this.widget != null) {
            str2 = str3 + net.lingala.zip4j.util.e.F0 + (this.widget.hashCode() % 1000);
        } else {
            str2 = str3 + "/NULL";
        }
        System.out.println(str2 + " " + str);
    }

    void e(CLElement cLElement) throws CLParsingException {
        CLObject cLObject = (CLObject) cLElement;
        int size = cLObject.size();
        for (int i2 = 0; i2 < size; i2++) {
            CLKey cLKey = (CLKey) cLObject.get(i2);
            cLKey.content();
            CLElement value = cLKey.getValue();
            String content = value.content();
            if (content.matches("#[0-9a-fA-F]+")) {
                setCustomAttribute(cLKey.content(), 902, Integer.parseInt(content.substring(1), 16));
            } else if (value instanceof CLNumber) {
                setCustomAttribute(cLKey.content(), 901, value.getFloat());
            } else {
                setCustomAttribute(cLKey.content(), TypedValues.Custom.TYPE_STRING, content);
            }
        }
    }

    void f() {
        String str;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = (".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName()) + " " + (hashCode() % 1000);
        if (this.widget != null) {
            str = str2 + net.lingala.zip4j.util.e.F0 + (this.widget.hashCode() % 1000) + " ";
        } else {
            str = str2 + "/NULL ";
        }
        HashMap<String, CustomVariable> hashMap = this.mCustom;
        if (hashMap != null) {
            Iterator<String> it2 = hashMap.keySet().iterator();
            while (it2.hasNext()) {
                System.out.println(str + this.mCustom.get(it2.next()).toString());
            }
        }
    }

    public CustomVariable getCustomAttribute(String str) {
        return this.mCustom.get(str);
    }

    public Set<String> getCustomAttributeNames() {
        return this.mCustom.keySet();
    }

    public int getCustomColor(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getColorValue();
        }
        return -21880;
    }

    public float getCustomFloat(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getFloatValue();
        }
        return Float.NaN;
    }

    public String getId() {
        ConstraintWidget constraintWidget = this.widget;
        return constraintWidget == null ? "unknown" : constraintWidget.stringId;
    }

    public int height() {
        return Math.max(0, this.bottom - this.top);
    }

    public boolean isDefaultTransform() {
        return Float.isNaN(this.rotationX) && Float.isNaN(this.rotationY) && Float.isNaN(this.rotationZ) && Float.isNaN(this.translationX) && Float.isNaN(this.translationY) && Float.isNaN(this.translationZ) && Float.isNaN(this.scaleX) && Float.isNaN(this.scaleY) && Float.isNaN(this.alpha);
    }

    public StringBuilder serialize(StringBuilder sb) {
        return serialize(sb, false);
    }

    public void setCustomAttribute(String str, int i2, float f4) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setFloatValue(f4);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i2, f4));
        }
    }

    public void setCustomValue(CustomAttribute customAttribute, float[] fArr) {
    }

    public boolean setValue(String str, CLElement cLElement) throws CLParsingException {
        str.hashCode();
        char c4 = 65535;
        switch (str.hashCode()) {
            case -1881940865:
                if (str.equals("phone_orientation")) {
                    c4 = 0;
                    break;
                }
                break;
            case -1383228885:
                if (str.equals("bottom")) {
                    c4 = 1;
                    break;
                }
                break;
            case -1349088399:
                if (str.equals(SchedulerSupport.CUSTOM)) {
                    c4 = 2;
                    break;
                }
                break;
            case -1249320806:
                if (str.equals("rotationX")) {
                    c4 = 3;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c4 = 4;
                    break;
                }
                break;
            case -1249320804:
                if (str.equals("rotationZ")) {
                    c4 = 5;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c4 = 6;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c4 = 7;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c4 = '\b';
                    break;
                }
                break;
            case -987906986:
                if (str.equals("pivotX")) {
                    c4 = '\t';
                    break;
                }
                break;
            case -987906985:
                if (str.equals("pivotY")) {
                    c4 = '\n';
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c4 = 11;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c4 = '\f';
                    break;
                }
                break;
            case 115029:
                if (str.equals("top")) {
                    c4 = '\r';
                    break;
                }
                break;
            case 3317767:
                if (str.equals("left")) {
                    c4 = 14;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c4 = 15;
                    break;
                }
                break;
            case 108511772:
                if (str.equals("right")) {
                    c4 = 16;
                    break;
                }
                break;
            case 642850769:
                if (str.equals("interpolatedPos")) {
                    c4 = 17;
                    break;
                }
                break;
        }
        switch (c4) {
            case 0:
                phone_orientation = cLElement.getFloat();
                break;
            case 1:
                this.bottom = cLElement.getInt();
                break;
            case 2:
                e(cLElement);
                break;
            case 3:
                this.rotationX = cLElement.getFloat();
                break;
            case 4:
                this.rotationY = cLElement.getFloat();
                break;
            case 5:
                this.rotationZ = cLElement.getFloat();
                break;
            case 6:
                this.translationX = cLElement.getFloat();
                break;
            case 7:
                this.translationY = cLElement.getFloat();
                break;
            case '\b':
                this.translationZ = cLElement.getFloat();
                break;
            case '\t':
                this.pivotX = cLElement.getFloat();
                break;
            case '\n':
                this.pivotY = cLElement.getFloat();
                break;
            case 11:
                this.scaleX = cLElement.getFloat();
                break;
            case '\f':
                this.scaleY = cLElement.getFloat();
                break;
            case '\r':
                this.top = cLElement.getInt();
                break;
            case 14:
                this.left = cLElement.getInt();
                break;
            case 15:
                this.alpha = cLElement.getFloat();
                break;
            case 16:
                this.right = cLElement.getInt();
                break;
            case 17:
                this.interpolatedPos = cLElement.getFloat();
                break;
            default:
                return false;
        }
        return true;
    }

    public WidgetFrame update() {
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget != null) {
            this.left = constraintWidget.getLeft();
            this.top = this.widget.getTop();
            this.right = this.widget.getRight();
            this.bottom = this.widget.getBottom();
            updateAttributes(this.widget.frame);
        }
        return this;
    }

    public void updateAttributes(WidgetFrame widgetFrame) {
        this.pivotX = widgetFrame.pivotX;
        this.pivotY = widgetFrame.pivotY;
        this.rotationX = widgetFrame.rotationX;
        this.rotationY = widgetFrame.rotationY;
        this.rotationZ = widgetFrame.rotationZ;
        this.translationX = widgetFrame.translationX;
        this.translationY = widgetFrame.translationY;
        this.translationZ = widgetFrame.translationZ;
        this.scaleX = widgetFrame.scaleX;
        this.scaleY = widgetFrame.scaleY;
        this.alpha = widgetFrame.alpha;
        this.visibility = widgetFrame.visibility;
        this.mCustom.clear();
        for (CustomVariable customVariable : widgetFrame.mCustom.values()) {
            this.mCustom.put(customVariable.getName(), customVariable.copy());
        }
    }

    public int width() {
        return Math.max(0, this.right - this.left);
    }

    public StringBuilder serialize(StringBuilder sb, boolean z3) {
        sb.append("{\n");
        b(sb, "left", this.left);
        b(sb, "top", this.top);
        b(sb, "right", this.right);
        b(sb, "bottom", this.bottom);
        a(sb, "pivotX", this.pivotX);
        a(sb, "pivotY", this.pivotY);
        a(sb, "rotationX", this.rotationX);
        a(sb, "rotationY", this.rotationY);
        a(sb, "rotationZ", this.rotationZ);
        a(sb, "translationX", this.translationX);
        a(sb, "translationY", this.translationY);
        a(sb, "translationZ", this.translationZ);
        a(sb, "scaleX", this.scaleX);
        a(sb, "scaleY", this.scaleY);
        a(sb, "alpha", this.alpha);
        b(sb, "visibility", this.visibility);
        a(sb, "interpolatedPos", this.interpolatedPos);
        if (this.widget != null) {
            for (ConstraintAnchor.Type type : ConstraintAnchor.Type.values()) {
                g(sb, type);
            }
        }
        if (z3) {
            a(sb, "phone_orientation", phone_orientation);
        }
        if (z3) {
            a(sb, "phone_orientation", phone_orientation);
        }
        if (this.mCustom.size() != 0) {
            sb.append("custom : {\n");
            for (String str : this.mCustom.keySet()) {
                CustomVariable customVariable = this.mCustom.get(str);
                sb.append(str);
                sb.append(": ");
                switch (customVariable.getType()) {
                    case 900:
                        sb.append(customVariable.getIntegerValue());
                        sb.append(",\n");
                        break;
                    case 901:
                    case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                        sb.append(customVariable.getFloatValue());
                        sb.append(",\n");
                        break;
                    case 902:
                        sb.append("'");
                        sb.append(CustomVariable.colorString(customVariable.getIntegerValue()));
                        sb.append("',\n");
                        break;
                    case TypedValues.Custom.TYPE_STRING /* 903 */:
                        sb.append("'");
                        sb.append(customVariable.getStringValue());
                        sb.append("',\n");
                        break;
                    case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                        sb.append("'");
                        sb.append(customVariable.getBooleanValue());
                        sb.append("',\n");
                        break;
                }
            }
            sb.append("}\n");
        }
        sb.append("}\n");
        return sb;
    }

    public void setCustomAttribute(String str, int i2, int i4) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setIntValue(i4);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i2, i4));
        }
    }

    public void setCustomAttribute(String str, int i2, boolean z3) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setBooleanValue(z3);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i2, z3));
        }
    }

    public WidgetFrame update(ConstraintWidget constraintWidget) {
        if (constraintWidget == null) {
            return this;
        }
        this.widget = constraintWidget;
        update();
        return this;
    }

    public void setCustomAttribute(String str, int i2, String str2) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setStringValue(str2);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i2, str2));
        }
    }

    public WidgetFrame(ConstraintWidget constraintWidget) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = constraintWidget;
    }

    public WidgetFrame(WidgetFrame widgetFrame) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = widgetFrame.widget;
        this.left = widgetFrame.left;
        this.top = widgetFrame.top;
        this.right = widgetFrame.right;
        this.bottom = widgetFrame.bottom;
        updateAttributes(widgetFrame);
    }
}
