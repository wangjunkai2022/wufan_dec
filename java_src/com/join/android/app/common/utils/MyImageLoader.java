package com.join.android.app.common.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.net.Uri;
import android.os.Looper;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.Util.g0;
import com.join.mgps.Util.o1;
import com.join.mgps.Util.u;
import com.join.mgps.data.UserIconName;
import java.io.File;
/* loaded from: classes.dex */
public class MyImageLoader {

    /* loaded from: classes.dex */
    class a extends com.facebook.imagepipeline.datasource.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ float f17206a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SimpleDraweeView f17207b;

        /* renamed from: com.join.android.app.common.utils.MyImageLoader$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0133a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Bitmap f17208a;

            RunnableC0133a(Bitmap bitmap) {
                this.f17208a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f17207b.setImageBitmap(this.f17208a);
            }
        }

        a(float f4, SimpleDraweeView simpleDraweeView) {
            this.f17206a = f4;
            this.f17207b = simpleDraweeView;
        }

        @Override // com.facebook.datasource.b
        public void e(com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> cVar) {
        }

        @Override // com.facebook.imagepipeline.datasource.b
        public void g(@Nullable Bitmap bitmap) {
            if (bitmap == null) {
                return;
            }
            Bitmap a4 = MyImageLoader.a(MyImageLoader.I(bitmap, -90), this.f17206a);
            if (Looper.getMainLooper() != Looper.myLooper()) {
                this.f17207b.post(new RunnableC0133a(a4));
            } else {
                this.f17207b.setImageBitmap(a4);
            }
        }
    }

    /* loaded from: classes.dex */
    class b extends com.facebook.imagepipeline.datasource.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f17210a;

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Bitmap f17211a;

