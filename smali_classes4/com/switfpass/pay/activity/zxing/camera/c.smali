.class final Lcom/switfpass/pay/activity/zxing/camera/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/switfpass/pay/activity/zxing/camera/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/activity/zxing/camera/c;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/c;->a:Landroid/os/Handler;

    iput p2, p0, Lcom/switfpass/pay/activity/zxing/camera/c;->b:I

    return-void
.end method

.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, Lcom/switfpass/pay/activity/zxing/camera/c;->a:Landroid/os/Handler;

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/switfpass/pay/activity/zxing/camera/c;->b:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/switfpass/pay/activity/zxing/camera/c;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/camera/c;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method
