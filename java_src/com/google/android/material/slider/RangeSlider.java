package com.google.android.material.slider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import com.google.android.material.internal.o;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class RangeSlider extends BaseSlider<RangeSlider, b, c> {
    private float V0;
    private int W0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class RangeSliderState extends AbsSavedState {
        public static final Parcelable.Creator<RangeSliderState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private float f15770a;

        /* renamed from: b  reason: collision with root package name */
        private int f15771b;

        /* loaded from: classes2.dex */
        class a implements Parcelable.Creator<RangeSliderState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public RangeSliderState createFromParcel(Parcel parcel) {
                return new RangeSliderState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public RangeSliderState[] newArray(int i2) {
                return new RangeSliderState[i2];
            }
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeFloat(this.f15770a);
            parcel.writeInt(this.f15771b);
        }

        RangeSliderState(Parcelable parcelable) {
            super(parcelable);
        }

        private RangeSliderState(Parcel parcel) {
            super(parcel.readParcelable(RangeSliderState.class.getClassLoader()));
            this.f15770a = parcel.readFloat();
            this.f15771b = parcel.readInt();
        }
    }

    /* loaded from: classes2.dex */
    public interface b extends com.google.android.material.slider.a<RangeSlider> {
        void a(@NonNull RangeSlider rangeSlider, float f4, boolean z3);
    }

    /* loaded from: classes2.dex */
    public interface c extends com.google.android.material.slider.b<RangeSlider> {
        void b(@NonNull RangeSlider rangeSlider);

        void d(@NonNull RangeSlider rangeSlider);
    }

    public RangeSlider(@NonNull Context context) {
        this(context, null);
    }

    private static List<Float> B0(TypedArray typedArray) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < typedArray.length(); i2++) {
            arrayList.add(Float.valueOf(typedArray.getFloat(i2, -1.0f)));
        }
        return arrayList;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ boolean J() {
        return super.J();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ boolean P() {
        return super.P();
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public /* bridge */ /* synthetic */ boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        return super.dispatchHoverEvent(motionEvent);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public /* bridge */ /* synthetic */ boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void f0(@NonNull b bVar) {
        super.f0(bVar);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void g0(@NonNull c cVar) {
        super.g0(cVar);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    @NonNull
    public /* bridge */ /* synthetic */ CharSequence getAccessibilityClassName() {
        return super.getAccessibilityClassName();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ int getActiveThumbIndex() {
        return super.getActiveThumbIndex();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ int getFocusedThumbIndex() {
        return super.getFocusedThumbIndex();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @Dimension
    public /* bridge */ /* synthetic */ int getHaloRadius() {
        return super.getHaloRadius();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getHaloTintList() {
        return super.getHaloTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ int getLabelBehavior() {
        return super.getLabelBehavior();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public float getMinSeparation() {
        return this.V0;
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ float getStepSize() {
        return super.getStepSize();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ float getThumbElevation() {
        return super.getThumbElevation();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @Dimension
    public /* bridge */ /* synthetic */ int getThumbRadius() {
        return super.getThumbRadius();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ ColorStateList getThumbStrokeColor() {
        return super.getThumbStrokeColor();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ float getThumbStrokeWidth() {
        return super.getThumbStrokeWidth();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getThumbTintList() {
        return super.getThumbTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTickActiveTintList() {
        return super.getTickActiveTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTickInactiveTintList() {
        return super.getTickInactiveTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTickTintList() {
        return super.getTickTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTrackActiveTintList() {
        return super.getTrackActiveTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @Dimension
    public /* bridge */ /* synthetic */ int getTrackHeight() {
        return super.getTrackHeight();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTrackInactiveTintList() {
        return super.getTrackInactiveTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @Dimension
    public /* bridge */ /* synthetic */ int getTrackSidePadding() {
        return super.getTrackSidePadding();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public /* bridge */ /* synthetic */ ColorStateList getTrackTintList() {
        return super.getTrackTintList();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @Dimension
    public /* bridge */ /* synthetic */ int getTrackWidth() {
        return super.getTrackWidth();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ float getValueFrom() {
        return super.getValueFrom();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ float getValueTo() {
        return super.getValueTo();
    }

    @Override // com.google.android.material.slider.BaseSlider
    @NonNull
    public List<Float> getValues() {
        return super.getValues();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void h(@NonNull b bVar) {
        super.h(bVar);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void i(@NonNull c cVar) {
        super.i(cVar);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View, android.view.KeyEvent.Callback
    public /* bridge */ /* synthetic */ boolean onKeyDown(int i2, @NonNull KeyEvent keyEvent) {
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View, android.view.KeyEvent.Callback
    public /* bridge */ /* synthetic */ boolean onKeyUp(int i2, @NonNull KeyEvent keyEvent) {
        return super.onKeyUp(i2, keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public void onRestoreInstanceState(@Nullable Parcelable parcelable) {
        RangeSliderState rangeSliderState = (RangeSliderState) parcelable;
        super.onRestoreInstanceState(rangeSliderState.getSuperState());
        this.V0 = rangeSliderState.f15770a;
        int i2 = rangeSliderState.f15771b;
        this.W0 = i2;
        setSeparationUnit(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        RangeSliderState rangeSliderState = new RangeSliderState(super.onSaveInstanceState());
        rangeSliderState.f15770a = this.V0;
        rangeSliderState.f15771b = this.W0;
        return rangeSliderState;
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void p() {
        super.p();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void q() {
        super.q();
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawable(@DrawableRes int i2) {
        super.setCustomThumbDrawable(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawablesForValues(@NonNull @DrawableRes int... iArr) {
        super.setCustomThumbDrawablesForValues(iArr);
    }

    @Override // com.google.android.material.slider.BaseSlider, android.view.View
    public /* bridge */ /* synthetic */ void setEnabled(boolean z3) {
        super.setEnabled(z3);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setFocusedThumbIndex(int i2) {
        super.setFocusedThumbIndex(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloRadius(@IntRange(from = 0) @Dimension int i2) {
        super.setHaloRadius(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloRadiusResource(@DimenRes int i2) {
        super.setHaloRadiusResource(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setHaloTintList(@NonNull ColorStateList colorStateList) {
        super.setHaloTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setLabelBehavior(int i2) {
        super.setLabelBehavior(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setLabelFormatter(@Nullable d dVar) {
        super.setLabelFormatter(dVar);
    }

    public void setMinSeparation(@Dimension float f4) {
        this.V0 = f4;
        this.W0 = 0;
        setSeparationUnit(0);
    }

    public void setMinSeparationValue(float f4) {
        this.V0 = f4;
        this.W0 = 1;
        setSeparationUnit(1);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setStepSize(float f4) {
        super.setStepSize(f4);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbElevation(float f4) {
        super.setThumbElevation(f4);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbElevationResource(@DimenRes int i2) {
        super.setThumbElevationResource(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbRadius(@IntRange(from = 0) @Dimension int i2) {
        super.setThumbRadius(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbRadiusResource(@DimenRes int i2) {
        super.setThumbRadiusResource(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeColor(@Nullable ColorStateList colorStateList) {
        super.setThumbStrokeColor(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeColorResource(@ColorRes int i2) {
        super.setThumbStrokeColorResource(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeWidth(float f4) {
        super.setThumbStrokeWidth(f4);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbStrokeWidthResource(@DimenRes int i2) {
        super.setThumbStrokeWidthResource(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setThumbTintList(@NonNull ColorStateList colorStateList) {
        super.setThumbTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTickActiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickInactiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTickInactiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickTintList(@NonNull ColorStateList colorStateList) {
        super.setTickTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTickVisible(boolean z3) {
        super.setTickVisible(z3);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackActiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackActiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackHeight(@IntRange(from = 0) @Dimension int i2) {
        super.setTrackHeight(i2);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackInactiveTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackInactiveTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setTrackTintList(@NonNull ColorStateList colorStateList) {
        super.setTrackTintList(colorStateList);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setValueFrom(float f4) {
        super.setValueFrom(f4);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public /* bridge */ /* synthetic */ void setValueTo(float f4) {
        super.setValueTo(f4);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setValues(@NonNull Float... fArr) {
        super.setValues(fArr);
    }

    public RangeSlider(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.sliderStyle);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawable(@NonNull Drawable drawable) {
        super.setCustomThumbDrawable(drawable);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setCustomThumbDrawablesForValues(@NonNull Drawable... drawableArr) {
        super.setCustomThumbDrawablesForValues(drawableArr);
    }

    @Override // com.google.android.material.slider.BaseSlider
    public void setValues(@NonNull List<Float> list) {
        super.setValues(list);
    }

    public RangeSlider(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray j4 = o.j(context, attributeSet, R.styleable.RangeSlider, i2, BaseSlider.Q0, new int[0]);
        int i4 = R.styleable.RangeSlider_values;
        if (j4.hasValue(i4)) {
            setValues(B0(j4.getResources().obtainTypedArray(j4.getResourceId(i4, 0))));
        }
        this.V0 = j4.getDimension(R.styleable.RangeSlider_minSeparation, 0.0f);
        j4.recycle();
    }
}
