.class public Lcom/netease/nis/quicklogin/view/GifView;
.super Landroid/widget/ImageView;
.source "GifView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Movie;

.field private b:Landroid/graphics/Canvas;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/drawable/BitmapDrawable;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->e:J

    return-void
.end method

.method private a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lcom/netease/nis/quicklogin/view/GifView;->e:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 5
    iput-wide v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->e:J

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    .line 7
    iget-wide v3, p0, Lcom/netease/nis/quicklogin/view/GifView;->e:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    .line 8
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    .line 9
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/view/GifView;->b:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->d:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->d:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 14
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/view/GifView;->a()V

    return-void
.end method

.method public setGifDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result p1

    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    .line 3
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->b:Landroid/graphics/Canvas;

    .line 4
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->d:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    return-void
.end method

.method public setGifResId(I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "[GifView#setGifResId] 0 is not a valid resource id,please check your gif resource name"

    .line 1
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result p1

    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->a:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    .line 4
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->b:Landroid/graphics/Canvas;

    .line 5
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/view/GifView;->c:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/netease/nis/quicklogin/view/GifView;->d:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method
