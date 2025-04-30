.class final Lcom/switfpass/pay/activity/zxing/camera/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Lcom/switfpass/pay/activity/zxing/camera/d;

.field private final b:Z

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/switfpass/pay/activity/zxing/camera/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/activity/zxing/camera/f;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/switfpass/pay/activity/zxing/camera/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/f;->a:Lcom/switfpass/pay/activity/zxing/camera/d;

    iput-boolean p2, p0, Lcom/switfpass/pay/activity/zxing/camera/f;->b:Z

    return-void
.end method


# virtual methods
.method final a(Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/f;->c:Landroid/os/Handler;

    iput p2, p0, Lcom/switfpass/pay/activity/zxing/camera/f;->d:I

    return-void
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/camera/f;->a:Lcom/switfpass/pay/activity/zxing/camera/d;

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/zxing/camera/d;->f()Landroid/graphics/Point;

    move-result-object v0

    iget-boolean v1, p0, Lcom/switfpass/pay/activity/zxing/camera/f;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    iget-object p2, p0, Lcom/switfpass/pay/activity/zxing/camera/f;->c:Landroid/os/Handler;

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/switfpass/pay/activity/zxing/camera/f;->d:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v1, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iput-object v2, p0, Lcom/switfpass/pay/activity/zxing/camera/f;->c:Landroid/os/Handler;

    :cond_1
    return-void
.end method
