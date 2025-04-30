package androidx.core.graphics.drawable;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.Preconditions;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.facebook.common.util.f;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import net.lingala.zip4j.util.e;
import q.a;
/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {
    public static final int TYPE_ADAPTIVE_BITMAP = 5;
    public static final int TYPE_BITMAP = 1;
    public static final int TYPE_DATA = 3;
    public static final int TYPE_RESOURCE = 2;
    public static final int TYPE_UNKNOWN = -1;
    public static final int TYPE_URI = 4;
    public static final int TYPE_URI_ADAPTIVE_BITMAP = 6;

    /* renamed from: c  reason: collision with root package name */
    private static final String f4313c = "IconCompat";

    /* renamed from: d  reason: collision with root package name */
    private static final float f4314d = 0.25f;

    /* renamed from: e  reason: collision with root package name */
    private static final float f4315e = 0.6666667f;

    /* renamed from: f  reason: collision with root package name */
    private static final float f4316f = 0.9166667f;

    /* renamed from: g  reason: collision with root package name */
    private static final float f4317g = 0.010416667f;

    /* renamed from: h  reason: collision with root package name */
    private static final float f4318h = 0.020833334f;

    /* renamed from: i  reason: collision with root package name */
    private static final int f4319i = 61;

    /* renamed from: j  reason: collision with root package name */
    private static final int f4320j = 30;
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    static final String f4321k = "type";
    @VisibleForTesting

    /* renamed from: l  reason: collision with root package name */
    static final String f4322l = "obj";
    @VisibleForTesting

    /* renamed from: m  reason: collision with root package name */
    static final String f4323m = "int1";
    @VisibleForTesting

    /* renamed from: n  reason: collision with root package name */
    static final String f4324n = "int2";
    @VisibleForTesting

    /* renamed from: o  reason: collision with root package name */
    static final String f4325o = "tint_list";
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    static final String f4326p = "tint_mode";
    @VisibleForTesting

    /* renamed from: q  reason: collision with root package name */
    static final String f4327q = "string1";

    /* renamed from: r  reason: collision with root package name */
    static final PorterDuff.Mode f4328r = PorterDuff.Mode.SRC_IN;

    /* renamed from: a  reason: collision with root package name */
    Object f4329a;

    /* renamed from: b  reason: collision with root package name */
    PorterDuff.Mode f4330b;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public byte[] mData;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mInt1;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int mInt2;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Parcelable mParcelable;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public String mString1;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public ColorStateList mTintList;
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public String mTintModeStr;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int mType;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface IconType {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public IconCompat() {
        this.mType = -1;
        this.mData = null;
        this.mParcelable = null;
        this.mInt1 = 0;
        this.mInt2 = 0;
        this.mTintList = null;
        this.f4330b = f4328r;
        this.mTintModeStr = null;
    }

    @VisibleForTesting
    static Bitmap a(Bitmap bitmap, boolean z3) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f4 = min;
        float f5 = 0.5f * f4;
        float f6 = f4316f * f5;
        if (z3) {
            float f7 = f4317g * f4;
            paint.setColor(0);
            paint.setShadowLayer(f7, 0.0f, f4 * f4318h, 1023410176);
            canvas.drawCircle(f5, f5, f6, paint);
            paint.setShadowLayer(f7, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f5, f5, f6, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2, (-(bitmap.getHeight() - min)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f5, f5, f6, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    @DrawableRes
    @IdRes
    @RequiresApi(23)
    private static int b(@NonNull Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResId();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return 0;
        }
    }

    @Nullable
    @RequiresApi(23)
    private static String c(@NonNull Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResPackage();
        }
        try {
            return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    @Nullable
    public static IconCompat createFromBundle(@NonNull Bundle bundle) {
        int i2 = bundle.getInt("type");
        IconCompat iconCompat = new IconCompat(i2);
        iconCompat.mInt1 = bundle.getInt(f4323m);
        iconCompat.mInt2 = bundle.getInt(f4324n);
        iconCompat.mString1 = bundle.getString(f4327q);
        if (bundle.containsKey(f4325o)) {
            iconCompat.mTintList = (ColorStateList) bundle.getParcelable(f4325o);
        }
        if (bundle.containsKey(f4326p)) {
            iconCompat.f4330b = PorterDuff.Mode.valueOf(bundle.getString(f4326p));
        }
        switch (i2) {
            case -1:
            case 1:
            case 5:
                iconCompat.f4329a = bundle.getParcelable(f4322l);
                break;
            case 0:
            default:
                StringBuilder sb = new StringBuilder();
                sb.append("Unknown type ");
                sb.append(i2);
                return null;
            case 2:
            case 4:
            case 6:
                iconCompat.f4329a = bundle.getString(f4322l);
                break;
            case 3:
                iconCompat.f4329a = bundle.getByteArray(f4322l);
                break;
        }
        return iconCompat;
    }

    @Nullable
    @RequiresApi(23)
    public static IconCompat createFromIcon(@NonNull Context context, @NonNull Icon icon) {
        Preconditions.checkNotNull(icon);
        int type = getType(icon);
        if (type == 2) {
            String c4 = c(icon);
            try {
                return createWithResource(getResources(context, c4), c4, b(icon));
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else if (type != 4) {
            if (type != 6) {
                IconCompat iconCompat = new IconCompat(-1);
                iconCompat.f4329a = icon;
                return iconCompat;
            }
            return createWithAdaptiveBitmapContentUri(d(icon));
        } else {
            return createWithContentUri(d(icon));
        }
    }

    @Nullable
    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static IconCompat createFromIconOrNullIfZeroResId(@NonNull Icon icon) {
        if (getType(icon) == 2 && b(icon) == 0) {
            return null;
        }
        return createFromIcon(icon);
    }

    public static IconCompat createWithAdaptiveBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            IconCompat iconCompat = new IconCompat(5);
            iconCompat.f4329a = bitmap;
            return iconCompat;
        }
        throw new IllegalArgumentException("Bitmap must not be null.");
    }

    @NonNull
    public static IconCompat createWithAdaptiveBitmapContentUri(@NonNull String str) {
        if (str != null) {
            IconCompat iconCompat = new IconCompat(6);
            iconCompat.f4329a = str;
            return iconCompat;
        }
        throw new IllegalArgumentException("Uri must not be null.");
    }

    public static IconCompat createWithBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            IconCompat iconCompat = new IconCompat(1);
            iconCompat.f4329a = bitmap;
            return iconCompat;
        }
        throw new IllegalArgumentException("Bitmap must not be null.");
    }

    public static IconCompat createWithContentUri(String str) {
        if (str != null) {
            IconCompat iconCompat = new IconCompat(4);
            iconCompat.f4329a = str;
            return iconCompat;
        }
        throw new IllegalArgumentException("Uri must not be null.");
    }

    public static IconCompat createWithData(byte[] bArr, int i2, int i4) {
        if (bArr != null) {
            IconCompat iconCompat = new IconCompat(3);
            iconCompat.f4329a = bArr;
            iconCompat.mInt1 = i2;
            iconCompat.mInt2 = i4;
            return iconCompat;
        }
        throw new IllegalArgumentException("Data must not be null.");
    }

    public static IconCompat createWithResource(Context context, @DrawableRes int i2) {
        if (context != null) {
            return createWithResource(context.getResources(), context.getPackageName(), i2);
        }
        throw new IllegalArgumentException("Context must not be null.");
    }

    @Nullable
    @RequiresApi(23)
    private static Uri d(@NonNull Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getUri();
        }
        try {
            return (Uri) icon.getClass().getMethod("getUri", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    private Drawable e(Context context) {
        switch (this.mType) {
            case 1:
                return new BitmapDrawable(context.getResources(), (Bitmap) this.f4329a);
            case 2:
                String resPackage = getResPackage();
                if (TextUtils.isEmpty(resPackage)) {
                    resPackage = context.getPackageName();
                }
                try {
                    return ResourcesCompat.getDrawable(getResources(context, resPackage), this.mInt1, context.getTheme());
                } catch (RuntimeException unused) {
                    String.format("Unable to load resource 0x%08x from pkg=%s", Integer.valueOf(this.mInt1), this.f4329a);
                    break;
                }
            case 3:
                return new BitmapDrawable(context.getResources(), BitmapFactory.decodeByteArray((byte[]) this.f4329a, this.mInt1, this.mInt2));
            case 4:
                InputStream uriInputStream = getUriInputStream(context);
                if (uriInputStream != null) {
                    return new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(uriInputStream));
                }
                break;
            case 5:
                return new BitmapDrawable(context.getResources(), a((Bitmap) this.f4329a, false));
            case 6:
                InputStream uriInputStream2 = getUriInputStream(context);
                if (uriInputStream2 != null) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        return new AdaptiveIconDrawable(null, new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(uriInputStream2)));
                    }
                    return new BitmapDrawable(context.getResources(), a(BitmapFactory.decodeStream(uriInputStream2), false));
                }
                break;
        }
        return null;
    }

    private static String f(int i2) {
        switch (i2) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    private static Resources getResources(Context context, String str) {
        if (a.f73954a.equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            String.format("Unable to find pkg=%s for icon", str);
            return null;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void addToShortcutIntent(@NonNull Intent intent, @Nullable Drawable drawable, @NonNull Context context) {
        Bitmap bitmap;
        checkResource(context);
        int i2 = this.mType;
        if (i2 == 1) {
            bitmap = (Bitmap) this.f4329a;
            if (drawable != null) {
                bitmap = bitmap.copy(bitmap.getConfig(), true);
            }
        } else if (i2 == 2) {
            try {
                Context createPackageContext = context.createPackageContext(getResPackage(), 0);
                if (drawable == null) {
                    intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(createPackageContext, this.mInt1));
                    return;
                }
                Drawable drawable2 = ContextCompat.getDrawable(createPackageContext, this.mInt1);
                if (drawable2.getIntrinsicWidth() > 0 && drawable2.getIntrinsicHeight() > 0) {
                    bitmap = Bitmap.createBitmap(drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                    drawable2.setBounds(0, 0, bitmap.getWidth(), bitmap.getHeight());
                    drawable2.draw(new Canvas(bitmap));
                }
                int launcherLargeIconSize = ((ActivityManager) createPackageContext.getSystemService(TTDownloadField.TT_ACTIVITY)).getLauncherLargeIconSize();
                bitmap = Bitmap.createBitmap(launcherLargeIconSize, launcherLargeIconSize, Bitmap.Config.ARGB_8888);
                drawable2.setBounds(0, 0, bitmap.getWidth(), bitmap.getHeight());
                drawable2.draw(new Canvas(bitmap));
            } catch (PackageManager.NameNotFoundException e4) {
                throw new IllegalArgumentException("Can't find package " + this.f4329a, e4);
            }
        } else if (i2 == 5) {
            bitmap = a((Bitmap) this.f4329a, true);
        } else {
            throw new IllegalArgumentException("Icon type not supported for intent shortcuts");
        }
        if (drawable != null) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            drawable.setBounds(width / 2, height / 2, width, height);
            drawable.draw(new Canvas(bitmap));
        }
        intent.putExtra("android.intent.extra.shortcut.ICON", bitmap);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void checkResource(@NonNull Context context) {
        Object obj;
        if (this.mType != 2 || (obj = this.f4329a) == null) {
            return;
        }
        String str = (String) obj;
        if (str.contains(":")) {
            String str2 = str.split(":", -1)[1];
            String str3 = str2.split(e.F0, -1)[0];
            String str4 = str2.split(e.F0, -1)[1];
            String str5 = str.split(":", -1)[0];
            if ("0_resource_name_obfuscated".equals(str4)) {
                return;
            }
            String resPackage = getResPackage();
            int identifier = getResources(context, resPackage).getIdentifier(str4, str3, str5);
            if (this.mInt1 != identifier) {
                StringBuilder sb = new StringBuilder();
                sb.append("Id has changed for ");
                sb.append(resPackage);
                sb.append(" ");
                sb.append(str);
                this.mInt1 = identifier;
            }
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public Bitmap getBitmap() {
        int i2 = this.mType;
        if (i2 == -1 && Build.VERSION.SDK_INT >= 23) {
            Object obj = this.f4329a;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        } else if (i2 == 1) {
            return (Bitmap) this.f4329a;
        } else {
            if (i2 == 5) {
                return a((Bitmap) this.f4329a, true);
            }
            throw new IllegalStateException("called getBitmap() on " + this);
        }
    }

    @IdRes
    public int getResId() {
        int i2 = this.mType;
        if (i2 != -1 || Build.VERSION.SDK_INT < 23) {
            if (i2 == 2) {
                return this.mInt1;
            }
            throw new IllegalStateException("called getResId() on " + this);
        }
        return b((Icon) this.f4329a);
    }

    @NonNull
    public String getResPackage() {
        int i2 = this.mType;
        if (i2 != -1 || Build.VERSION.SDK_INT < 23) {
            if (i2 == 2) {
                if (TextUtils.isEmpty(this.mString1)) {
                    return ((String) this.f4329a).split(":", -1)[0];
                }
                return this.mString1;
            }
            throw new IllegalStateException("called getResPackage() on " + this);
        }
        return c((Icon) this.f4329a);
    }

    public int getType() {
        int i2 = this.mType;
        return (i2 != -1 || Build.VERSION.SDK_INT < 23) ? i2 : getType((Icon) this.f4329a);
    }

    @NonNull
    public Uri getUri() {
        int i2 = this.mType;
        if (i2 != -1 || Build.VERSION.SDK_INT < 23) {
            if (i2 != 4 && i2 != 6) {
                throw new IllegalStateException("called getUri() on " + this);
            }
            return Uri.parse((String) this.f4329a);
        }
        return d((Icon) this.f4329a);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public InputStream getUriInputStream(@NonNull Context context) {
        Uri uri = getUri();
        String scheme = uri.getScheme();
        if (!"content".equals(scheme) && !f.f11767c.equals(scheme)) {
            try {
                return new FileInputStream(new File((String) this.f4329a));
            } catch (FileNotFoundException unused) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unable to load image from path: ");
                sb.append(uri);
                return null;
            }
        }
        try {
            return context.getContentResolver().openInputStream(uri);
        } catch (Exception unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to load image from URI: ");
            sb2.append(uri);
            return null;
        }
    }

    @Nullable
    public Drawable loadDrawable(@NonNull Context context) {
        checkResource(context);
        if (Build.VERSION.SDK_INT >= 23) {
            return toIcon(context).loadDrawable(context);
        }
        Drawable e4 = e(context);
        if (e4 != null && (this.mTintList != null || this.f4330b != f4328r)) {
            e4.mutate();
            DrawableCompat.setTintList(e4, this.mTintList);
            DrawableCompat.setTintMode(e4, this.f4330b);
        }
        return e4;
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void onPostParceling() {
        this.f4330b = PorterDuff.Mode.valueOf(this.mTintModeStr);
        switch (this.mType) {
            case -1:
                Parcelable parcelable = this.mParcelable;
                if (parcelable != null) {
                    this.f4329a = parcelable;
                    return;
                }
                throw new IllegalArgumentException("Invalid icon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.mParcelable;
                if (parcelable2 != null) {
                    this.f4329a = parcelable2;
                    return;
                }
                byte[] bArr = this.mData;
                this.f4329a = bArr;
                this.mType = 3;
                this.mInt1 = 0;
                this.mInt2 = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.mData, Charset.forName("UTF-16"));
                this.f4329a = str;
                if (this.mType == 2 && this.mString1 == null) {
                    this.mString1 = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.f4329a = this.mData;
                return;
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void onPreParceling(boolean z3) {
        this.mTintModeStr = this.f4330b.name();
        switch (this.mType) {
            case -1:
                if (!z3) {
                    this.mParcelable = (Parcelable) this.f4329a;
                    return;
                }
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (z3) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    ((Bitmap) this.f4329a).compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                    this.mData = byteArrayOutputStream.toByteArray();
                    return;
                }
                this.mParcelable = (Parcelable) this.f4329a;
                return;
            case 2:
                this.mData = ((String) this.f4329a).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.mData = (byte[]) this.f4329a;
                return;
            case 4:
            case 6:
                this.mData = this.f4329a.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    public IconCompat setTint(@ColorInt int i2) {
        return setTintList(ColorStateList.valueOf(i2));
    }

    public IconCompat setTintList(ColorStateList colorStateList) {
        this.mTintList = colorStateList;
        return this;
    }

    public IconCompat setTintMode(PorterDuff.Mode mode) {
        this.f4330b = mode;
        return this;
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        switch (this.mType) {
            case -1:
                bundle.putParcelable(f4322l, (Parcelable) this.f4329a);
                break;
            case 0:
            default:
                throw new IllegalArgumentException("Invalid icon");
            case 1:
            case 5:
                bundle.putParcelable(f4322l, (Bitmap) this.f4329a);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString(f4322l, (String) this.f4329a);
                break;
            case 3:
                bundle.putByteArray(f4322l, (byte[]) this.f4329a);
                break;
        }
        bundle.putInt("type", this.mType);
        bundle.putInt(f4323m, this.mInt1);
        bundle.putInt(f4324n, this.mInt2);
        bundle.putString(f4327q, this.mString1);
        ColorStateList colorStateList = this.mTintList;
        if (colorStateList != null) {
            bundle.putParcelable(f4325o, colorStateList);
        }
        PorterDuff.Mode mode = this.f4330b;
        if (mode != f4328r) {
            bundle.putString(f4326p, mode.name());
        }
        return bundle;
    }

    @NonNull
    @RequiresApi(23)
    @Deprecated
    public Icon toIcon() {
        return toIcon(null);
    }

    @NonNull
    public String toString() {
        if (this.mType == -1) {
            return String.valueOf(this.f4329a);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(f(this.mType));
        switch (this.mType) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f4329a).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f4329a).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.mString1);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(getResId())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.mInt1);
                if (this.mInt2 != 0) {
                    sb.append(" off=");
                    sb.append(this.mInt2);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f4329a);
                break;
        }
        if (this.mTintList != null) {
            sb.append(" tint=");
            sb.append(this.mTintList);
        }
        if (this.f4330b != f4328r) {
            sb.append(" mode=");
            sb.append(this.f4330b);
        }
        sb.append(")");
        return sb.toString();
    }

    @NonNull
    @RequiresApi(23)
    public Icon toIcon(@Nullable Context context) {
        Icon createWithBitmap;
        switch (this.mType) {
            case -1:
                return (Icon) this.f4329a;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                createWithBitmap = Icon.createWithBitmap((Bitmap) this.f4329a);
                break;
            case 2:
                createWithBitmap = Icon.createWithResource(getResPackage(), this.mInt1);
                break;
            case 3:
                createWithBitmap = Icon.createWithData((byte[]) this.f4329a, this.mInt1, this.mInt2);
                break;
            case 4:
                createWithBitmap = Icon.createWithContentUri((String) this.f4329a);
                break;
            case 5:
                if (Build.VERSION.SDK_INT >= 26) {
                    createWithBitmap = Icon.createWithAdaptiveBitmap((Bitmap) this.f4329a);
                    break;
                } else {
                    createWithBitmap = Icon.createWithBitmap(a((Bitmap) this.f4329a, false));
                    break;
                }
            case 6:
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 30) {
                    createWithBitmap = Icon.createWithAdaptiveBitmapContentUri(getUri());
                    break;
                } else if (context != null) {
                    InputStream uriInputStream = getUriInputStream(context);
                    if (uriInputStream == null) {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + getUri());
                    } else if (i2 >= 26) {
                        createWithBitmap = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(uriInputStream));
                        break;
                    } else {
                        createWithBitmap = Icon.createWithBitmap(a(BitmapFactory.decodeStream(uriInputStream), false));
                        break;
                    }
                } else {
                    throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + getUri());
                }
        }
        ColorStateList colorStateList = this.mTintList;
        if (colorStateList != null) {
            createWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.f4330b;
        if (mode != f4328r) {
            createWithBitmap.setTintMode(mode);
        }
        return createWithBitmap;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static IconCompat createWithResource(Resources resources, String str, @DrawableRes int i2) {
        if (str != null) {
            if (i2 != 0) {
                IconCompat iconCompat = new IconCompat(2);
                iconCompat.mInt1 = i2;
                if (resources != null) {
                    try {
                        iconCompat.f4329a = resources.getResourceName(i2);
                    } catch (Resources.NotFoundException unused) {
                        throw new IllegalArgumentException("Icon resource cannot be found");
                    }
                } else {
                    iconCompat.f4329a = str;
                }
                iconCompat.mString1 = str;
                return iconCompat;
            }
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        throw new IllegalArgumentException("Package must not be null.");
    }

    @RequiresApi(23)
    private static int getType(@NonNull Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getType();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getType", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Unable to get icon type ");
            sb.append(icon);
            return -1;
        } catch (NoSuchMethodException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to get icon type ");
            sb2.append(icon);
            return -1;
        } catch (InvocationTargetException unused3) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unable to get icon type ");
            sb3.append(icon);
            return -1;
        }
    }

    @NonNull
    public static IconCompat createWithAdaptiveBitmapContentUri(@NonNull Uri uri) {
        if (uri != null) {
            return createWithAdaptiveBitmapContentUri(uri.toString());
        }
        throw new IllegalArgumentException("Uri must not be null.");
    }

    public static IconCompat createWithContentUri(Uri uri) {
        if (uri != null) {
            return createWithContentUri(uri.toString());
        }
        throw new IllegalArgumentException("Uri must not be null.");
    }

    private IconCompat(int i2) {
        this.mType = -1;
        this.mData = null;
        this.mParcelable = null;
        this.mInt1 = 0;
        this.mInt2 = 0;
        this.mTintList = null;
        this.f4330b = f4328r;
        this.mTintModeStr = null;
        this.mType = i2;
    }

    @Nullable
    @RequiresApi(23)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static IconCompat createFromIcon(@NonNull Icon icon) {
        Preconditions.checkNotNull(icon);
        int type = getType(icon);
        if (type != 2) {
            if (type != 4) {
                if (type != 6) {
                    IconCompat iconCompat = new IconCompat(-1);
                    iconCompat.f4329a = icon;
                    return iconCompat;
                }
                return createWithAdaptiveBitmapContentUri(d(icon));
            }
            return createWithContentUri(d(icon));
        }
        return createWithResource(null, c(icon), b(icon));
    }
}
