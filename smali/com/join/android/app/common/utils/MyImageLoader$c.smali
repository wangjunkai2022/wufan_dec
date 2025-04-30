.class Lcom/join/android/app/common/utils/MyImageLoader$c;
.super Lcom/facebook/imagepipeline/datasource/b;
.source "MyImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/utils/MyImageLoader;->J(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/utils/MyImageLoader$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/join/android/app/common/utils/MyImageLoader$c;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/b;-><init>()V

    return-void
.end method

.method private i(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/common/utils/MyImageLoader$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/join/android/app/common/utils/MyImageLoader$c;->h()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Lcom/join/mgps/Util/o1;->q(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/join/android/app/common/utils/MyImageLoader;->F(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/g;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/core/g;->e(Landroid/net/Uri;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/common/utils/MyImageLoader$c;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/b;->setLocalUserIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public e(Lcom/facebook/datasource/c;)V
    .locals 0

    return-void
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/join/android/app/common/utils/MyImageLoader$c;->i(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public h()Ljava/io/File;
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/u;->c()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method
