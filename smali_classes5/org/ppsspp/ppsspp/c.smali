.class Lorg/ppsspp/ppsspp/c;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "CameraHelper"


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:I

.field private c:I

.field private d:J

.field private e:Landroid/graphics/SurfaceTexture;

.field private f:Landroid/hardware/Camera$PreviewCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lorg/ppsspp/ppsspp/c;->b:I

    .line 4
    iput p1, p0, Lorg/ppsspp/ppsspp/c;->c:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lorg/ppsspp/ppsspp/c;->d:J

    .line 6
    new-instance p1, Lorg/ppsspp/ppsspp/c$a;

    invoke-direct {p1, p0}, Lorg/ppsspp/ppsspp/c$a;-><init>(Lorg/ppsspp/ppsspp/c;)V

    iput-object p1, p0, Lorg/ppsspp/ppsspp/c;->f:Landroid/hardware/Camera$PreviewCallback;

    .line 7
    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lorg/ppsspp/ppsspp/c;->e:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static synthetic a(Lorg/ppsspp/ppsspp/c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/ppsspp/ppsspp/c;->d:J

    return-wide v0
.end method

.method static synthetic b(Lorg/ppsspp/ppsspp/c;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/ppsspp/ppsspp/c;->d:J

    return-wide p1
.end method

.method static synthetic c(Lorg/ppsspp/ppsspp/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/ppsspp/ppsspp/c;->b:I

    return p0
.end method

.method static synthetic d(Lorg/ppsspp/ppsspp/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/ppsspp/ppsspp/c;->c:I

    return p0
.end method


# virtual methods
.method e()V
    .locals 12

    const-string v0, ")"

    const-string v1, ", "

    .line 1
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    .line 2
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 4
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    iput v5, p0, Lorg/ppsspp/ppsspp/c;->b:I

    .line 5
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    iput v5, p0, Lorg/ppsspp/ppsspp/c;->c:I

    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, " "

    const-string v8, "]: "

    if-ge v5, v6, :cond_1

    .line 7
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSupportedPreviewSizes["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    iget v9, v9, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->width:I

    const/16 v9, 0x280

    if-gt v6, v9, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    const/16 v9, 0x1e0

    if-gt v6, v9, :cond_0

    .line 9
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lorg/ppsspp/ppsspp/c;->b:I

    .line 10
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    iput v3, p0, Lorg/ppsspp/ppsspp/c;->c:I

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreviewSize("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/ppsspp/ppsspp/c;->b:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/ppsspp/ppsspp/c;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget v3, p0, Lorg/ppsspp/ppsspp/c;->b:I

    iget v5, p0, Lorg/ppsspp/ppsspp/c;->c:I

    invoke-virtual {v2, v3, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 13
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    .line 14
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    const/4 v6, 0x0

    .line 15
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v6, v9, :cond_3

    .line 16
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSupportedPreviewFpsRange["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aget v11, v11, v4

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aget v11, v11, v10

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v9, v9, v4

    aget v11, v5, v4

    if-gt v9, v11, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v9, v9, v10

    aget v10, v5, v10

    if-gt v9, v10, :cond_2

    .line 18
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 19
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPreviewFpsRange("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v5, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v10

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    aget v0, v5, v4

    aget v1, v5, v10

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 21
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 22
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/c;->e:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 23
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lorg/ppsspp/ppsspp/c;->f:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 24
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    return-void
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 4
    iget-object v0, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 5
    iput-object v1, p0, Lorg/ppsspp/ppsspp/c;->a:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method
