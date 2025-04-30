.class public Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;
.super Ljava/lang/Object;
.source "BitmapProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageReq"
.end annotation


# instance fields
.field private callback:Lm/framework/ui/widget/asyncview/BitmapCallback;

.field private image:Landroid/graphics/Bitmap;

.field private reqTime:J

.field private url:Ljava/lang/String;

.field private worker:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->reqTime:J

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->worker:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    return-void
.end method

.method static synthetic access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->throwComplete(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->callback:Lm/framework/ui/widget/asyncview/BitmapCallback;

    return-void
.end method

.method private throwComplete(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->image:Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->callback:Lm/framework/ui/widget/asyncview/BitmapCallback;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lm/framework/ui/widget/asyncview/BitmapCallback;->onImageGot(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "time="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->reqTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "worker="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->worker:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->worker:Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
