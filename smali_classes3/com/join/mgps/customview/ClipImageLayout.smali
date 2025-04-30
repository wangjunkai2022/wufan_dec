.class public Lcom/join/mgps/customview/ClipImageLayout;
.super Landroid/widget/RelativeLayout;
.source "ClipImageLayout.java"


# instance fields
.field private a:Lcom/join/mgps/customview/ClipZoomImageView;

.field private b:Lcom/join/mgps/customview/ClipImageBorderView;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->c:I

    .line 3
    new-instance p2, Lcom/join/mgps/customview/ClipZoomImageView;

    invoke-direct {p2, p1}, Lcom/join/mgps/customview/ClipZoomImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    .line 4
    new-instance p2, Lcom/join/mgps/customview/ClipImageBorderView;

    invoke-direct {p2, p1}, Lcom/join/mgps/customview/ClipImageBorderView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->b:Lcom/join/mgps/customview/ClipImageBorderView;

    .line 5
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->b:Lcom/join/mgps/customview/ClipImageBorderView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget p1, p0, Lcom/join/mgps/customview/ClipImageLayout;->c:I

    int-to-float p1, p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x1

    .line 11
    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/join/mgps/customview/ClipImageLayout;->c:I

    .line 12
    iget-object p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    invoke-virtual {p2, p1}, Lcom/join/mgps/customview/ClipZoomImageView;->setHorizontalPadding(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/ClipImageLayout;->b:Lcom/join/mgps/customview/ClipImageBorderView;

    iget p2, p0, Lcom/join/mgps/customview/ClipImageLayout;->c:I

    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/ClipImageBorderView;->setHorizontalPadding(I)V

    return-void
.end method

.method private b(I)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 4
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageLayout;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ClipZoomImageView;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://"

    .line 3
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    const-string v4, "window"

    if-eqz v2, :cond_4

    .line 4
    :try_start_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 9
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    div-int/2addr v2, v0

    if-le v4, v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    .line 11
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 12
    invoke-direct {p0, v3}, Lcom/join/mgps/customview/ClipImageLayout;->b(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object p2

    invoke-static {p1, v1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object p2

    .line 14
    :cond_4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    .line 17
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_2
    return-object v1

    .line 19
    :cond_6
    :try_start_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    div-int/2addr v0, v2

    if-le v4, v0, :cond_7

    goto :goto_3

    :cond_7
    move v4, v0

    :goto_3
    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    move v3, v4

    .line 22
    :goto_4
    invoke-direct {p0, v3}, Lcom/join/mgps/customview/ClipImageLayout;->b(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_9

    .line 23
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_5
    return-object p2

    :catchall_0
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto :goto_8

    :catch_2
    move-exception p2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_3
    move-exception p1

    move-object p2, v1

    .line 25
    :goto_6
    :try_start_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p2, :cond_a

    .line 26
    :try_start_7
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_7
    return-object v1

    :catchall_2
    move-exception p1

    move-object v1, p2

    :goto_8
    if-eqz v1, :cond_b

    .line 28
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_9

    :catch_5
    move-exception p2

    .line 29
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 30
    :cond_b
    :goto_9
    throw p1
.end method

.method public getmClipImageView()Lcom/join/mgps/customview/ClipImageBorderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageLayout;->b:Lcom/join/mgps/customview/ClipImageBorderView;

    return-object v0
.end method

.method public getmZoomImageView()Lcom/join/mgps/customview/ClipZoomImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageLayout;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    return-object v0
.end method

.method public setHorizontalPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/ClipImageLayout;->c:I

    return-void
.end method

.method public setmClipImageView(Lcom/join/mgps/customview/ClipImageBorderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ClipImageLayout;->b:Lcom/join/mgps/customview/ClipImageBorderView;

    return-void
.end method

.method public setmZoomImageView(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ClipImageLayout;->b(I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ClipImageLayout;->a:Lcom/join/mgps/customview/ClipZoomImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
