package com.androidquery.callback;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.media.ExifInterface;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.androidquery.auth.AccountHandle;
import com.androidquery.util.AQUtility;
import com.androidquery.util.BitmapCache;
import com.androidquery.util.Common;
import com.androidquery.util.Constants;
import com.androidquery.util.RatioDrawable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import org.apache.http.HttpHost;
/* loaded from: classes2.dex */
public class BitmapAjaxCallback extends AbstractAjaxCallback<Bitmap, BitmapAjaxCallback> {
    private static int BIG_MAX = 20;
    private static int BIG_PIXELS = 160000;
    private static int BIG_TPIXELS = 1000000;
    private static boolean DELAY_WRITE = false;
    private static final int FADE_DUR = 300;
    private static int SMALL_MAX = 20;
    private static int SMALL_PIXELS = 2500;
    private static Map<String, Bitmap> bigCache;
    private static Map<String, Bitmap> invalidCache;
    private static Map<String, Bitmap> smallCache;
    private int animation;
    private Bitmap bm;
    private int fallback;
    private File imageFile;
    private boolean invalid;
    private Bitmap preset;
    private float ratio;
    private boolean rotate;
    private int round;
    private int targetWidth;

    /* renamed from: v  reason: collision with root package name */
    private WeakReference<ImageView> f9965v;
    private static HashMap<String, WeakHashMap<ImageView, BitmapAjaxCallback>> queueMap = new HashMap<>();
    private static Bitmap empty = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
    private static Bitmap dummy = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
    private boolean targetDim = true;
    private float anchor = Float.MAX_VALUE;

    public BitmapAjaxCallback() {
        type(Bitmap.class).memCache(true).fileCache(true).url("");
    }

    private void addQueue(String str, ImageView imageView) {
        WeakHashMap<ImageView, BitmapAjaxCallback> weakHashMap = queueMap.get(str);
        if (weakHashMap == null) {
            if (queueMap.containsKey(str)) {
                WeakHashMap<ImageView, BitmapAjaxCallback> weakHashMap2 = new WeakHashMap<>();
                weakHashMap2.put(imageView, this);
                queueMap.put(str, weakHashMap2);
                return;
            }
            queueMap.put(str, null);
            return;
        }
        weakHashMap.put(imageView, this);
    }

    public static void async(Activity activity, Context context, ImageView imageView, String str, Object obj, AccountHandle accountHandle, ImageOptions imageOptions, HttpHost httpHost, String str2) {
        async(activity, context, imageView, str, imageOptions.memCache, imageOptions.fileCache, imageOptions.targetWidth, imageOptions.fallback, imageOptions.preset, imageOptions.animation, imageOptions.ratio, imageOptions.anchor, obj, accountHandle, imageOptions.policy, imageOptions.round, httpHost, str2);
    }

    private Bitmap bmGet(String str, byte[] bArr) {
        return getResizedImage(str, bArr, this.targetWidth, this.targetDim, this.round, this.rotate);
    }

    private void checkCb(BitmapAjaxCallback bitmapAjaxCallback, String str, ImageView imageView, Bitmap bitmap, AjaxStatus ajaxStatus) {
        if (imageView == null || bitmapAjaxCallback == null) {
            return;
        }
        if (str.equals(imageView.getTag(Constants.TAG_URL))) {
            bitmapAjaxCallback.callback(str, imageView, bitmap, ajaxStatus);
        }
        bitmapAjaxCallback.showProgress(false);
    }

    public static void clearCache() {
        bigCache = null;
        smallCache = null;
        invalidCache = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void clearTasks() {
        queueMap.clear();
    }

    private static Bitmap decode(String str, byte[] bArr, BitmapFactory.Options options, boolean z3) {
        Bitmap decodeByteArray;
        if (str != null) {
            decodeByteArray = decodeFile(str, options, z3);
        } else {
            decodeByteArray = bArr != null ? BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options) : null;
        }
        if (decodeByteArray == null && options != null && !options.inJustDecodeBounds) {
            AQUtility.debug("decode image failed", str);
        }
        return decodeByteArray;
    }

