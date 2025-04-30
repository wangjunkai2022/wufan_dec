.class Lorg/ppsspp/ppsspp/c$a;
.super Ljava/lang/Object;
.source "CameraHelper.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ppsspp/ppsspp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/ppsspp/ppsspp/c;


# direct methods
.method constructor <init>(Lorg/ppsspp/ppsspp/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object p2, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    invoke-static {p2}, Lorg/ppsspp/ppsspp/c;->a(Lorg/ppsspp/ppsspp/c;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    invoke-static {p2, v0, v1}, Lorg/ppsspp/ppsspp/c;->b(Lorg/ppsspp/ppsspp/c;J)J

    .line 4
    new-instance p2, Landroid/graphics/YuvImage;

    const/16 v4, 0x11

    iget-object v0, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    invoke-static {v0}, Lorg/ppsspp/ppsspp/c;->c(Lorg/ppsspp/ppsspp/c;)I

    move-result v5

    iget-object v0, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    invoke-static {v0}, Lorg/ppsspp/ppsspp/c;->d(Lorg/ppsspp/ppsspp/c;)I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 5
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 7
    invoke-static {v1}, Lorg/ppsspp/ppsspp/c;->c(Lorg/ppsspp/ppsspp/c;)I

    move-result v1

    add-int/lit16 v1, v1, -0x1e0

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 8
    invoke-static {v2}, Lorg/ppsspp/ppsspp/c;->d(Lorg/ppsspp/ppsspp/c;)I

    move-result v2

    add-int/lit16 v2, v2, -0x110

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 9
    invoke-static {v3}, Lorg/ppsspp/ppsspp/c;->c(Lorg/ppsspp/ppsspp/c;)I

    move-result v3

    iget-object v4, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    invoke-static {v4}, Lorg/ppsspp/ppsspp/c;->c(Lorg/ppsspp/ppsspp/c;)I

    move-result v4

    add-int/lit16 v4, v4, -0x1e0

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    .line 10
    invoke-static {v4}, Lorg/ppsspp/ppsspp/c;->d(Lorg/ppsspp/ppsspp/c;)I

    move-result v4

    iget-object v5, p0, Lorg/ppsspp/ppsspp/c$a;->a:Lorg/ppsspp/ppsspp/c;

    invoke-static {v5}, Lorg/ppsspp/ppsspp/c;->d(Lorg/ppsspp/ppsspp/c;)I

    move-result v5

    add-int/lit16 v5, v5, -0x110

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v1, 0x50

    .line 11
    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 12
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/ppsspp/ppsspp/NativeApp;->pushCameraImage([B)V

    return-void
.end method
