package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.facebook.common.internal.g;
import com.facebook.drawee.view.a;
import javax.annotation.Nullable;
import k0.b;
/* loaded from: classes.dex */
public class DraweeView<DH extends k0.b> extends ImageView {
    private static boolean sGlobalLegacyVisibilityHandlingEnabled;
    private float mAspectRatio;
    private b<DH> mDraweeHolder;
    private boolean mInitialised;
    private boolean mLegacyVisibilityHandlingEnabled;
    private final a.C0070a mMeasureSpec;

    public DraweeView(Context context) {
        super(context);
        this.mMeasureSpec = new a.C0070a();
        this.mAspectRatio = 0.0f;
        this.mInitialised = false;
        this.mLegacyVisibilityHandlingEnabled = false;
        init(context);
    }

    private void init(Context context) {
        boolean e4;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("DraweeView#init");
            }
            if (this.mInitialised) {
                if (e4) {
                    return;
                }
                return;
            }
            boolean z3 = true;
            this.mInitialised = true;
            this.mDraweeHolder = b.d(null, context);
            if (Build.VERSION.SDK_INT >= 21) {
                ColorStateList imageTintList = getImageTintList();
                if (imageTintList == null) {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                        return;
                    }
                    return;
                }
                setColorFilter(imageTintList.getDefaultColor());
            }
            if (!sGlobalLegacyVisibilityHandlingEnabled || context.getApplicationInfo().targetSdkVersion < 24) {
                z3 = false;
            }
            this.mLegacyVisibilityHandlingEnabled = z3;
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    private void maybeOverrideVisibilityHandling() {
        Drawable drawable;
        if (!this.mLegacyVisibilityHandlingEnabled || (drawable = getDrawable()) == null) {
            return;
        }
        drawable.setVisible(getVisibility() == 0, false);
    }

    public static void setGlobalLegacyVisibilityHandlingEnabled(boolean z3) {
        sGlobalLegacyVisibilityHandlingEnabled = z3;
    }

    protected void doAttach() {
        this.mDraweeHolder.m();
    }

    protected void doDetach() {
        this.mDraweeHolder.n();
    }

    public float getAspectRatio() {
        return this.mAspectRatio;
    }

    @Nullable
    public k0.a getController() {
        return this.mDraweeHolder.f();
    }

    public DH getHierarchy() {
        return this.mDraweeHolder.h();
    }

    @Nullable
    public Drawable getTopLevelDrawable() {
        return this.mDraweeHolder.i();
    }

    public boolean hasController() {
        return this.mDraweeHolder.f() != null;
    }

    public boolean hasHierarchy() {
        return this.mDraweeHolder.j();
    }

    protected void onAttach() {
        doAttach();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        maybeOverrideVisibilityHandling();
        onAttach();
    }

    protected void onDetach() {
        doDetach();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        maybeOverrideVisibilityHandling();
        onDetach();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        maybeOverrideVisibilityHandling();
        onAttach();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i2, int i4) {
        a.C0070a c0070a = this.mMeasureSpec;
        c0070a.f12210a = i2;
        c0070a.f12211b = i4;
        a.b(c0070a, this.mAspectRatio, getLayoutParams(), getPaddingLeft() + getPaddingRight(), getPaddingTop() + getPaddingBottom());
        a.C0070a c0070a2 = this.mMeasureSpec;
        super.onMeasure(c0070a2.f12210a, c0070a2.f12211b);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        maybeOverrideVisibilityHandling();
        onDetach();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mDraweeHolder.o(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        maybeOverrideVisibilityHandling();
    }

    public void setAspectRatio(float f4) {
        if (f4 == this.mAspectRatio) {
            return;
        }
        this.mAspectRatio = f4;
        requestLayout();
    }

    public void setController(@Nullable k0.a aVar) {
        this.mDraweeHolder.q(aVar);
        super.setImageDrawable(this.mDraweeHolder.i());
    }

    public void setHierarchy(DH dh) {
        this.mDraweeHolder.r(dh);
        super.setImageDrawable(this.mDraweeHolder.i());
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageBitmap(Bitmap bitmap) {
        init(getContext());
        this.mDraweeHolder.q(null);
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageDrawable(Drawable drawable) {
        init(getContext());
        this.mDraweeHolder.q(null);
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageResource(int i2) {
        init(getContext());
        this.mDraweeHolder.q(null);
        super.setImageResource(i2);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageURI(Uri uri) {
        init(getContext());
        this.mDraweeHolder.q(null);
        super.setImageURI(uri);
    }

    public void setLegacyVisibilityHandlingEnabled(boolean z3) {
        this.mLegacyVisibilityHandlingEnabled = z3;
    }

    @Override // android.view.View
    public String toString() {
        g.b f4 = g.f(this);
        b<DH> bVar = this.mDraweeHolder;
        return f4.f("holder", bVar != null ? bVar.toString() : "<no holder set>").toString();
    }

    public DraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMeasureSpec = new a.C0070a();
        this.mAspectRatio = 0.0f;
        this.mInitialised = false;
        this.mLegacyVisibilityHandlingEnabled = false;
        init(context);
    }

    public DraweeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mMeasureSpec = new a.C0070a();
        this.mAspectRatio = 0.0f;
        this.mInitialised = false;
        this.mLegacyVisibilityHandlingEnabled = false;
        init(context);
    }

    @TargetApi(21)
    public DraweeView(Context context, AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.mMeasureSpec = new a.C0070a();
        this.mAspectRatio = 0.0f;
        this.mInitialised = false;
        this.mLegacyVisibilityHandlingEnabled = false;
        init(context);
    }
}
