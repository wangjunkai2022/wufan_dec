package androidx.transition;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;
/* loaded from: classes2.dex */
class PathProperty<T> extends Property<T, Float> {

    /* renamed from: a  reason: collision with root package name */
    private final Property<T, PointF> f7665a;

    /* renamed from: b  reason: collision with root package name */
    private final PathMeasure f7666b;

    /* renamed from: c  reason: collision with root package name */
    private final float f7667c;

    /* renamed from: d  reason: collision with root package name */
    private final float[] f7668d;

    /* renamed from: e  reason: collision with root package name */
    private final PointF f7669e;

    /* renamed from: f  reason: collision with root package name */
    private float f7670f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PathProperty(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f7668d = new float[2];
        this.f7669e = new PointF();
        this.f7665a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f7666b = pathMeasure;
        this.f7667c = pathMeasure.getLength();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.util.Property
    public /* bridge */ /* synthetic */ Float get(Object obj) {
        return get((PathProperty<T>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.util.Property
    public /* bridge */ /* synthetic */ void set(Object obj, Float f4) {
        set2((PathProperty<T>) obj, f4);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.util.Property
    public Float get(T t3) {
        return Float.valueOf(this.f7670f);
    }

    /* renamed from: set  reason: avoid collision after fix types in other method */
    public void set2(T t3, Float f4) {
        this.f7670f = f4.floatValue();
        this.f7666b.getPosTan(this.f7667c * f4.floatValue(), this.f7668d, null);
        PointF pointF = this.f7669e;
        float[] fArr = this.f7668d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f7665a.set(t3, pointF);
    }
}
