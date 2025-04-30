package com.papa91.arc.widget.htmltext;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.text.Html;
import android.view.View;
import android.widget.TextView;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4.dex */
public class HtmlHttpImageGetter implements Html.ImageGetter {
    private URI baseUri;
    private boolean compressImage;
    private TextView container;
    private boolean matchParentWidth;
    private int placeHolder;
    private int qualityImage;

    /* loaded from: classes4.dex */
    private static class ImageGetterAsyncTask extends AsyncTask<String, Void, Drawable> {
        private boolean compressImage;
        private final WeakReference<View> containerReference;
        private final WeakReference<UrlDrawable> drawableReference;
        private final WeakReference<HtmlHttpImageGetter> imageGetterReference;
        private boolean matchParentWidth;
        private int qualityImage;
        private final WeakReference<Resources> resources;
        private float scale;
        private String source;

        public ImageGetterAsyncTask(UrlDrawable urlDrawable, HtmlHttpImageGetter htmlHttpImageGetter, View view, boolean z3, boolean z4, int i2) {
            this.compressImage = false;
            this.qualityImage = 50;
            this.drawableReference = new WeakReference<>(urlDrawable);
            this.imageGetterReference = new WeakReference<>(htmlHttpImageGetter);
            this.containerReference = new WeakReference<>(view);
            this.resources = new WeakReference<>(view.getResources());
            this.matchParentWidth = z3;
            this.compressImage = z4;
            this.qualityImage = i2;
        }

        private InputStream fetch(String str) throws IOException {
            URL url;
            HtmlHttpImageGetter htmlHttpImageGetter = this.imageGetterReference.get();
            if (htmlHttpImageGetter == null) {
                return null;
            }
            if (htmlHttpImageGetter.baseUri != null) {
                url = htmlHttpImageGetter.baseUri.resolve(str).toURL();
            } else {
                url = URI.create(str).toURL();
            }
            return (InputStream) url.getContent();
        }

        private float getScale(Bitmap bitmap) {
            View view = this.containerReference.get();
            if (view == null) {
                return 1.0f;
            }
            return view.getWidth() / bitmap.getWidth();
        }

        public Drawable fetchCompressedDrawable(Resources resources, String str) {
            try {
                InputStream fetch = fetch(str);
                Bitmap bitmap = new BitmapDrawable(resources, fetch).getBitmap();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.JPEG, this.qualityImage, byteArrayOutputStream);
                bitmap.recycle();
                fetch.close();
                Bitmap decodeStream = BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                byteArrayOutputStream.close();
                this.scale = getScale(decodeStream);
                BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, decodeStream);
                bitmapDrawable.setBounds(0, 0, (int) (bitmapDrawable.getIntrinsicWidth() * this.scale), (int) (bitmapDrawable.getIntrinsicHeight() * this.scale));
                return bitmapDrawable;
            } catch (Exception unused) {
                return null;
            }
        }

        public Drawable fetchDrawable(Resources resources, String str) {
            try {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(resources, fetch(str));
                this.scale = getScale(bitmapDrawable);
                bitmapDrawable.setBounds(0, 0, (int) (bitmapDrawable.getIntrinsicWidth() * this.scale), (int) (bitmapDrawable.getIntrinsicHeight() * this.scale));
                return bitmapDrawable;
            } catch (Exception unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Drawable doInBackground(String... strArr) {
            this.source = strArr[0];
            if (this.resources.get() != null) {
                if (this.compressImage) {
                    return fetchCompressedDrawable(this.resources.get(), this.source);
                }
                return fetchDrawable(this.resources.get(), this.source);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Drawable drawable) {
            if (drawable == null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Drawable result is null! (source: ");
                sb.append(this.source);
                sb.append(")");
                return;
            }
            UrlDrawable urlDrawable = this.drawableReference.get();
            if (urlDrawable == null) {
                return;
            }
            urlDrawable.setBounds(0, 0, (int) (drawable.getIntrinsicWidth() * this.scale), (int) (drawable.getIntrinsicHeight() * this.scale));
            urlDrawable.drawable = drawable;
            HtmlHttpImageGetter htmlHttpImageGetter = this.imageGetterReference.get();
            if (htmlHttpImageGetter == null) {
                return;
            }
            htmlHttpImageGetter.container.invalidate();
            htmlHttpImageGetter.container.setText(htmlHttpImageGetter.container.getText());
        }

        private float getScale(Drawable drawable) {
            View view = this.containerReference.get();
            if (!this.matchParentWidth || view == null) {
                return 1.0f;
            }
            return view.getWidth() / drawable.getIntrinsicWidth();
        }
    }

    /* loaded from: classes4.dex */
    public class UrlDrawable extends BitmapDrawable {
        protected Drawable drawable;

        public UrlDrawable() {
        }

        @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            Drawable drawable = this.drawable;
            if (drawable != null) {
                drawable.draw(canvas);
            }
        }
    }

    public HtmlHttpImageGetter(TextView textView) {
        this.compressImage = false;
        this.qualityImage = 50;
        this.container = textView;
        this.matchParentWidth = false;
    }

    public void enableCompressImage(boolean z3) {
        enableCompressImage(z3, 50);
    }

    @Override // android.text.Html.ImageGetter
    public Drawable getDrawable(String str) {
        UrlDrawable urlDrawable = new UrlDrawable();
        if (this.placeHolder != 0) {
            Drawable drawable = this.container.getContext().getResources().getDrawable(this.placeHolder);
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            urlDrawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            urlDrawable.drawable = drawable;
        }
        new ImageGetterAsyncTask(urlDrawable, this, this.container, this.matchParentWidth, this.compressImage, this.qualityImage).execute(str);
        return urlDrawable;
    }

    public void enableCompressImage(boolean z3, int i2) {
        this.compressImage = z3;
        this.qualityImage = i2;
    }

    public HtmlHttpImageGetter(TextView textView, String str) {
        this.compressImage = false;
        this.qualityImage = 50;
        this.container = textView;
        if (str != null) {
            this.baseUri = URI.create(str);
        }
    }

    public HtmlHttpImageGetter(TextView textView, String str, boolean z3) {
        this(textView, str, 0, z3);
    }

    public HtmlHttpImageGetter(TextView textView, String str, int i2, boolean z3) {
        this.compressImage = false;
        this.qualityImage = 50;
        this.container = textView;
        this.placeHolder = i2;
        this.matchParentWidth = z3;
        if (str != null) {
            this.baseUri = URI.create(str);
        }
    }
}
