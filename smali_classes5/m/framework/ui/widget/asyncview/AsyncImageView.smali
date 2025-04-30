.class public Lm/framework/ui/widget/asyncview/AsyncImageView;
.super Landroid/widget/ImageView;
.source "AsyncImageView.java"

# interfaces
.implements Lm/framework/ui/widget/asyncview/AsyncView;
.implements Lm/framework/ui/widget/asyncview/BitmapCallback;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEFAULT_TRANSPARENT:I = 0x106000d

.field private static DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap; = null

.field private static final MSG_IMG_GOT:I = 0x1

.field private static cacheDir:Ljava/lang/String;

.field private static final rnd:Ljava/util/Random;


# instance fields
.field private defaultRes:I

.field private onImageGotListener:Lm/framework/ui/widget/asyncview/OnImageGotListener;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lm/framework/ui/widget/asyncview/AsyncImageView;->rnd:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getDefaultBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    const v0, 0x106000d

    if-eq p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 4
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap;

    .line 5
    :cond_1
    sget-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->DEFAULT_TRANSPARENT_BITMAP:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lm/framework/utils/UIHandler;->prepare()V

    .line 2
    sget-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->cacheDir:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "images"

    invoke-static {p1, v0}, Lm/framework/utils/Utils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->cacheDir:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->cacheDir:Ljava/lang/String;

    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->prepare(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;->INSTANCE:Lm/framework/ui/widget/asyncview/SimpleOnImageGotListener;

    invoke-virtual {p0, p1}, Lm/framework/ui/widget/asyncview/AsyncImageView;->setOnImageGotListener(Lm/framework/ui/widget/asyncview/OnImageGotListener;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lm/framework/ui/widget/asyncview/AsyncImageView;->execute(Ljava/lang/String;I)V

    return-void
.end method

.method public execute(Ljava/lang/String;I)V
    .locals 2

    .line 2
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->url:Ljava/lang/String;

    .line 3
    iput p2, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->defaultRes:I

    .line 4
    invoke-static {p1}, Lm/framework/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    if-lez p2, :cond_2

    .line 9
    invoke-direct {p0, p2}, Lm/framework/ui/widget/asyncview/AsyncImageView;->getDefaultBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    :cond_2
    invoke-static {p1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->process(Ljava/lang/String;Lm/framework/ui/widget/asyncview/BitmapCallback;)V

    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->url:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 3
    check-cast p1, [Ljava/lang/Object;

    aget-object p1, p1, v2

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->defaultRes:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return v1
.end method

.method public onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->onImageGotListener:Lm/framework/ui/widget/asyncview/OnImageGotListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p2, p1}, Lm/framework/ui/widget/asyncview/OnImageGotListener;->onImageGot(Lm/framework/ui/widget/asyncview/AsyncView;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    .line 5
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    sget-object p1, Lm/framework/ui/widget/asyncview/AsyncImageView;->rnd:Ljava/util/Random;

    const/16 p2, 0x12c

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    .line 7
    invoke-static {v0, p1, p2, p0}, Lm/framework/utils/UIHandler;->sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z

    return-void
.end method

.method public setOnImageGotListener(Lm/framework/ui/widget/asyncview/OnImageGotListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/AsyncImageView;->onImageGotListener:Lm/framework/ui/widget/asyncview/OnImageGotListener;

    return-void
.end method
