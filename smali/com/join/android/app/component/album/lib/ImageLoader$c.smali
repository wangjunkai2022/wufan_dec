.class Lcom/join/android/app/component/album/lib/ImageLoader$c;
.super Landroidx/collection/LruCache;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/ImageLoader;->t(ILcom/join/android/app/component/album/lib/ImageLoader$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/join/android/app/component/album/lib/ImageLoader;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/ImageLoader;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/ImageLoader$c;->i:Lcom/join/android/app/component/album/lib/ImageLoader;

    invoke-direct {p0, p2}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/join/android/app/component/album/lib/ImageLoader$c;->e(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected e(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p1, p1, p2

    return p1
.end method
