.class final Lcom/switfpass/pay/activity/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/QrcodeActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/QrcodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->a(Lcom/switfpass/pay/activity/QrcodeActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->b(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->b(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u786e\u5b9a("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v2}, Lcom/switfpass/pay/activity/QrcodeActivity;->a(Lcom/switfpass/pay/activity/QrcodeActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\u79d2\u540e\u5173\u95ed)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/utils/l;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->a(Lcom/switfpass/pay/activity/QrcodeActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/switfpass/pay/activity/QrcodeActivity;->a(Lcom/switfpass/pay/activity/QrcodeActivity;J)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->c(Lcom/switfpass/pay/activity/QrcodeActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->c(Lcom/switfpass/pay/activity/QrcodeActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->b(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->b(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->b(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->b(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/utils/l;

    move-result-object v0

    const-string v1, "\u786e\u5b9a(\u5173\u95ed)"

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/utils/l;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/i;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->finish()V

    return-void
.end method