            a(Bitmap bitmap) {
                this.f17211a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f17210a.setImageBitmap(this.f17211a);
            }
        }

        b(ImageView imageView) {
            this.f17210a = imageView;
        }

        @Override // com.facebook.datasource.b
        public void e(com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> cVar) {
        }

        @Override // com.facebook.imagepipeline.datasource.b
        public void g(@Nullable Bitmap bitmap) {
            if (bitmap == null) {
                return;
            }
            try {
                if (Looper.getMainLooper() != Looper.myLooper()) {
                    this.f17210a.post(new a(bitmap));
                } else {
                    this.f17210a.setImageBitmap(bitmap);
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends com.facebook.imagepipeline.datasource.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f17213a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f17214b;

        c(String str, Context context) {
            this.f17213a = str;
            this.f17214b = context;
        }

        private void i(Bitmap bitmap) {
            try {
                if (d2.i(this.f17213a)) {
                    return;
                }
                String str = h() + "";
                o1.q(bitmap, str);
                Fresco.getImagePipeline().e(MyImageLoader.F(new File(str)));
                AccountUtil_.getInstance_(this.f17214b).setLocalUserIcon(str);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }

        @Override // com.facebook.datasource.b
        public void e(com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> cVar) {
        }

        @Override // com.facebook.imagepipeline.datasource.b
        public void g(@Nullable Bitmap bitmap) {
            i(bitmap);
        }

        public File h() {
            File c4 = u.c();
            if (!c4.getParentFile().exists()) {
                c4.getParentFile().mkdirs();
            }
            return c4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements com.facebook.drawee.controller.c<com.facebook.imagepipeline.image.f> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f17215a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f17216b;

        d(boolean z3, Context context) {
            this.f17215a = z3;
            this.f17216b = context;
        }

        @Override // com.facebook.drawee.controller.c
        public void b(String str, Throwable th) {
        }

        @Override // com.facebook.drawee.controller.c
        public void c(String str) {
        }

        @Override // com.facebook.drawee.controller.c
        public void e(String str, Object obj) {
        }

        @Override // com.facebook.drawee.controller.c
        public void f(String str, Throwable th) {
        }

        @Override // com.facebook.drawee.controller.c
        /* renamed from: g */
        public void d(String str, com.facebook.imagepipeline.image.f fVar, Animatable animatable) {
            if (this.f17215a) {
                MyImageLoader.J(this.f17216b, Uri.parse(str));
            }
        }

        @Override // com.facebook.drawee.controller.c
        /* renamed from: h */
        public void a(String str, com.facebook.imagepipeline.image.f fVar) {
        }
    }

    public static RoundingParams A(Context context) {
        return C(context);
    }

    public static RoundingParams B(Context context, int i2, int i4, int i5) {
        Resources resources = context.getResources();
        float dimension = resources.getDimension(i4);
        float dimension2 = resources.getDimension(i5);
        return new RoundingParams().p(dimension2).s(dimension).o(resources.getColor(i2)).v(true);
    }

    public static RoundingParams C(Context context) {
        return new RoundingParams().s(context.getResources().getDimension(R.dimen.mg_forum_avatar_round_width));
    }

    public static RoundingParams D(Context context, float f4) {
        return new RoundingParams().s(f4);
    }

    public static Uri E(Context context, int i2) {
        return Uri.parse("res://" + context.getPackageName() + net.lingala.zip4j.util.e.F0 + i2);
    }

    public static Uri F(File file) {
        return Uri.parse("file://" + file);
    }

    public static Uri G(String str) {
        return Uri.parse(d2.g(str));
    }

    public static RoundingParams H(Context context) {
        Resources resources = context.getResources();
        float dimension = resources.getDimension(R.dimen.mg_forum_avatar_round_width);
        float dimension2 = resources.getDimension(R.dimen.mg_forum_avatar_round_stroke_width);
        return new RoundingParams().p(dimension2).s(dimension).o(resources.getColor(R.color.mg_forum_avatar_round_stroke_color)).v(true);
    }

    public static Bitmap I(Bitmap bitmap, int i2) {
        if (i2 == 0 || bitmap == null) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(i2, bitmap.getWidth() / 2, bitmap.getHeight() / 2);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void J(Context context, Uri uri) {
        Fresco.getImagePipeline().i(ImageRequestBuilder.u(uri).C(true).a(), context).e(new c(AccountUtil_.getInstance_(context).getLocalUserIcon(), context), com.facebook.common.executors.a.a());
    }

    public static void K(SimpleDraweeView simpleDraweeView, String str, int i2, int i4) {
        try {
            simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().c(simpleDraweeView.getController()).M(ImageRequestBuilder.u(Uri.parse(str)).B(new com.facebook.imagepipeline.postprocessors.b(i2, i4)).a()).build());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static Bitmap a(Bitmap bitmap, float f4) {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            RectF rectF = new RectF(new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()));
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(-16777216);
            canvas.drawRoundRect(rectF, f4, f4, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmap, new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight()), rect, paint);
            return createBitmap;
        } catch (Exception unused) {
            return bitmap;
        }
    }

    public static boolean c(String str) {
        if (d2.i(str)) {
            String trim = str.trim();
            if (trim.length() > 0) {
                return trim.substring(trim.lastIndexOf(g0.f27568a)).toLowerCase().equals(".gif");
            }
            return false;
        }
        return false;
    }

    public static void d(SimpleDraweeView simpleDraweeView, int i2, String str) {
        if (d2.i(str) && str.startsWith("system_")) {
            str = UtilsMy.S1(str);
        }
        g(simpleDraweeView, i2, str, null, r.c.f12138a);
    }

    public static void e(SimpleDraweeView simpleDraweeView, int i2, String str, r.c cVar) {
        if (d2.i(str) && str.startsWith("system_")) {
            str = UtilsMy.S1(str);
        }
        g(simpleDraweeView, i2, str, null, cVar);
    }

    public static void f(SimpleDraweeView simpleDraweeView, int i2, String str, RoundingParams roundingParams) {
        if (d2.i(str) && str.startsWith("system_")) {
            str = UtilsMy.S1(str);
        }
        g(simpleDraweeView, i2, str, roundingParams, null);
    }

    public static void g(SimpleDraweeView simpleDraweeView, int i2, String str, RoundingParams roundingParams, r.c cVar) {
        if (d2.i(str) && str.startsWith("system_")) {
            str = UtilsMy.S1(str);
        }
        if (simpleDraweeView == null) {
            return;
        }
        simpleDraweeView.getContext();
        if (cVar == null) {
            simpleDraweeView.getHierarchy().x(r.c.f12138a);
        } else {
            simpleDraweeView.getHierarchy().x(cVar);
        }
        if (i2 != 0) {
            simpleDraweeView.getHierarchy().H(i2);
        }
        if (roundingParams != null) {
            simpleDraweeView.getHierarchy().V(roundingParams);
        }
        try {
            simpleDraweeView.setImageURI(G(str));
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void h(SimpleDraweeView simpleDraweeView, String str) {
        if (d2.i(str) && str.startsWith("system_")) {
            str = UtilsMy.S1(str);
        }
        d(simpleDraweeView, R.drawable.main_normal_icon, str);
    }

    public static void i(SimpleDraweeView simpleDraweeView, String str, r.c cVar) {
        if (d2.i(str) && str.startsWith("system_")) {
            str = UtilsMy.S1(str);
        }
        g(simpleDraweeView, R.drawable.main_normal_icon, str, null, cVar);
    }

    public static void j(SimpleDraweeView simpleDraweeView, String str, RoundingParams roundingParams) {
        if (d2.i(str) && str.startsWith("system_")) {
            str = UtilsMy.S1(str);
        }
        g(simpleDraweeView, R.drawable.main_normal_icon, str, roundingParams, null);
    }

    public static void k(String str) {
        if (d2.i(str) && str.startsWith("system_")) {
            str = UtilsMy.S1(str);
        }
        try {
            Fresco.getImagePipeline().L(ImageRequest.c(str), null);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void l(SimpleDraweeView simpleDraweeView, String str) {
        simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().M(ImageRequestBuilder.u(Uri.parse(str)).y(new com.facebook.imagepipeline.common.c().p(true).a()).a()).build());
    }

    public static void loadBitmapForImageView(ImageView imageView, String str, float f4) {
        Fresco.getImagePipeline().i(ImageRequestBuilder.u(G(str)).C(true).v(true).a(), imageView.getContext()).e(new b(imageView), com.facebook.common.executors.a.a());
    }

    public static void m(SimpleDraweeView simpleDraweeView, Uri uri) {
        simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().a(uri).E(true).build());
    }

    public static void n(SimpleDraweeView simpleDraweeView, String str) {
        o(simpleDraweeView, str, R.drawable.main_normal_icon);
    }

    public static void o(SimpleDraweeView simpleDraweeView, String str, int i2) {
        q(simpleDraweeView, str, r.c.f12144g, i2);
    }

    public static void p(SimpleDraweeView simpleDraweeView, String str, r.c cVar) {
        q(simpleDraweeView, str, cVar, 0);
    }

    public static void q(SimpleDraweeView simpleDraweeView, String str, r.c cVar, int i2) {
        if (c(str)) {
            com.facebook.drawee.controller.a build = Fresco.newDraweeControllerBuilder().a(Uri.parse(str)).E(true).build();
            if (cVar == null) {
                simpleDraweeView.getHierarchy().x(r.c.f12138a);
            } else {
                simpleDraweeView.getHierarchy().x(cVar);
            }
            if (i2 != 0) {
                simpleDraweeView.getHierarchy().H(i2);
            }
            simpleDraweeView.setController(build);
            return;
        }
        e(simpleDraweeView, i2, str, cVar);
    }

    public static void r(SimpleDraweeView simpleDraweeView, String str, float f4) {
        Fresco.getImagePipeline().i(ImageRequestBuilder.u(G(str)).C(true).F(new com.facebook.imagepipeline.common.d(com.join.android.app.mgsim.wufun.b.f17913g, 200)).v(true).a(), simpleDraweeView.getContext()).e(new a(f4, simpleDraweeView), com.facebook.common.executors.a.a());
    }

    public static void s(SimpleDraweeView simpleDraweeView, String str) {
        if (simpleDraweeView == null) {
            return;
        }
        try {
            String localUserIcon = AccountUtil_.getInstance_(simpleDraweeView.getContext()).getLocalUserIcon();
            File file = new File(localUserIcon);
            if (d2.i(localUserIcon) && file.exists()) {
                str = F(file).toString();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (d2.i(str) && str.startsWith("system_")) {
            str = UtilsMy.S1(str);
        }
        v(simpleDraweeView, R.drawable.unloginstatus, str, H(simpleDraweeView.getContext()), true);
    }

    public static void t(SimpleDraweeView simpleDraweeView, int i2, String str) {
        v(simpleDraweeView, i2, str, H(simpleDraweeView.getContext()), false);
    }

    public static void u(SimpleDraweeView simpleDraweeView, int i2, String str, RoundingParams roundingParams) {
        v(simpleDraweeView, i2, str, roundingParams, false);
    }

    private static void v(SimpleDraweeView simpleDraweeView, int i2, String str, RoundingParams roundingParams, boolean z3) {
        if (simpleDraweeView == null) {
            return;
        }
        Context context = simpleDraweeView.getContext();
        try {
            Resources resources = context.getResources();
            if (i2 != 0) {
                Drawable drawable = resources.getDrawable(i2);
                if ((drawable instanceof NinePatchDrawable) || (drawable instanceof ShapeDrawable)) {
                    drawable = new BitmapDrawable(o1.e(resources.getDrawable(i2)));
                }
                simpleDraweeView.getHierarchy().J(drawable);
            }
            if (roundingParams != null) {
                simpleDraweeView.getHierarchy().V(roundingParams);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        if (x(simpleDraweeView, i2, str)) {
            return;
        }
        try {
            simpleDraweeView.setController(Fresco.newDraweeControllerBuilder().H(new d(z3, context)).a(G(str)).build());
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    public static void w(SimpleDraweeView simpleDraweeView, String str) {
        if (simpleDraweeView == null) {
            return;
        }
        v(simpleDraweeView, R.drawable.main_normal_icon, str, H(simpleDraweeView.getContext()), false);
    }

    public static boolean x(SimpleDraweeView simpleDraweeView, int i2, String str) {
        int i4;
        if (simpleDraweeView == null) {
            return false;
        }
        try {
            Resources resources = simpleDraweeView.getContext().getResources();
            if (i2 != 0) {
                Drawable drawable = resources.getDrawable(i2);
                if ((drawable instanceof NinePatchDrawable) || (drawable instanceof ShapeDrawable)) {
                    drawable = new BitmapDrawable(o1.e(resources.getDrawable(i2)));
                }
                simpleDraweeView.getHierarchy().J(drawable);
            }
            if (str.equals(UserIconName.system_1.name())) {
                i4 = R.drawable.icon11;
            } else if (str.equals(UserIconName.system_2.name())) {
                i4 = R.drawable.icon12;
            } else if (str.equals(UserIconName.system_3.name())) {
                i4 = R.drawable.icon13;
            } else if (str.equals(UserIconName.system_4.name())) {
                i4 = R.drawable.icon14;
            } else if (str.equals(UserIconName.system_5.name())) {
                i4 = R.drawable.icon21;
            } else if (str.equals(UserIconName.system_6.name())) {
                i4 = R.drawable.icon22;
            } else if (str.equals(UserIconName.system_7.name())) {
                i4 = R.drawable.icon23;
            } else {
                i4 = str.equals(UserIconName.system_8.name()) ? R.drawable.icon24 : 0;
            }
            if (i4 != 0) {
                try {
                    simpleDraweeView.setImageURI(E(simpleDraweeView.getContext(), i4));
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                return true;
            }
            return false;
        } catch (Exception e5) {
            e5.printStackTrace();
            return false;
        }
    }

    public static RoundingParams y(Context context) {
        return C(context);
    }

    public static RoundingParams z(Context context) {
        return C(context);
    }
}