    private static Bitmap decodeFile(String str, BitmapFactory.Options options, boolean z3) {
        Bitmap bitmap;
        FileInputStream fileInputStream;
        if (options == null) {
            options = new BitmapFactory.Options();
        }
        options.inInputShareable = true;
        options.inPurgeable = true;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
            } catch (IOException e4) {
                e = e4;
                bitmap = null;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileInputStream.getFD(), null, options);
            if (decodeFileDescriptor != null && z3) {
                decodeFileDescriptor = rotate(str, decodeFileDescriptor);
            }
            AQUtility.close(fileInputStream);
            return decodeFileDescriptor;
        } catch (IOException e5) {
            e = e5;
            bitmap = null;
            fileInputStream2 = fileInputStream;
            AQUtility.report(e);
            AQUtility.close(fileInputStream2);
            return bitmap;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            AQUtility.close(fileInputStream2);
            throw th;
        }
    }

    private static boolean fadeIn(int i2, int i4) {
        if (i2 != -3) {
            if (i2 != -2) {
                return i2 == -1;
            }
        } else if (i4 == 3) {
            return true;
        }
        return i4 == 1;
    }

    private static Bitmap filter(View view, Bitmap bitmap, int i2) {
        if (bitmap != null && bitmap.getWidth() == 1 && bitmap.getHeight() == 1 && bitmap != empty) {
            bitmap = null;
        }
        if (bitmap != null) {
            view.setVisibility(0);
        } else if (i2 == -2) {
            view.setVisibility(8);
        } else if (i2 == -1) {
            view.setVisibility(4);
        }
        return bitmap;
    }

    private static Map<String, Bitmap> getBCache() {
        if (bigCache == null) {
            bigCache = Collections.synchronizedMap(new BitmapCache(BIG_MAX, BIG_PIXELS, BIG_TPIXELS));
        }
        return bigCache;
    }

    public static Bitmap getEmptyBitmap() {
        return empty;
    }

    private Bitmap getFallback() {
        ImageView imageView = this.f9965v.get();
        if (imageView != null) {
            String num = Integer.toString(this.fallback);
            Bitmap memGet = memGet(num);
            if (memGet == null) {
                Bitmap decodeResource = BitmapFactory.decodeResource(imageView.getResources(), this.fallback);
                if (decodeResource != null) {
                    memPut(num, decodeResource);
                    return decodeResource;
                }
                return decodeResource;
            }
            return memGet;
        }
        return null;
    }

    private static Map<String, Bitmap> getICache() {
        if (invalidCache == null) {
            invalidCache = Collections.synchronizedMap(new BitmapCache(100, BIG_PIXELS, 250000));
        }
        return invalidCache;
    }

    private static String getKey(String str, int i2, int i4) {
        if (i2 > 0) {
            str = String.valueOf(str) + "#" + i2;
        }
        if (i4 > 0) {
            return String.valueOf(str) + "#" + i4;
        }
        return str;
    }

    public static Bitmap getMemoryCached(Context context, int i2) {
        String num = Integer.toString(i2);
        Bitmap memGet = memGet(num, 0, 0);
        if (memGet == null && (memGet = BitmapFactory.decodeResource(context.getResources(), i2)) != null) {
            memPut(num, 0, 0, memGet, false);
        }
        return memGet;
    }

    public static Bitmap getResizedImage(String str, byte[] bArr, int i2, boolean z3, int i4) {
        return getResizedImage(str, bArr, i2, z3, i4, false);
    }

    private static Matrix getRotateMatrix(int i2) {
        Matrix matrix = new Matrix();
        switch (i2) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                break;
            case 3:
                matrix.setRotate(180.0f);
                break;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                break;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                break;
        }
        return matrix;
    }

    private static Bitmap getRoundedCornerBitmap(Bitmap bitmap, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        float f4 = i2;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f4, f4, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap;
    }

    private static Map<String, Bitmap> getSCache() {
        if (smallCache == null) {
            smallCache = Collections.synchronizedMap(new BitmapCache(SMALL_MAX, SMALL_PIXELS, 250000));
        }
        return smallCache;
    }

    public static boolean isMemoryCached(String str) {
        return getBCache().containsKey(str) || getSCache().containsKey(str) || getICache().containsKey(str);
    }

    private static Drawable makeDrawable(ImageView imageView, Bitmap bitmap, float f4, float f5) {
        if (f4 > 0.0f) {
            return new RatioDrawable(imageView.getResources(), bitmap, imageView, f4, f5);
        }
        return new BitmapDrawable(imageView.getResources(), bitmap);
    }

    private void presetBitmap(String str, ImageView imageView) {
        if (str.equals(imageView.getTag(Constants.TAG_URL)) && this.preset == null) {
            return;
        }
        imageView.setTag(Constants.TAG_URL, str);
        if (this.preset != null && !cacheAvailable(imageView.getContext())) {
            setBitmap(str, imageView, this.preset, true);
        } else {
            setBitmap(str, imageView, null, true);
        }
    }

    private static int sampleSize(int i2, int i4) {
        int i5 = 1;
        for (int i6 = 0; i6 < 10 && i2 >= i4 * 2; i6++) {
            i2 /= 2;
            i5 *= 2;
        }
        return i5;
    }

    private void setBitmap(String str, ImageView imageView, Bitmap bitmap, boolean z3) {
        if (bitmap == null) {
            imageView.setImageDrawable(null);
        } else if (z3) {
            imageView.setImageDrawable(makeDrawable(imageView, bitmap, this.ratio, this.anchor));
        } else {
            AjaxStatus ajaxStatus = this.status;
            if (ajaxStatus != null) {
                setBmAnimate(imageView, bitmap, this.preset, this.fallback, this.animation, this.ratio, this.anchor, ajaxStatus.getSource());
            }
        }
    }

    private static void setBmAnimate(ImageView imageView, Bitmap bitmap, Bitmap bitmap2, int i2, int i4, float f4, float f5, int i5) {
        Animation loadAnimation;
        Drawable drawable;
        Bitmap filter = filter(imageView, bitmap, i2);
        if (filter == null) {
            imageView.setImageBitmap(null);
            return;
        }
        Drawable makeDrawable = makeDrawable(imageView, filter, f4, f5);
        TransitionDrawable transitionDrawable = makeDrawable;
        if (!fadeIn(i4, i5)) {
            if (i4 > 0) {
                loadAnimation = AnimationUtils.loadAnimation(imageView.getContext(), i4);
                drawable = makeDrawable;
            }
            loadAnimation = null;
            drawable = transitionDrawable;
        } else if (bitmap2 == null) {
            loadAnimation = new AlphaAnimation(0.0f, 1.0f);
            loadAnimation.setInterpolator(new DecelerateInterpolator());
            loadAnimation.setDuration(300L);
            drawable = makeDrawable;
        } else {
            TransitionDrawable transitionDrawable2 = new TransitionDrawable(new Drawable[]{makeDrawable(imageView, bitmap2, f4, f5), makeDrawable});
            transitionDrawable2.setCrossFadeEnabled(true);
            transitionDrawable2.startTransition(300);
            transitionDrawable = transitionDrawable2;
            loadAnimation = null;
            drawable = transitionDrawable;
        }
        imageView.setImageDrawable(drawable);
        if (loadAnimation != null) {
            loadAnimation.setStartTime(AnimationUtils.currentAnimationTimeMillis());
            imageView.startAnimation(loadAnimation);
            return;
        }
        imageView.setAnimation(null);
    }

    public static void setCacheLimit(int i2) {
        BIG_MAX = i2;
        clearCache();
    }

    public static void setDelayWrite(boolean z3) {
        DELAY_WRITE = z3;
    }

    public static void setIconCacheLimit(int i2) {
        SMALL_MAX = i2;
        clearCache();
    }

    public static void setMaxPixelLimit(int i2) {
        BIG_TPIXELS = i2;
        clearCache();
    }

    public static void setPixelLimit(int i2) {
        BIG_PIXELS = i2;
        clearCache();
    }

    public static void setSmallPixel(int i2) {
        SMALL_PIXELS = i2;
        clearCache();
    }

    @Override // com.androidquery.callback.AbstractAjaxCallback
    protected File accessFile(File file, String str) {
        File file2 = this.imageFile;
        if (file2 != null && file2.exists()) {
            return this.imageFile;
        }
        return super.accessFile(file, str);
    }

    public BitmapAjaxCallback anchor(float f4) {
        this.anchor = f4;
        return this;
    }

    public BitmapAjaxCallback animation(int i2) {
        this.animation = i2;
        return this;
    }

    public BitmapAjaxCallback bitmap(Bitmap bitmap) {
        this.bm = bitmap;
        return this;
    }

    public BitmapAjaxCallback fallback(int i2) {
        this.fallback = i2;
        return this;
    }

    public BitmapAjaxCallback file(File file) {
        this.imageFile = file;
        return this;
    }

    public BitmapAjaxCallback imageView(ImageView imageView) {
        this.f9965v = new WeakReference<>(imageView);
        return this;
    }

    @Override // com.androidquery.callback.AbstractAjaxCallback
    protected boolean isStreamingContent() {
        return !DELAY_WRITE;
    }

    public BitmapAjaxCallback preset(Bitmap bitmap) {
        this.preset = bitmap;
        return this;
    }

    public BitmapAjaxCallback ratio(float f4) {
        this.ratio = f4;
        return this;
    }

    public BitmapAjaxCallback rotate(boolean z3) {
        this.rotate = z3;
        return this;
    }

    public BitmapAjaxCallback round(int i2) {
        this.round = i2;
        return this;
    }

    public BitmapAjaxCallback targetWidth(int i2) {
        this.targetWidth = i2;
        return this;
    }

    public static void async(Activity activity, Context context, ImageView imageView, String str, boolean z3, boolean z4, int i2, int i4, Bitmap bitmap, int i5, float f4, float f5, Object obj, AccountHandle accountHandle, int i6, int i7, HttpHost httpHost, String str2) {
        Bitmap memGet = z3 ? memGet(str, i2, i7) : null;
        if (memGet != null) {
            imageView.setTag(Constants.TAG_URL, str);
            Common.showProgress(obj, str, false);
            setBmAnimate(imageView, memGet, bitmap, i4, i5, f4, f5, 4);
            return;
        }
        BitmapAjaxCallback bitmapAjaxCallback = new BitmapAjaxCallback();
        bitmapAjaxCallback.url(str).imageView(imageView).memCache(z3).fileCache(z4).targetWidth(i2).fallback(i4).preset(bitmap).animation(i5).ratio(f4).anchor(f5).progress(obj).auth(accountHandle).policy(i6).round(i7).networkUrl(str2);
        if (httpHost != null) {
            bitmapAjaxCallback.proxy(httpHost.getHostName(), httpHost.getPort());
        }
        if (activity != null) {
            bitmapAjaxCallback.async(activity);
        } else {
            bitmapAjaxCallback.async(context);
        }
    }

    public static Bitmap getResizedImage(String str, byte[] bArr, int i2, boolean z3, int i4, boolean z4) {
        BitmapFactory.Options options;
        Bitmap bitmap = null;
        if (str == null && bArr == null) {
            return null;
        }
        if (i2 > 0) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = true;
            decode(str, bArr, options2, z4);
            int i5 = options2.outWidth;
            if (!z3) {
                i5 = Math.max(i5, options2.outHeight);
            }
            int sampleSize = sampleSize(i5, i2);
            options = new BitmapFactory.Options();
            options.inSampleSize = sampleSize;
        } else {
            options = null;
        }
        try {
            bitmap = decode(str, bArr, options, z4);
        } catch (OutOfMemoryError e4) {
            clearCache();
            AQUtility.report(e4);
        }
        return i4 > 0 ? getRoundedCornerBitmap(bitmap, i4) : bitmap;
    }

    private static void memPut(String str, int i2, int i4, Bitmap bitmap, boolean z3) {
        Map<String, Bitmap> bCache;
        if (bitmap == null) {
            return;
        }
        int width = bitmap.getWidth() * bitmap.getHeight();
        if (z3) {
            bCache = getICache();
        } else if (width <= SMALL_PIXELS) {
            bCache = getSCache();
        } else {
            bCache = getBCache();
        }
        if (i2 <= 0 && i4 <= 0) {
            bCache.put(str, bitmap);
            return;
        }
        bCache.put(getKey(str, i2, i4), bitmap);
        if (bCache.containsKey(str)) {
            return;
        }
        bCache.put(str, null);
    }

    private static Bitmap rotate(String str, Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int i2 = 1;
        try {
            i2 = new ExifInterface(str).getAttributeInt("Orientation", 1);
        } catch (Exception e4) {
            AQUtility.debug((Throwable) e4);
        }
        if (i2 > 0) {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), getRotateMatrix(i2), true);
            AQUtility.debug("before", String.valueOf(bitmap.getWidth()) + ":" + bitmap.getHeight());
            AQUtility.debug("after", String.valueOf(createBitmap.getWidth()) + ":" + createBitmap.getHeight());
            if (bitmap != createBitmap) {
                bitmap.recycle();
            }
            return createBitmap;
        }
        return bitmap;
    }

    @Override // com.androidquery.callback.AbstractAjaxCallback
    public final void callback(String str, Bitmap bitmap, AjaxStatus ajaxStatus) {
        ImageView imageView = this.f9965v.get();
        WeakHashMap<ImageView, BitmapAjaxCallback> remove = queueMap.remove(str);
        if (remove == null || !remove.containsKey(imageView)) {
            checkCb(this, str, imageView, bitmap, ajaxStatus);
        }
        if (remove != null) {
            for (ImageView imageView2 : remove.keySet()) {
                BitmapAjaxCallback bitmapAjaxCallback = remove.get(imageView2);
                bitmapAjaxCallback.status = ajaxStatus;
                checkCb(bitmapAjaxCallback, str, imageView2, bitmap, ajaxStatus);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.androidquery.callback.AbstractAjaxCallback
    public Bitmap fileGet(String str, File file, AjaxStatus ajaxStatus) {
        return bmGet(file.getAbsolutePath(), null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.androidquery.callback.AbstractAjaxCallback
    public Bitmap memGet(String str) {
        Bitmap bitmap = this.bm;
        if (bitmap != null) {
            return bitmap;
        }
        if (this.memCache) {
            return memGet(str, this.targetWidth, this.round);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.androidquery.callback.AbstractAjaxCallback
    public void skip(String str, Bitmap bitmap, AjaxStatus ajaxStatus) {
        queueMap.remove(str);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.androidquery.callback.AbstractAjaxCallback
    public Bitmap transform(String str, byte[] bArr, AjaxStatus ajaxStatus) {
        File file = ajaxStatus.getFile();
        Bitmap bmGet = bmGet(file != null ? file.getAbsolutePath() : null, bArr);
        if (bmGet == null) {
            int i2 = this.fallback;
            if (i2 > 0) {
                bmGet = getFallback();
            } else if (i2 == -2 || i2 == -1) {
                bmGet = dummy;
            } else if (i2 == -3) {
                bmGet = this.preset;
            }
            if (ajaxStatus.getCode() != 200) {
                this.invalid = true;
            }
            if (ajaxStatus.getSource() == 1 && file != null) {
                AQUtility.debug("invalid bm from net");
                file.delete();
            }
        }
        return bmGet;
    }

    public static Bitmap getMemoryCached(String str, int i2) {
        return memGet(str, i2, 0);
    }

    private static Bitmap memGet(String str, int i2, int i4) {
        String key = getKey(str, i2, i4);
        Bitmap bitmap = getBCache().get(key);
        if (bitmap == null) {
            bitmap = getSCache().get(key);
        }
        if (bitmap == null) {
            Bitmap bitmap2 = getICache().get(key);
            if (bitmap2 == null || AbstractAjaxCallback.getLastStatus() != 200) {
                return bitmap2;
            }
            invalidCache = null;
            return null;
        }
        return bitmap;
    }

    @Override // com.androidquery.callback.AbstractAjaxCallback
    public void async(Context context) {
        String url = getUrl();
        ImageView imageView = this.f9965v.get();
        if (url == null) {
            showProgress(false);
            setBitmap(url, imageView, null, false);
            return;
        }
        Bitmap memGet = memGet(url);
        if (memGet != null) {
            imageView.setTag(Constants.TAG_URL, url);
            AjaxStatus done = new AjaxStatus().source(4).done();
            this.status = done;
            callback(url, memGet, done);
            return;
        }
        presetBitmap(url, imageView);
        if (!queueMap.containsKey(url)) {
            addQueue(url, imageView);
            super.async(imageView.getContext());
            return;
        }
        showProgress(true);
        addQueue(url, imageView);
    }

    protected void callback(String str, ImageView imageView, Bitmap bitmap, AjaxStatus ajaxStatus) {
        setBitmap(str, imageView, bitmap, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.androidquery.callback.AbstractAjaxCallback
    public void memPut(String str, Bitmap bitmap) {
        memPut(str, this.targetWidth, this.round, bitmap, this.invalid);
    }
}
