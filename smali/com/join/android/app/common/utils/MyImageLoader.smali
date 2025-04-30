.class public Lcom/join/android/app/common/utils/MyImageLoader;
.super Ljava/lang/Object;
.source "MyImageLoader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method

.method public static B(Landroid/content/Context;III)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 3
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 5
    new-instance p1, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {p1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {p1, p3}, Lcom/facebook/drawee/generic/RoundingParams;->p(F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/generic/RoundingParams;->s(F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/facebook/drawee/generic/RoundingParams;->o(I)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/RoundingParams;->v(Z)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method

.method public static C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070c7d

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 3
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/generic/RoundingParams;->s(F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method

.method public static D(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .line 1
    new-instance p0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {p0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/generic/RoundingParams;->s(F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method

.method public static E(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "res://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static F(Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static G(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static H(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070c7d

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f070c7c

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x7f060319

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 5
    new-instance v2, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v2}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    invoke-virtual {v2, v1}, Lcom/facebook/drawee/generic/RoundingParams;->p(F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/generic/RoundingParams;->s(F)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/drawee/generic/RoundingParams;->o(I)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/drawee/generic/RoundingParams;->v(Z)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method

.method public static I(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v5, p1, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static J(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->C(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p0}, Lcom/facebook/imagepipeline/core/g;->i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;

    move-result-object p1

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getLocalUserIcon()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/join/android/app/common/utils/MyImageLoader$c;

    invoke-direct {v1, v0, p0}, Lcom/join/android/app/common/utils/MyImageLoader$c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 8
    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object p0

    .line 9
    invoke-interface {p1, v1, p0}, Lcom/facebook/datasource/c;->e(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static K(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;II)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/facebook/imagepipeline/postprocessors/b;

    invoke-direct {v0, p2, p3}, Lcom/facebook/imagepipeline/postprocessors/b;-><init>(II)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->B(Lcom/facebook/imagepipeline/request/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p2

    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getController()Lk0/a;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->O(Lk0/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/backends/pipeline/e;

    .line 7
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->M(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 8
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 3
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 6
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    new-instance v4, Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v6, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    .line 10
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v5, -0x1000000

    .line 12
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 14
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    invoke-virtual {v1, p0, p1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method static synthetic b(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->J(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "."

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".gif"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->S1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    .line 3
    sget-object v1, Lcom/facebook/drawee/drawable/r$c;->a:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->g(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public static e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->S1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, p2, v0, p3}, Lcom/join/android/app/common/utils/MyImageLoader;->g(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public static f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->S1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->g(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public static g(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Lcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lcom/join/mgps/Util/UtilsMy;->S1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    if-nez p4, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p4

    check-cast p4, Lcom/facebook/drawee/generic/a;

    sget-object v0, Lcom/facebook/drawee/drawable/r$c;->a:Lcom/facebook/drawee/drawable/r$c;

    invoke-virtual {p4, v0}, Lcom/facebook/drawee/generic/a;->x(Lcom/facebook/drawee/drawable/r$c;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v0, p4}, Lcom/facebook/drawee/generic/a;->x(Lcom/facebook/drawee/drawable/r$c;)V

    :goto_0
    if-eqz p1, :cond_3

    const p4, 0x7f0807b1

    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p4

    check-cast p4, Lcom/facebook/drawee/generic/a;

    invoke-virtual {p4, p1}, Lcom/facebook/drawee/generic/a;->H(I)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/a;

    invoke-virtual {p1, p3}, Lcom/facebook/drawee/generic/a;->V(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 8
    :cond_4
    :try_start_0
    invoke-static {p2}, Lcom/join/android/app/common/utils/MyImageLoader;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->S1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const v0, 0x7f0807b1

    .line 3
    invoke-static {p0, v0, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    return-void
.end method

.method public static i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->S1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const v0, 0x7f0807b1

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, p1, v1, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->g(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public static j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->S1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const v0, 0x7f0807b1

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, p1, p2, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->g(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Lcom/facebook/drawee/drawable/r$c;)V

    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->S1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/request/ImageRequest;->c(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p0

    .line 4
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/facebook/imagepipeline/core/g;->L(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static l(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/common/c;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/common/c;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/common/c;->p(Z)Lcom/facebook/imagepipeline/common/c;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/c;->a()Lcom/facebook/imagepipeline/common/b;

    move-result-object v0

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->y(Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->M(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 9
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    return-void
.end method

.method public static loadBitmapForImageView(Landroid/widget/ImageView;Ljava/lang/String;F)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/join/android/app/common/utils/MyImageLoader;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->C(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->v(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object p2

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/facebook/imagepipeline/core/g;->i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/join/android/app/common/utils/MyImageLoader$b;

    invoke-direct {p2, p0}, Lcom/join/android/app/common/utils/MyImageLoader$b;-><init>(Landroid/widget/ImageView;)V

    .line 8
    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object p0

    .line 9
    invoke-interface {p1, p2, p0}, Lcom/facebook/datasource/c;->e(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static m(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 4
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    return-void
.end method

.method public static n(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0807b1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;I)V

    return-void
.end method

.method public static o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/drawee/drawable/r$c;->g:Lcom/facebook/drawee/drawable/r$c;

    invoke-static {p0, p1, v0, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->q(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;I)V

    return-void
.end method

.method public static p(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->q(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;I)V

    return-void
.end method

.method public static q(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/r$c;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/join/android/app/common/utils/MyImageLoader;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/generic/a;

    sget-object v0, Lcom/facebook/drawee/drawable/r$c;->a:Lcom/facebook/drawee/drawable/r$c;

    invoke-virtual {p2, v0}, Lcom/facebook/drawee/generic/a;->x(Lcom/facebook/drawee/drawable/r$c;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v0, p2}, Lcom/facebook/drawee/generic/a;->x(Lcom/facebook/drawee/drawable/r$c;)V

    :goto_0
    if-eqz p3, :cond_1

    const p2, 0x7f0807b1

    .line 8
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p2

    check-cast p2, Lcom/facebook/drawee/generic/a;

    invoke-virtual {p2, p3}, Lcom/facebook/drawee/generic/a;->H(I)V

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p0, p3, p1, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/r$c;)V

    :goto_1
    return-void
.end method

.method public static r(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;F)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/join/android/app/common/utils/MyImageLoader;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->u(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->C(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    new-instance v1, Lcom/facebook/imagepipeline/common/d;

    const/16 v2, 0x154

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/facebook/imagepipeline/common/d;-><init>(II)V

    .line 3
    invoke-virtual {p1, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->F(Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->v(Z)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/imagepipeline/core/g;->i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/c;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/join/android/app/common/utils/MyImageLoader$a;

    invoke-direct {v0, p2, p0}, Lcom/join/android/app/common/utils/MyImageLoader$a;-><init>(FLcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 9
    invoke-static {}, Lcom/facebook/common/executors/a;->a()Lcom/facebook/common/executors/a;

    move-result-object p0

    .line 10
    invoke-interface {p1, v0, p0}, Lcom/facebook/datasource/c;->e(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static s(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getLocalUserIcon()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v1}, Lcom/join/android/app/common/utils/MyImageLoader;->F(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "system_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->S1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const v0, 0x7f080c9f

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/MyImageLoader;->H(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->v(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Z)V

    return-void
.end method

.method public static t(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/MyImageLoader;->H(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->v(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Z)V

    return-void
.end method

.method public static u(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->v(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Z)V

    return-void
.end method

.method private static v(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Z)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4
    instance-of v3, v2, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v3, :cond_2

    .line 5
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/o1;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/a;->J(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v1, p3}, Lcom/facebook/drawee/generic/a;->V(Lcom/facebook/drawee/generic/RoundingParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 8
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_4
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/join/android/app/common/utils/MyImageLoader;->x(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 10
    :try_start_1
    new-instance p1, Lcom/join/android/app/common/utils/MyImageLoader$d;

    invoke-direct {p1, p4, v0}, Lcom/join/android/app/common/utils/MyImageLoader$d;-><init>(ZLandroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->H(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 12
    invoke-static {p2}, Lcom/join/android/app/common/utils/MyImageLoader;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method

.method public static w(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0807b1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/android/app/common/utils/MyImageLoader;->H(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->v(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Z)V

    return-void
.end method

.method public static x(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 4
    instance-of v3, v2, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v3, :cond_1

    instance-of v3, v2, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v3, :cond_2

    .line 5
    :cond_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/o1;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/generic/a;

    invoke-virtual {p1, v2}, Lcom/facebook/drawee/generic/a;->J(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_3
    sget-object p1, Lcom/join/mgps/data/UserIconName;->system_1:Lcom/join/mgps/data/UserIconName;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f080691

    goto/16 :goto_0

    .line 8
    :cond_4
    sget-object p1, Lcom/join/mgps/data/UserIconName;->system_2:Lcom/join/mgps/data/UserIconName;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f080692

    goto :goto_0

    .line 9
    :cond_5
    sget-object p1, Lcom/join/mgps/data/UserIconName;->system_3:Lcom/join/mgps/data/UserIconName;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f080693

    goto :goto_0

    .line 10
    :cond_6
    sget-object p1, Lcom/join/mgps/data/UserIconName;->system_4:Lcom/join/mgps/data/UserIconName;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f080694

    goto :goto_0

    .line 11
    :cond_7
    sget-object p1, Lcom/join/mgps/data/UserIconName;->system_5:Lcom/join/mgps/data/UserIconName;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7f080695

    goto :goto_0

    .line 12
    :cond_8
    sget-object p1, Lcom/join/mgps/data/UserIconName;->system_6:Lcom/join/mgps/data/UserIconName;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f080696

    goto :goto_0

    .line 13
    :cond_9
    sget-object p1, Lcom/join/mgps/data/UserIconName;->system_7:Lcom/join/mgps/data/UserIconName;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const p1, 0x7f080697

    goto :goto_0

    .line 14
    :cond_a
    sget-object p1, Lcom/join/mgps/data/UserIconName;->system_8:Lcom/join/mgps/data/UserIconName;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_b

    const p1, 0x7f080698

    goto :goto_0

    :cond_b
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_c

    .line 15
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->E(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 16
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_2
    return v0
.end method

.method public static y(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method

.method public static z(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/MyImageLoader;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object p0

    return-object p0
.end method
