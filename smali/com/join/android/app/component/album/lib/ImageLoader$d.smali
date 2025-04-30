.class Lcom/join/android/app/component/album/lib/ImageLoader$d;
.super Landroid/os/Handler;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/ImageLoader;->v(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/lib/ImageLoader;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/ImageLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$d;->a:Lcom/join/android/app/component/album/lib/ImageLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/join/android/app/component/album/lib/ImageLoader$g;

    .line 2
    iget-object v0, p1, Lcom/join/android/app/component/album/lib/ImageLoader$g;->b:Landroid/widget/ImageView;

    .line 3
    iget-object v1, p1, Lcom/join/android/app/component/album/lib/ImageLoader$g;->a:Landroid/graphics/Bitmap;

    .line 4
    iget-object p1, p1, Lcom/join/android/app/component/album/lib/ImageLoader$g;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
