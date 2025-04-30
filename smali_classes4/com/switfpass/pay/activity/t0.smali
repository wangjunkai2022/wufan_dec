.class final Lcom/switfpass/pay/activity/t0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->b(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->b(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8ba2\u5355\u72b6\u6001\u786e\u8ba4\u4e2d\uff0c\u51713\u6b21;\u6bcf\u96945\u79d2\u67e5\u8be2\uff0c("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v2}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2\u540e)\u5f00\u59cb(\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iget v2, v2, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->count:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6b21\u67e5\u8be2)\uff0c\u8bf7\u52ff\u4e2d\u65ad\u8be5\u64cd\u4f5c\uff0c\u8bf7\u8010\u5fc3\u7b49\u5f85\u67e5\u8be2\u7ed3\u679c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/utils/l;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;J)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->c(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->c(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->b(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->b(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->b(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/activity/t0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->d(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)Lcom/switfpass/pay/bean/RequestMsg;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "\u652f\u4ed8\u786e\u8ba4\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-static {v0, v1, v3, v2}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Z)V

    return-void
.end method
