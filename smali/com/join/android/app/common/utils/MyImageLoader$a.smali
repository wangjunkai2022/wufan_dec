.class Lcom/join/android/app/common/utils/MyImageLoader$a;
.super Lcom/facebook/imagepipeline/datasource/b;
.source "MyImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/utils/MyImageLoader;->r(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/facebook/drawee/view/SimpleDraweeView;


# direct methods
.method constructor <init>(FLcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/android/app/common/utils/MyImageLoader$a;->a:F

    iput-object p2, p0, Lcom/join/android/app/common/utils/MyImageLoader$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

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

    :cond_0
    const/16 v0, -0x5a

    .line 1
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->I(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget v0, p0, Lcom/join/android/app/common/utils/MyImageLoader$a;->a:F

    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/join/android/app/common/utils/MyImageLoader$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v1, Lcom/join/android/app/common/utils/MyImageLoader$a$a;

    invoke-direct {v1, p0, p1}, Lcom/join/android/app/common/utils/MyImageLoader$a$a;-><init>(Lcom/join/android/app/common/utils/MyImageLoader$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/common/utils/MyImageLoader$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/DraweeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
