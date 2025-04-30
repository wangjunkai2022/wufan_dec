package com.papa91.arc.view;

import android.content.Context;
import android.net.Uri;
import android.widget.ImageView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.youth.banner.loader.ImageLoader;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class GlideImageLoader extends ImageLoader {
    public ImageView createImageView(Context context) {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(context);
        simpleDraweeView.getHierarchy().H(R.drawable.shape_placeholder);
        simpleDraweeView.getHierarchy().B(R.drawable.wifi);
        return simpleDraweeView;
    }

    @Override // com.youth.banner.loader.ImageLoaderInterface
    public void displayImage(Context context, Object obj, ImageView imageView) {
        imageView.setImageURI(Uri.parse((String) obj));
    }

    @Override // com.youth.banner.loader.ImageLoader, com.youth.banner.loader.ImageLoaderInterface
    public ImageView createImageView(Context context, Object obj) {
        return createImageView(context);
    }
}
