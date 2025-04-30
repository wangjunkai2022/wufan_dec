package com.facebook.drawee.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import androidx.annotation.DrawableRes;
import com.facebook.common.internal.h;
import com.facebook.common.internal.k;
import com.facebook.common.util.f;
import com.facebook.drawee.R;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.imagepipeline.request.ImageRequest;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class SimpleDraweeView extends GenericDraweeView {
    private static k<? extends AbstractDraweeControllerBuilder> sDraweecontrollerbuildersupplier;
    private AbstractDraweeControllerBuilder mControllerBuilder;

    public SimpleDraweeView(Context context, com.facebook.drawee.generic.a aVar) {
        super(context, aVar);
        init(context, null);
    }

    private void init(Context context, @Nullable AttributeSet attributeSet) {
        int resourceId;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("SimpleDraweeView#init");
            }
            if (isInEditMode()) {
                getTopLevelDrawable().setVisible(true, false);
                getTopLevelDrawable().invalidateSelf();
            } else {
                h.j(sDraweecontrollerbuildersupplier, "SimpleDraweeView was not initialized!");
                this.mControllerBuilder = sDraweecontrollerbuildersupplier.get();
            }
            if (attributeSet != null) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SimpleDraweeView);
                int i2 = R.styleable.SimpleDraweeView_actualImageUri;
                if (obtainStyledAttributes.hasValue(i2)) {
                    setImageURI(Uri.parse(obtainStyledAttributes.getString(i2)), (Object) null);
                } else {
                    int i4 = R.styleable.SimpleDraweeView_actualImageResource;
                    if (obtainStyledAttributes.hasValue(i4) && (resourceId = obtainStyledAttributes.getResourceId(i4, -1)) != -1) {
                        if (isInEditMode()) {
                            setImageResource(resourceId);
                        } else {
                            setActualImageResource(resourceId);
                        }
                    }
                }
                obtainStyledAttributes.recycle();
            }
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public static void initialize(k<? extends AbstractDraweeControllerBuilder> kVar) {
        sDraweecontrollerbuildersupplier = kVar;
    }

    public static void shutDown() {
        sDraweecontrollerbuildersupplier = null;
    }

    protected AbstractDraweeControllerBuilder getControllerBuilder() {
        return this.mControllerBuilder;
    }

    public void setActualImageResource(@DrawableRes int i2) {
        setActualImageResource(i2, null);
    }

    public void setImageRequest(ImageRequest imageRequest) {
        setController(this.mControllerBuilder.M(imageRequest).c(getController()).build());
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageResource(int i2) {
        super.setImageResource(i2);
    }

    @Override // com.facebook.drawee.view.DraweeView, android.widget.ImageView
    public void setImageURI(Uri uri) {
        setImageURI(uri, (Object) null);
    }

    public void setActualImageResource(@DrawableRes int i2, @Nullable Object obj) {
        setImageURI(f.e(i2), obj);
    }

    public void setImageURI(@Nullable String str) {
        setImageURI(str, (Object) null);
    }

    public SimpleDraweeView(Context context) {
        super(context);
        init(context, null);
    }

    public void setImageURI(Uri uri, @Nullable Object obj) {
        setController(this.mControllerBuilder.b(obj).a(uri).c(getController()).build());
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public SimpleDraweeView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        init(context, attributeSet);
    }

    @TargetApi(21)
    public SimpleDraweeView(Context context, AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        init(context, attributeSet);
    }

    public void setImageURI(@Nullable String str, @Nullable Object obj) {
        setImageURI(str != null ? Uri.parse(str) : null, obj);
    }
}
