.class final Lcom/join/mgps/zxing/camera/g;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Lcom/join/mgps/zxing/camera/b;

.field private final b:Z

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/zxing/camera/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/zxing/camera/g;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/join/mgps/zxing/camera/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/zxing/camera/g;->a:Lcom/join/mgps/zxing/camera/b;

    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/zxing/camera/g;->b:Z

    return-void
.end method


# virtual methods
.method a(Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/zxing/camera/g;->c:Landroid/os/Handler;

    .line 2
    iput p2, p0, Lcom/join/mgps/zxing/camera/g;->d:I

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/camera/g;->a:Lcom/join/mgps/zxing/camera/b;

    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/b;->c()Landroid/graphics/Point;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/join/mgps/zxing/camera/g;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/zxing/camera/g;->c:Landroid/os/Handler;

    if-eqz p2, :cond_1

    .line 5
    iget v1, p0, Lcom/join/mgps/zxing/camera/g;->d:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v1, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 7
    iput-object v2, p0, Lcom/join/mgps/zxing/camera/g;->c:Landroid/os/Handler;

    :cond_1
    return-void
.end method
