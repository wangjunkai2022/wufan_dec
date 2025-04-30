package com.facebook.drawee.backends.pipeline;

import android.content.Context;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.core.ImagePipelineConfig;
import com.facebook.imagepipeline.core.i;
import com.facebook.soloader.SoLoader;
import java.io.IOException;
import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class Fresco {
    private static final Class<?> TAG = Fresco.class;
    private static f sDraweeControllerBuilderSupplier;
    private static volatile boolean sIsInitialized;

    private Fresco() {
    }

    public static f getDraweeControllerBuilderSupplier() {
        return sDraweeControllerBuilderSupplier;
    }

    public static com.facebook.imagepipeline.core.g getImagePipeline() {
        return getImagePipelineFactory().h();
    }

    public static i getImagePipelineFactory() {
        return i.j();
    }

    public static boolean hasBeenInitialized() {
        return sIsInitialized;
    }

    public static void initialize(Context context) {
        initialize(context, null, null);
    }

    private static void initializeDrawee(Context context, @Nullable c cVar) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("Fresco.initializeDrawee");
        }
        f fVar = new f(context, cVar);
        sDraweeControllerBuilderSupplier = fVar;
        SimpleDraweeView.initialize(fVar);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    public static e newDraweeControllerBuilder() {
        return sDraweeControllerBuilderSupplier.get();
    }

    public static void shutDown() {
        sDraweeControllerBuilderSupplier = null;
        SimpleDraweeView.shutDown();
        i.w();
    }

    public static void initialize(Context context, @Nullable ImagePipelineConfig imagePipelineConfig) {
        initialize(context, imagePipelineConfig, null);
    }

    public static void initialize(Context context, @Nullable ImagePipelineConfig imagePipelineConfig, @Nullable c cVar) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("Fresco#initialize");
        }
        if (sIsInitialized) {
            com.facebook.common.logging.a.k0(TAG, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!");
        } else {
            sIsInitialized = true;
        }
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("Fresco.initialize->SoLoader.init");
            }
            SoLoader.f(context, 0);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            Context applicationContext = context.getApplicationContext();
            if (imagePipelineConfig == null) {
                i.t(applicationContext);
            } else {
                i.u(imagePipelineConfig);
            }
            initializeDrawee(applicationContext, cVar);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } catch (IOException e4) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw new RuntimeException("Could not initialize SoLoader", e4);
        }
    }
}
