package com.youth.banner.loader;

import android.content.Context;
import android.widget.ImageView;
/* loaded from: classes3.dex */
public abstract class ImageLoader implements ImageLoaderInterface<ImageView> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.youth.banner.loader.ImageLoaderInterface
    public ImageView createImageView(Context context, Object obj) {
        return new ImageView(context);
    }
}
