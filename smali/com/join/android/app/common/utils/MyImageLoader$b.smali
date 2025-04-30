.class Lcom/join/android/app/common/utils/MyImageLoader$b;
.super Lcom/facebook/imagepipeline/datasource/b;
.source "MyImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/utils/MyImageLoader;->loadBitmapForImageView(Landroid/widget/ImageView;Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/utils/MyImageLoader$b;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/b;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/facebook/datasource/c;)V
    .locals 0

    return-void
.end method

.method public g(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/android/app/common/utils/MyImageLoader$b;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/join/android/app/common/utils/MyImageLoader$b$a;

    invoke-direct {v1, p0, p1}, Lcom/join/android/app/common/utils/MyImageLoader$b$a;-><init>(Lcom/join/android/app/common/utils/MyImageLoader$b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/common/utils/MyImageLoader$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
