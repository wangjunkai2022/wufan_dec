package com.join.mgps.Util;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.URLUtil;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;
import java.io.File;
import java.util.UUID;
/* compiled from: FrescoUtil.java */
/* loaded from: classes3.dex */
public class k0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27657a = "frescocache";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FrescoUtil.java */
    /* loaded from: classes3.dex */
    public class a implements com.facebook.common.memory.b {
        a() {
        }

        @Override // com.facebook.common.memory.b
        public void d(MemoryTrimType memoryTrimType) {
            double suggestedTrimRatio = memoryTrimType.getSuggestedTrimRatio();
            if (MemoryTrimType.OnCloseToDalvikHeapLimit.getSuggestedTrimRatio() == suggestedTrimRatio || MemoryTrimType.OnSystemLowMemoryWhileAppInBackground.getSuggestedTrimRatio() == suggestedTrimRatio || MemoryTrimType.OnSystemLowMemoryWhileAppInForeground.getSuggestedTrimRatio() == suggestedTrimRatio) {
                com.facebook.imagepipeline.core.i.j().h().d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FrescoUtil.java */
    /* loaded from: classes3.dex */
    public class b implements com.facebook.common.internal.k<File> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f27658a;

        b(Context context) {
            this.f27658a = context;
        }

        @Override // com.facebook.common.internal.k
        /* renamed from: a */
        public File get() {
            return this.f27658a.getCacheDir();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FrescoUtil.java */
    /* loaded from: classes3.dex */
    public class c extends com.facebook.datasource.b<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27659a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ File f27660b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ f f27661c;

        c(String str, File file, f fVar) {
            this.f27659a = str;
            this.f27660b = file;
            this.f27661c = fVar;
        }

        @Override // com.facebook.datasource.b, com.facebook.datasource.e
        public void d(com.facebook.datasource.c<Void> cVar) {
            super.d(cVar);
            f fVar = this.f27661c;
            if (fVar != null) {
                fVar.onProgress(cVar.getProgress());
            }
        }

        @Override // com.facebook.datasource.b
        protected void e(com.facebook.datasource.c<Void> cVar) {
            f fVar = this.f27661c;
            if (fVar != null) {
                fVar.onFail();
            }
        }

        @Override // com.facebook.datasource.b
        protected void f(com.facebook.datasource.c<Void> cVar) {
            try {
                File e4 = k0.e(this.f27659a, this.f27660b);
                if (e4 != null && e4.exists()) {
                    f fVar = this.f27661c;
                    if (fVar != null) {
                        fVar.a(e4);
                    }
                }
                f fVar2 = this.f27661c;
                if (fVar2 != null) {
                    fVar2.onFail();
                }
            } catch (Exception e5) {
                e5.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FrescoUtil.java */
    /* loaded from: classes3.dex */
    public class d extends com.facebook.imagepipeline.datasource.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f27662a;

        d(e eVar) {
            this.f27662a = eVar;
        }

        @Override // com.facebook.datasource.b
        protected void e(com.facebook.datasource.c<com.facebook.common.references.a<com.facebook.imagepipeline.image.c>> cVar) {
            this.f27662a.onFail();
        }

        @Override // com.facebook.imagepipeline.datasource.b
        protected void g(Bitmap bitmap) {
            this.f27662a.a(bitmap);
        }
    }

    /* compiled from: FrescoUtil.java */
    /* loaded from: classes3.dex */
    public interface e {
        void a(Bitmap bitmap);

        void onFail();
    }

    /* compiled from: FrescoUtil.java */
    /* loaded from: classes3.dex */
    public interface f {
        void a(File file);

        void onFail();

        void onProgress(float f4);
    }

    /* compiled from: FrescoUtil.java */
    /* loaded from: classes3.dex */
    public static class g implements com.facebook.imagepipeline.cache.n {
        @Override // com.facebook.imagepipeline.cache.n
        public void a(com.facebook.imagepipeline.cache.h<?, ?> hVar) {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void b() {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void c() {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void d() {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void e() {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void f(com.facebook.cache.common.c cVar) {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void g(com.facebook.cache.common.c cVar) {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void h(com.facebook.cache.common.c cVar) {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void i(com.facebook.cache.common.c cVar) {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void j(com.facebook.imagepipeline.cache.h<?, ?> hVar) {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void k() {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void l() {
        }

        @Override // com.facebook.imagepipeline.cache.n
        public void m() {
        }
    }

    public static void a(String str) {
        Fresco.getImagePipeline().f(Uri.parse(str));
    }

    public static void b() {
        Fresco.getImagePipeline().c();
    }

    public static boolean c(String str, File file) {
        File i2;
        if (file == null || (i2 = i(str)) == null) {
            return false;
        }
        return g0.c(i2 + "", file + "");
    }

    public static boolean d(String str, File file, String str2) {
        return c(str, new File(file, str2));
    }

    public static File e(String str, File file) {
        if (file == null) {
            return null;
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        if (d2.h(URLUtil.guessFileName(str, "", ""))) {
            UUID.randomUUID().toString();
        }
        File file2 = new File(file, g0.o(str));
        if (c(str, file2)) {
            return file2;
        }
        return null;
    }

    public static void f(String str, Context context, File file, f fVar) {
        try {
            Fresco.getImagePipeline().M(ImageRequestBuilder.u(Uri.parse(str)).a(), context, Priority.HIGH).e(new c(str, file, fVar), com.facebook.common.executors.a.a());
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public static void g(String str, Context context, int i2, int i4, e eVar) {
        h(str, context, i2, i4, null, eVar);
    }

    public static void h(String str, Context context, int i2, int i4, com.facebook.imagepipeline.request.a aVar, e eVar) {
        Fresco.getImagePipeline().i(ImageRequestBuilder.u(Uri.parse(str)).C(false).B(aVar).F((i2 == 0 || i4 == 0) ? null : new com.facebook.imagepipeline.common.d(i2, i4)).a(), context).e(new d(eVar), com.facebook.common.executors.a.a());
    }

    public static File i(String str) {
        if (d2.h(str)) {
            return null;
        }
        com.facebook.cache.common.c d4 = com.facebook.imagepipeline.cache.j.f().d(ImageRequest.c(str), null);
        if (com.facebook.imagepipeline.core.i.j().l().i(d4)) {
            return ((a0.c) com.facebook.imagepipeline.core.i.j().l().c(d4)).c();
        }
        if (com.facebook.imagepipeline.core.i.j().r().i(d4)) {
            return ((a0.c) com.facebook.imagepipeline.core.i.j().r().c(d4)).c();
        }
        return null;
    }

    public static Uri j(File file) {
        return Uri.fromFile(file);
    }

    public static Uri k(String str) {
        return Uri.fromFile(new File(str));
    }

    public static Uri l(int i2) {
        return Uri.parse("res://xxyy/" + i2);
    }

    public static void m(Context context, int i2) {
        com.facebook.common.memory.d c4 = com.facebook.common.memory.d.c();
        c4.a(new a());
        com.facebook.cache.disk.b m4 = com.facebook.cache.disk.b.l(context).v(i2 * 1024 * 1024).n(f27657a).p(new b(context)).m();
        Fresco.initialize(context, ImagePipelineConfig.newBuilder(context).setMainDiskCacheConfig(m4).setImageCacheStatsTracker(new g()).setDownsampleEnabled(true).setBitmapsConfig(Bitmap.Config.RGB_565).setMemoryTrimmableRegistry(c4).build());
    }

    public static boolean n(String str) {
        return com.facebook.imagepipeline.core.i.j().l().i(com.facebook.imagepipeline.cache.j.f().d(ImageRequest.c(str), null));
    }

    public static void o(Uri uri, SimpleDraweeView simpleDraweeView, com.facebook.imagepipeline.request.a aVar, int i2, int i4, com.facebook.drawee.controller.b bVar) {
        simpleDraweeView.setController((com.facebook.drawee.backends.pipeline.d) Fresco.newDraweeControllerBuilder().M(ImageRequestBuilder.u(uri).B(aVar).F(new com.facebook.imagepipeline.common.d(i2, i4)).C(true).v(true).a()).H(bVar).c(simpleDraweeView.getController()).E(true).build());
    }

    public static void p(File file, SimpleDraweeView simpleDraweeView, com.facebook.imagepipeline.request.a aVar, int i2, int i4, com.facebook.drawee.controller.b bVar) {
        o(j(file), simpleDraweeView, aVar, i2, i4, bVar);
    }

    public static void q(String str, SimpleDraweeView simpleDraweeView, com.facebook.imagepipeline.request.a aVar, int i2, int i4, com.facebook.drawee.controller.b bVar) {
        o(k(str), simpleDraweeView, aVar, i2, i4, bVar);
    }

    public static void r(int i2, SimpleDraweeView simpleDraweeView, com.facebook.imagepipeline.request.a aVar, int i4, int i5, com.facebook.drawee.controller.b bVar) {
        o(l(i2), simpleDraweeView, aVar, i4, i5, bVar);
    }

    public static void s(String str, SimpleDraweeView simpleDraweeView, com.facebook.imagepipeline.request.a aVar, int i2, int i4, com.facebook.drawee.controller.b bVar) {
        o(Uri.parse(str), simpleDraweeView, aVar, i2, i4, bVar);
    }

    public static void t() {
        Fresco.getImagePipeline().I();
    }

    public static void u() {
        Fresco.getImagePipeline().N();
    }

    public static void v(SimpleDraweeView simpleDraweeView, int i2) {
        RoundingParams a4 = RoundingParams.a();
        a4.t(i2);
        simpleDraweeView.getHierarchy().V(a4);
    }
}
