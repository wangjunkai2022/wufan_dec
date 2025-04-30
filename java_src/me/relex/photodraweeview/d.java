package me.relex.photodraweeview;

import android.view.GestureDetector;
import android.view.View;
/* compiled from: IAttacher.java */
/* loaded from: classes5.dex */
public interface d {
    public static final float Y = 3.0f;
    public static final float Z = 1.75f;

    /* renamed from: a0  reason: collision with root package name */
    public static final float f72675a0 = 1.0f;

    /* renamed from: b0  reason: collision with root package name */
    public static final long f72676b0 = 200;

    float getMaximumScale();

    float getMediumScale();

    float getMinimumScale();

    e getOnPhotoTapListener();

    h getOnViewTapListener();

    float getScale();

    void setAllowParentInterceptOnEdge(boolean z3);

    void setMaximumScale(float f4);

    void setMediumScale(float f4);

    void setMinimumScale(float f4);

    void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener);

    void setOnLongClickListener(View.OnLongClickListener onLongClickListener);

    void setOnPhotoTapListener(e eVar);

    void setOnScaleChangeListener(f fVar);

    void setOnViewTapListener(h hVar);

    void setScale(float f4);

    void setScale(float f4, float f5, float f6, boolean z3);

    void setScale(float f4, boolean z3);

    void setZoomTransitionDuration(long j4);

    void update(int i2, int i4);
}
