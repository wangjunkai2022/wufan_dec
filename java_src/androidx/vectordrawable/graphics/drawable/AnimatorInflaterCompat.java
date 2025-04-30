package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import androidx.annotation.AnimatorRes;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public class AnimatorInflaterCompat {

    /* renamed from: a  reason: collision with root package name */
    private static final String f7888a = "AnimatorInflater";

    /* renamed from: b  reason: collision with root package name */
    private static final int f7889b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static final int f7890c = 100;

    /* renamed from: d  reason: collision with root package name */
    private static final int f7891d = 0;

    /* renamed from: e  reason: collision with root package name */
    private static final int f7892e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final int f7893f = 2;

    /* renamed from: g  reason: collision with root package name */
    private static final int f7894g = 3;

    /* renamed from: h  reason: collision with root package name */
    private static final int f7895h = 4;

    /* renamed from: i  reason: collision with root package name */
    private static final boolean f7896i = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class PathDataEvaluator implements TypeEvaluator<PathParser.PathDataNode[]> {

        /* renamed from: a  reason: collision with root package name */
        private PathParser.PathDataNode[] f7897a;

        PathDataEvaluator() {
        }

        PathDataEvaluator(PathParser.PathDataNode[] pathDataNodeArr) {
            this.f7897a = pathDataNodeArr;
        }

        @Override // android.animation.TypeEvaluator
        public PathParser.PathDataNode[] evaluate(float f4, PathParser.PathDataNode[] pathDataNodeArr, PathParser.PathDataNode[] pathDataNodeArr2) {
            if (PathParser.canMorph(pathDataNodeArr, pathDataNodeArr2)) {
                if (!PathParser.canMorph(this.f7897a, pathDataNodeArr)) {
                    this.f7897a = PathParser.deepCopyNodes(pathDataNodeArr);
                }
                for (int i2 = 0; i2 < pathDataNodeArr.length; i2++) {
                    this.f7897a[i2].interpolatePathDataNode(pathDataNodeArr[i2], pathDataNodeArr2[i2], f4);
                }
                return this.f7897a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    private AnimatorInflaterCompat() {
    }

    private static Animator a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f4) throws XmlPullParserException, IOException {
        return b(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.animation.Animator b(android.content.Context r18, android.content.res.Resources r19, android.content.res.Resources.Theme r20, org.xmlpull.v1.XmlPullParser r21, android.util.AttributeSet r22, android.animation.AnimatorSet r23, int r24, float r25) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimatorInflaterCompat.b(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    private static Keyframe c(Keyframe keyframe, float f4) {
        if (keyframe.getType() == Float.TYPE) {
            return Keyframe.ofFloat(f4);
        }
        if (keyframe.getType() == Integer.TYPE) {
            return Keyframe.ofInt(f4);
        }
        return Keyframe.ofObject(f4);
    }

    private static void d(Keyframe[] keyframeArr, float f4, int i2, int i4) {
        float f5 = f4 / ((i4 - i2) + 2);
        while (i2 <= i4) {
            keyframeArr[i2].setFraction(keyframeArr[i2 - 1].getFraction() + f5);
            i2++;
        }
    }

    private static void e(Object[] objArr, String str) {
        if (objArr == null || objArr.length == 0) {
            return;
        }
        int length = objArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            Keyframe keyframe = (Keyframe) objArr[i2];
            StringBuilder sb = new StringBuilder();
            sb.append("Keyframe ");
            sb.append(i2);
            sb.append(": fraction ");
            Object obj = "null";
            sb.append(keyframe.getFraction() < 0.0f ? "null" : Float.valueOf(keyframe.getFraction()));
            sb.append(", , value : ");
            if (keyframe.hasValue()) {
                obj = keyframe.getValue();
            }
            sb.append(obj);
        }
    }

    private static PropertyValuesHolder f(TypedArray typedArray, int i2, int i4, int i5, String str) {
        int i6;
        int i7;
        int i8;
        float f4;
        PropertyValuesHolder ofFloat;
        float f5;
        float f6;
        PropertyValuesHolder ofObject;
        TypedValue peekValue = typedArray.peekValue(i4);
        boolean z3 = peekValue != null;
        int i9 = z3 ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i5);
        boolean z4 = peekValue2 != null;
        int i10 = z4 ? peekValue2.type : 0;
        if (i2 == 4) {
            i2 = ((z3 && i(i9)) || (z4 && i(i10))) ? 3 : 0;
        }
        boolean z5 = i2 == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        if (i2 == 2) {
            String string = typedArray.getString(i4);
            String string2 = typedArray.getString(i5);
            PathParser.PathDataNode[] createNodesFromPathData = PathParser.createNodesFromPathData(string);
            PathParser.PathDataNode[] createNodesFromPathData2 = PathParser.createNodesFromPathData(string2);
            if (createNodesFromPathData == null && createNodesFromPathData2 == null) {
                return null;
            }
            if (createNodesFromPathData == null) {
                if (createNodesFromPathData2 != null) {
                    return PropertyValuesHolder.ofObject(str, new PathDataEvaluator(), createNodesFromPathData2);
                }
                return null;
            }
            PathDataEvaluator pathDataEvaluator = new PathDataEvaluator();
            if (createNodesFromPathData2 != null) {
                if (PathParser.canMorph(createNodesFromPathData, createNodesFromPathData2)) {
                    ofObject = PropertyValuesHolder.ofObject(str, pathDataEvaluator, createNodesFromPathData, createNodesFromPathData2);
                } else {
                    throw new InflateException(" Can't morph from " + string + " to " + string2);
                }
            } else {
                ofObject = PropertyValuesHolder.ofObject(str, pathDataEvaluator, createNodesFromPathData);
            }
            return ofObject;
        }
        ArgbEvaluator argbEvaluator = i2 == 3 ? ArgbEvaluator.getInstance() : null;
        if (z5) {
            if (z3) {
                if (i9 == 5) {
                    f5 = typedArray.getDimension(i4, 0.0f);
                } else {
                    f5 = typedArray.getFloat(i4, 0.0f);
                }
                if (z4) {
                    if (i10 == 5) {
                        f6 = typedArray.getDimension(i5, 0.0f);
                    } else {
                        f6 = typedArray.getFloat(i5, 0.0f);
                    }
                    ofFloat = PropertyValuesHolder.ofFloat(str, f5, f6);
                } else {
                    ofFloat = PropertyValuesHolder.ofFloat(str, f5);
                }
            } else {
                if (i10 == 5) {
                    f4 = typedArray.getDimension(i5, 0.0f);
                } else {
                    f4 = typedArray.getFloat(i5, 0.0f);
                }
                ofFloat = PropertyValuesHolder.ofFloat(str, f4);
            }
            propertyValuesHolder = ofFloat;
        } else if (z3) {
            if (i9 == 5) {
                i7 = (int) typedArray.getDimension(i4, 0.0f);
            } else if (i(i9)) {
                i7 = typedArray.getColor(i4, 0);
            } else {
                i7 = typedArray.getInt(i4, 0);
            }
            if (z4) {
                if (i10 == 5) {
                    i8 = (int) typedArray.getDimension(i5, 0.0f);
                } else if (i(i10)) {
                    i8 = typedArray.getColor(i5, 0);
                } else {
                    i8 = typedArray.getInt(i5, 0);
                }
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i7, i8);
            } else {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i7);
            }
        } else if (z4) {
            if (i10 == 5) {
                i6 = (int) typedArray.getDimension(i5, 0.0f);
            } else if (i(i10)) {
                i6 = typedArray.getColor(i5, 0);
            } else {
                i6 = typedArray.getInt(i5, 0);
            }
            propertyValuesHolder = PropertyValuesHolder.ofInt(str, i6);
        }
        if (propertyValuesHolder == null || argbEvaluator == null) {
            return propertyValuesHolder;
        }
        propertyValuesHolder.setEvaluator(argbEvaluator);
        return propertyValuesHolder;
    }

    private static int g(TypedArray typedArray, int i2, int i4) {
        TypedValue peekValue = typedArray.peekValue(i2);
        boolean z3 = peekValue != null;
        int i5 = z3 ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i4);
        boolean z4 = peekValue2 != null;
        return ((z3 && i(i5)) || (z4 && i(z4 ? peekValue2.type : 0))) ? 3 : 0;
    }

    private static int h(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_KEYFRAME);
        int i2 = 0;
        TypedValue peekNamedValue = TypedArrayUtils.peekNamedValue(obtainAttributes, xmlPullParser, "value", 0);
        if ((peekNamedValue != null) && i(peekNamedValue.type)) {
            i2 = 3;
        }
        obtainAttributes.recycle();
        return i2;
    }

    private static boolean i(int i2) {
        return i2 >= 28 && i2 <= 31;
    }

    private static ValueAnimator j(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f4, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_ANIMATOR);
        TypedArray obtainAttributes2 = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_PROPERTY_ANIMATOR);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        o(valueAnimator, obtainAttributes, obtainAttributes2, f4, xmlPullParser);
        int namedResourceId = TypedArrayUtils.getNamedResourceId(obtainAttributes, xmlPullParser, "interpolator", 0, 0);
        if (namedResourceId > 0) {
            valueAnimator.setInterpolator(AnimationUtilsCompat.loadInterpolator(context, namedResourceId));
        }
        obtainAttributes.recycle();
        if (obtainAttributes2 != null) {
            obtainAttributes2.recycle();
        }
        return valueAnimator;
    }

    private static Keyframe k(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i2, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        Keyframe ofInt;
        TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_KEYFRAME);
        float namedFloat = TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "fraction", 3, -1.0f);
        TypedValue peekNamedValue = TypedArrayUtils.peekNamedValue(obtainAttributes, xmlPullParser, "value", 0);
        boolean z3 = peekNamedValue != null;
        if (i2 == 4) {
            i2 = (z3 && i(peekNamedValue.type)) ? 3 : 0;
        }
        if (z3) {
            if (i2 != 0) {
                ofInt = (i2 == 1 || i2 == 3) ? Keyframe.ofInt(namedFloat, TypedArrayUtils.getNamedInt(obtainAttributes, xmlPullParser, "value", 0, 0)) : null;
            } else {
                ofInt = Keyframe.ofFloat(namedFloat, TypedArrayUtils.getNamedFloat(obtainAttributes, xmlPullParser, "value", 0, 0.0f));
            }
        } else if (i2 == 0) {
            ofInt = Keyframe.ofFloat(namedFloat);
        } else {
            ofInt = Keyframe.ofInt(namedFloat);
        }
        int namedResourceId = TypedArrayUtils.getNamedResourceId(obtainAttributes, xmlPullParser, "interpolator", 1, 0);
        if (namedResourceId > 0) {
            ofInt.setInterpolator(AnimationUtilsCompat.loadInterpolator(context, namedResourceId));
        }
        obtainAttributes.recycle();
        return ofInt;
    }

    private static ObjectAnimator l(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f4, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        j(context, resources, theme, attributeSet, objectAnimator, f4, xmlPullParser);
        return objectAnimator;
    }

    public static Animator loadAnimator(Context context, @AnimatorRes int i2) throws Resources.NotFoundException {
        if (Build.VERSION.SDK_INT >= 24) {
            return AnimatorInflater.loadAnimator(context, i2);
        }
        return loadAnimator(context, context.getResources(), context.getTheme(), i2);
    }

    private static PropertyValuesHolder m(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i2) throws XmlPullParserException, IOException {
        int size;
        PropertyValuesHolder propertyValuesHolder = null;
        ArrayList arrayList = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            } else if (xmlPullParser.getName().equals("keyframe")) {
                if (i2 == 4) {
                    i2 = h(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser);
                }
                Keyframe k4 = k(context, resources, theme, Xml.asAttributeSet(xmlPullParser), i2, xmlPullParser);
                if (k4 != null) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(k4);
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null && (size = arrayList.size()) > 0) {
            Keyframe keyframe = (Keyframe) arrayList.get(0);
            Keyframe keyframe2 = (Keyframe) arrayList.get(size - 1);
            float fraction = keyframe2.getFraction();
            if (fraction < 1.0f) {
                if (fraction < 0.0f) {
                    keyframe2.setFraction(1.0f);
                } else {
                    arrayList.add(arrayList.size(), c(keyframe2, 1.0f));
                    size++;
                }
            }
            float fraction2 = keyframe.getFraction();
            if (fraction2 != 0.0f) {
                if (fraction2 < 0.0f) {
                    keyframe.setFraction(0.0f);
                } else {
                    arrayList.add(0, c(keyframe, 0.0f));
                    size++;
                }
            }
            Keyframe[] keyframeArr = new Keyframe[size];
            arrayList.toArray(keyframeArr);
            for (int i4 = 0; i4 < size; i4++) {
                Keyframe keyframe3 = keyframeArr[i4];
                if (keyframe3.getFraction() < 0.0f) {
                    if (i4 == 0) {
                        keyframe3.setFraction(0.0f);
                    } else {
                        int i5 = size - 1;
                        if (i4 == i5) {
                            keyframe3.setFraction(1.0f);
                        } else {
                            int i6 = i4;
                            for (int i7 = i4 + 1; i7 < i5 && keyframeArr[i7].getFraction() < 0.0f; i7++) {
                                i6 = i7;
                            }
                            d(keyframeArr, keyframeArr[i6 + 1].getFraction() - keyframeArr[i4 - 1].getFraction(), i4, i6);
                        }
                    }
                }
            }
            propertyValuesHolder = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
            if (i2 == 3) {
                propertyValuesHolder.setEvaluator(ArgbEvaluator.getInstance());
            }
        }
        return propertyValuesHolder;
    }

    private static PropertyValuesHolder[] n(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        int i2;
        PropertyValuesHolder[] propertyValuesHolderArr = null;
        ArrayList arrayList = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            } else if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals("propertyValuesHolder")) {
                    TypedArray obtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_PROPERTY_VALUES_HOLDER);
                    String namedString = TypedArrayUtils.getNamedString(obtainAttributes, xmlPullParser, "propertyName", 3);
                    int namedInt = TypedArrayUtils.getNamedInt(obtainAttributes, xmlPullParser, "valueType", 2, 4);
                    PropertyValuesHolder m4 = m(context, resources, theme, xmlPullParser, namedString, namedInt);
                    if (m4 == null) {
                        m4 = f(obtainAttributes, namedInt, 0, 1, namedString);
                    }
                    if (m4 != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(m4);
                    }
                    obtainAttributes.recycle();
                }
                xmlPullParser.next();
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            propertyValuesHolderArr = new PropertyValuesHolder[size];
            for (i2 = 0; i2 < size; i2++) {
                propertyValuesHolderArr[i2] = (PropertyValuesHolder) arrayList.get(i2);
            }
        }
        return propertyValuesHolderArr;
    }

    private static void o(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f4, XmlPullParser xmlPullParser) {
        long namedInt = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "duration", 1, 300);
        long namedInt2 = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "startOffset", 2, 0);
        int namedInt3 = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "valueType", 7, 4);
        if (TypedArrayUtils.hasAttribute(xmlPullParser, "valueFrom") && TypedArrayUtils.hasAttribute(xmlPullParser, "valueTo")) {
            if (namedInt3 == 4) {
                namedInt3 = g(typedArray, 5, 6);
            }
            PropertyValuesHolder f5 = f(typedArray, namedInt3, 5, 6, "");
            if (f5 != null) {
                valueAnimator.setValues(f5);
            }
        }
        valueAnimator.setDuration(namedInt);
        valueAnimator.setStartDelay(namedInt2);
        valueAnimator.setRepeatCount(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "repeatCount", 3, 0));
        valueAnimator.setRepeatMode(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, "repeatMode", 4, 1));
        if (typedArray2 != null) {
            p(valueAnimator, typedArray2, namedInt3, f4, xmlPullParser);
        }
    }

    private static void p(ValueAnimator valueAnimator, TypedArray typedArray, int i2, float f4, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String namedString = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "pathData", 1);
        if (namedString != null) {
            String namedString2 = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "propertyXName", 2);
            String namedString3 = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "propertyYName", 3);
            if (i2 != 2) {
            }
            if (namedString2 == null && namedString3 == null) {
                throw new InflateException(typedArray.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
            }
            q(PathParser.createPathFromPathData(namedString), objectAnimator, f4 * 0.5f, namedString2, namedString3);
            return;
        }
        objectAnimator.setPropertyName(TypedArrayUtils.getNamedString(typedArray, xmlPullParser, "propertyName", 0));
    }

    private static void q(Path path, ObjectAnimator objectAnimator, float f4, String str, String str2) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        ArrayList arrayList = new ArrayList();
        float f5 = 0.0f;
        arrayList.add(Float.valueOf(0.0f));
        float f6 = 0.0f;
        do {
            f6 += pathMeasure.getLength();
            arrayList.add(Float.valueOf(f6));
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int min = Math.min(100, ((int) (f6 / f4)) + 1);
        float[] fArr = new float[min];
        float[] fArr2 = new float[min];
        float[] fArr3 = new float[2];
        float f7 = f6 / (min - 1);
        int i2 = 0;
        int i4 = 0;
        while (true) {
            if (i2 >= min) {
                break;
            }
            pathMeasure2.getPosTan(f5 - ((Float) arrayList.get(i4)).floatValue(), fArr3, null);
            fArr[i2] = fArr3[0];
            fArr2[i2] = fArr3[1];
            f5 += f7;
            int i5 = i4 + 1;
            if (i5 < arrayList.size() && f5 > ((Float) arrayList.get(i5)).floatValue()) {
                pathMeasure2.nextContour();
                i4 = i5;
            }
            i2++;
        }
        PropertyValuesHolder ofFloat = str != null ? PropertyValuesHolder.ofFloat(str, fArr) : null;
        PropertyValuesHolder ofFloat2 = str2 != null ? PropertyValuesHolder.ofFloat(str2, fArr2) : null;
        if (ofFloat == null) {
            objectAnimator.setValues(ofFloat2);
        } else if (ofFloat2 == null) {
            objectAnimator.setValues(ofFloat);
        } else {
            objectAnimator.setValues(ofFloat, ofFloat2);
        }
    }

    public static Animator loadAnimator(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i2) throws Resources.NotFoundException {
        return loadAnimator(context, resources, theme, i2, 1.0f);
    }

    public static Animator loadAnimator(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i2, float f4) throws Resources.NotFoundException {
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = resources.getAnimation(i2);
                    return a(context, resources, theme, xmlResourceParser, f4);
                } catch (XmlPullParserException e4) {
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                    notFoundException.initCause(e4);
                    throw notFoundException;
                }
            } catch (IOException e5) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i2));
                notFoundException2.initCause(e5);
                throw notFoundException2;
            }
        } finally {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
        }
    }
}
