.class public final Lcom/switfpass/pay/activity/zxing/decoding/h;
.super Landroid/os/Handler;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

.field private final b:Lcom/switfpass/pay/activity/zxing/decoding/a;

.field private c:Lcom/switfpass/pay/activity/zxing/decoding/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/switfpass/pay/activity/zxing/decoding/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/switfpass/pay/activity/zxing/decoding/h;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    new-instance v0, Lcom/switfpass/pay/activity/zxing/decoding/a;

    new-instance v1, Lcom/switfpass/pay/activity/zxing/decoding/i;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->getViewfinderView()Lcom/switfpass/pay/activity/zxing/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/switfpass/pay/activity/zxing/decoding/i;-><init>(Lcom/switfpass/pay/activity/zxing/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/switfpass/pay/activity/zxing/decoding/a;-><init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->b:Lcom/switfpass/pay/activity/zxing/decoding/a;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object p1, Lcom/switfpass/pay/activity/zxing/decoding/d;->bR:Lcom/switfpass/pay/activity/zxing/decoding/d;

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->c:Lcom/switfpass/pay/activity/zxing/decoding/d;

    invoke-static {}, Lcom/switfpass/pay/activity/zxing/camera/a;->c()Lcom/switfpass/pay/activity/zxing/camera/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/zxing/camera/a;->j()V

    invoke-direct {p0}, Lcom/switfpass/pay/activity/zxing/decoding/h;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->c:Lcom/switfpass/pay/activity/zxing/decoding/d;

    sget-object v1, Lcom/switfpass/pay/activity/zxing/decoding/d;->bR:Lcom/switfpass/pay/activity/zxing/decoding/d;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/d;->bQ:Lcom/switfpass/pay/activity/zxing/decoding/d;

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->c:Lcom/switfpass/pay/activity/zxing/decoding/d;

    invoke-static {}, Lcom/switfpass/pay/activity/zxing/camera/a;->c()Lcom/switfpass/pay/activity/zxing/camera/a;

    move-result-object v0

    iget-object v1, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->b:Lcom/switfpass/pay/activity/zxing/decoding/a;

    invoke-virtual {v1}, Lcom/switfpass/pay/activity/zxing/decoding/a;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v0, v1, v2}, Lcom/switfpass/pay/activity/zxing/camera/a;->i(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/switfpass/pay/activity/zxing/camera/a;->c()Lcom/switfpass/pay/activity/zxing/camera/a;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, p0, v1}, Lcom/switfpass/pay/activity/zxing/camera/a;->h(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->drawViewfinder()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/d;->bS:Lcom/switfpass/pay/activity/zxing/decoding/d;

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->c:Lcom/switfpass/pay/activity/zxing/decoding/d;

    invoke-static {}, Lcom/switfpass/pay/activity/zxing/camera/a;->c()Lcom/switfpass/pay/activity/zxing/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/zxing/camera/a;->k()V

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->b:Lcom/switfpass/pay/activity/zxing/decoding/a;

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/zxing/decoding/a;->a()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f070007

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :try_start_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->b:Lcom/switfpass/pay/activity/zxing/decoding/a;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, 0x7f070000

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->c:Lcom/switfpass/pay/activity/zxing/decoding/d;

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/d;->bQ:Lcom/switfpass/pay/activity/zxing/decoding/d;

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/switfpass/pay/activity/zxing/camera/a;->c()Lcom/switfpass/pay/activity/zxing/camera/a;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/switfpass/pay/activity/zxing/camera/a;->h(Landroid/os/Handler;I)V

    return-void

    :cond_0
    const v1, 0x7f070008

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/switfpass/pay/activity/zxing/decoding/h;->a()V

    return-void

    :cond_1
    const v1, 0x7f070003

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/switfpass/pay/activity/zxing/decoding/d;->bR:Lcom/switfpass/pay/activity/zxing/decoding/d;

    iput-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->c:Lcom/switfpass/pay/activity/zxing/decoding/d;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "barcode_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->submitData(Ljava/lang/String;Z)V

    return-void

    :cond_3
    const v1, 0x7f070002

    if-ne v0, v1, :cond_4

    sget-object p1, Lcom/switfpass/pay/activity/zxing/decoding/d;->bQ:Lcom/switfpass/pay/activity/zxing/decoding/d;

    iput-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->c:Lcom/switfpass/pay/activity/zxing/decoding/d;

    invoke-static {}, Lcom/switfpass/pay/activity/zxing/camera/a;->c()Lcom/switfpass/pay/activity/zxing/camera/a;

    move-result-object p1

    iget-object v0, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->b:Lcom/switfpass/pay/activity/zxing/decoding/a;

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/zxing/decoding/a;->a()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {p1, v0, v1}, Lcom/switfpass/pay/activity/zxing/camera/a;->i(Landroid/os/Handler;I)V

    return-void

    :cond_4
    const v1, 0x7f070009

    if-ne v0, v1, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/zxing/decoding/h;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->finish()V

    :cond_5
    return-void
.end method
