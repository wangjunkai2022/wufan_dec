package androidx.core.graphics;

import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.core.util.Preconditions;
/* loaded from: classes.dex */
public final class PathSegment {

    /* renamed from: a  reason: collision with root package name */
    private final PointF f4263a;

    /* renamed from: b  reason: collision with root package name */
    private final float f4264b;

    /* renamed from: c  reason: collision with root package name */
    private final PointF f4265c;

    /* renamed from: d  reason: collision with root package name */
    private final float f4266d;

    public PathSegment(@NonNull PointF pointF, float f4, @NonNull PointF pointF2, float f5) {
        this.f4263a = (PointF) Preconditions.checkNotNull(pointF, "start == null");
        this.f4264b = f4;
        this.f4265c = (PointF) Preconditions.checkNotNull(pointF2, "end == null");
        this.f4266d = f5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PathSegment) {
            PathSegment pathSegment = (PathSegment) obj;
            return Float.compare(this.f4264b, pathSegment.f4264b) == 0 && Float.compare(this.f4266d, pathSegment.f4266d) == 0 && this.f4263a.equals(pathSegment.f4263a) && this.f4265c.equals(pathSegment.f4265c);
        }
        return false;
    }

    @NonNull
    public PointF getEnd() {
        return this.f4265c;
    }

    public float getEndFraction() {
        return this.f4266d;
    }

    @NonNull
    public PointF getStart() {
        return this.f4263a;
    }

    public float getStartFraction() {
        return this.f4264b;
    }

    public int hashCode() {
        int hashCode = this.f4263a.hashCode() * 31;
        float f4 = this.f4264b;
        int floatToIntBits = (((hashCode + (f4 != 0.0f ? Float.floatToIntBits(f4) : 0)) * 31) + this.f4265c.hashCode()) * 31;
        float f5 = this.f4266d;
        return floatToIntBits + (f5 != 0.0f ? Float.floatToIntBits(f5) : 0);
    }

    public String toString() {
        return "PathSegment{start=" + this.f4263a + ", startFraction=" + this.f4264b + ", end=" + this.f4265c + ", endFraction=" + this.f4266d + '}';
    }
}
