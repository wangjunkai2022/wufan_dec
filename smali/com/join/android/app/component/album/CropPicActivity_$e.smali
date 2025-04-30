.class Lcom/join/android/app/component/album/CropPicActivity_$e;
.super Ljava/lang/Object;
.source "CropPicActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/CropPicActivity_;->G0(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/join/android/app/component/album/CropPicActivity_;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/CropPicActivity_;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/CropPicActivity_$e;->b:Lcom/join/android/app/component/album/CropPicActivity_;

    iput-object p2, p0, Lcom/join/android/app/component/album/CropPicActivity_$e;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/CropPicActivity_$e;->b:Lcom/join/android/app/component/album/CropPicActivity_;

    iget-object v1, p0, Lcom/join/android/app/component/album/CropPicActivity_$e;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/join/android/app/component/album/CropPicActivity_;->L0(Lcom/join/android/app/component/album/CropPicActivity_;Landroid/graphics/Bitmap;)V

    return-void
.end method
