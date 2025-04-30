.class public Lcom/join/mgps/Util/k0;
.super Ljava/lang/Object;
.source "FrescoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/k0$f;,
        Lcom/join/mgps/Util/k0$e;,
        Lcom/join/mgps/Util/k0$g;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "frescocache"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Lcom/facebook/imagepipeline/core/g;->f(Landroid/net/Uri;)V

    return-void
.end method

.method public static b()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/g;->c()V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/k0;->i(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/join/mgps/Util/g0;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, v0}, Lcom/join/mgps/Util/k0;->c(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const-string v1, ""

    .line 3
    invoke-static {p0, v1, v1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/g0;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, v2}, Lcom/join/mgps/Util/k0;->c(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v2

    :cond_3
    return-object v0
.end method

.method public static f(Ljava/lang/String;Landroid/content/Context;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v1, v0, p1, v2}, Lcom/facebook/imagepipeline/core/g;->M(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/datasource/c;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/join/mgps/Util/k0$c;

    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/Util/k0$c;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/join/mgps/Util/k0$f;)V

    .line 6
    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object p0

    .line 7
    invoke-interface {p1, v0, p0}, Lcom/facebook/datasource/c;->e(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static g(Ljava/lang/String;Landroid/content/Context;IILcom/join/mgps/Util/k0$e;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/k0;->h(Ljava/lang/String;Landroid/content/Context;IILcom/facebook/imagepipeline/request/a;Lcom/join/mgps/Util/k0$e;)V

    return-void
.end method

.method public static h(Ljava/lang/String;Landroid/content/Context;IILcom/facebook/imagepipeline/request/a;Lcom/join/mgps/Util/k0$e;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/common/d;

    invoke-direct {v0, p2, p3}, Lcom/facebook/imagepipeline/common/d;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->C(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->B(Lcom/facebook/imagepipeline/request/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->F(Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    .line 7
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p0, p1}, Lcom/facebook/imagepipeline/core/g;->i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;

    move-result-object p0

    .line 9
    new-instance p1, Lcom/join/mgps/Util/k0$d;

    invoke-direct {p1, p5}, Lcom/join/mgps/Util/k0$d;-><init>(Lcom/join/mgps/Util/k0$e;)V

    .line 10
    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object p2

    .line 11
    invoke-interface {p0, p1, p2}, Lcom/facebook/datasource/c;->e(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/cache/j;->f()Lcom/facebook/imagepipeline/cache/j;

    move-result-object v0

    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->c(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/j;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/core/i;->j()Lcom/facebook/imagepipeline/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/i;->l()Lcom/facebook/cache/disk/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/cache/disk/h;->i(Lcom/facebook/cache/common/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/core/i;->j()Lcom/facebook/imagepipeline/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/i;->l()Lcom/facebook/cache/disk/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/cache/disk/h;->c(Lcom/facebook/cache/common/c;)La0/a;

    move-result-object p0

    .line 5
    check-cast p0, La0/c;

    invoke-virtual {p0}, La0/c;->c()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/facebook/imagepipeline/core/i;->j()Lcom/facebook/imagepipeline/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/i;->r()Lcom/facebook/cache/disk/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/cache/disk/h;->i(Lcom/facebook/cache/common/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/facebook/imagepipeline/core/i;->j()Lcom/facebook/imagepipeline/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/i;->r()Lcom/facebook/cache/disk/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/cache/disk/h;->c(Lcom/facebook/cache/common/c;)La0/a;

    move-result-object p0

    .line 8
    check-cast p0, La0/c;

    invoke-virtual {p0}, La0/c;->c()Ljava/io/File;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static j(Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static l(I)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res://xxyy/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/facebook/common/memory/d;->c()Lcom/facebook/common/memory/d;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/join/mgps/Util/k0$a;

    invoke-direct {v1}, Lcom/join/mgps/Util/k0$a;-><init>()V

    invoke-interface {v0, v1}, Lcom/facebook/common/memory/c;->a(Lcom/facebook/common/memory/b;)V

    .line 3
    invoke-static {p0}, Lcom/facebook/cache/disk/b;->l(Landroid/content/Context;)Lcom/facebook/cache/disk/b$b;

    move-result-object v1

    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    int-to-long v2, p1

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/facebook/cache/disk/b$b;->v(J)Lcom/facebook/cache/disk/b$b;

    move-result-object p1

    const-string v1, "frescocache"

    .line 5
    invoke-virtual {p1, v1}, Lcom/facebook/cache/disk/b$b;->n(Ljava/lang/String;)Lcom/facebook/cache/disk/b$b;

    move-result-object p1

    new-instance v1, Lcom/join/mgps/Util/k0$b;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/k0$b;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1, v1}, Lcom/facebook/cache/disk/b$b;->p(Lcom/facebook/common/internal/k;)Lcom/facebook/cache/disk/b$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/facebook/cache/disk/b$b;->m()Lcom/facebook/cache/disk/b;

    move-result-object p1

    .line 8
    new-instance v1, Lcom/join/mgps/Util/k0$g;

    invoke-direct {v1}, Lcom/join/mgps/Util/k0$g;-><init>()V

    .line 9
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object v2

    .line 10
    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setMainDiskCacheConfig(Lcom/facebook/cache/disk/b;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setImageCacheStatsTracker(Lcom/facebook/imagepipeline/cache/n;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setDownsampleEnabled(Z)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 13
    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setBitmapsConfig(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->setMemoryTrimmableRegistry(Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object p1

    .line 16
    invoke-static {p0, p1}, Lcom/facebook/drawee/backends/pipeline/Fresco;->initialize(Landroid/content/Context;Lcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    return-void
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->c(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/facebook/imagepipeline/cache/j;->f()Lcom/facebook/imagepipeline/cache/j;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/j;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/cache/common/c;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/core/i;->j()Lcom/facebook/imagepipeline/core/i;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/i;->l()Lcom/facebook/cache/disk/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/cache/disk/h;->i(Lcom/facebook/cache/common/c;)Z

    move-result p0

    return p0
.end method

.method public static o(Landroid/net/Uri;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/imagepipeline/request/a;IILcom/facebook/drawee/controller/b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->B(Lcom/facebook/imagepipeline/request/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    new-instance p2, Lcom/facebook/imagepipeline/common/d;

    invoke-direct {p2, p3, p4}, Lcom/facebook/imagepipeline/common/d;-><init>(II)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->F(Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->C(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->v(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    .line 7
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p3

    .line 8
    invoke-virtual {p3, p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->M(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 9
    invoke-virtual {p0, p5}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->H(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 10
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getController()Lk0/a;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->O(Lk0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 11
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 12
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/backends/pipeline/d;

    .line 13
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    return-void
.end method

.method public static p(Ljava/io/File;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/imagepipeline/request/a;IILcom/facebook/drawee/controller/b;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/k0;->j(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/k0;->o(Landroid/net/Uri;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/imagepipeline/request/a;IILcom/facebook/drawee/controller/b;)V

    return-void
.end method

.method public static q(Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/imagepipeline/request/a;IILcom/facebook/drawee/controller/b;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/k0;->k(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/k0;->o(Landroid/net/Uri;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/imagepipeline/request/a;IILcom/facebook/drawee/controller/b;)V

    return-void
.end method

.method public static r(ILcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/imagepipeline/request/a;IILcom/facebook/drawee/controller/b;)V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/k0;->l(I)Landroid/net/Uri;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/k0;->o(Landroid/net/Uri;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/imagepipeline/request/a;IILcom/facebook/drawee/controller/b;)V

    return-void
.end method

.method public static s(Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/imagepipeline/request/a;IILcom/facebook/drawee/controller/b;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/k0;->o(Landroid/net/Uri;Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/facebook/imagepipeline/request/a;IILcom/facebook/drawee/controller/b;)V

    return-void
.end method

.method public static t()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/g;->I()V

    return-void
.end method

.method public static u()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/g;->N()V

    return-void
.end method

.method public static v(Lcom/facebook/drawee/view/SimpleDraweeView;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/drawee/generic/RoundingParams;->a()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/generic/RoundingParams;->t(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 3
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p0

    check-cast p0, Lcom/facebook/drawee/generic/a;

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/a;->V(Lcom/facebook/drawee/generic/RoundingParams;)V

    return-void
.end method
