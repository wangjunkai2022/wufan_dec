.class final Lcom/switfpass/pay/activity/u;
.super Landroid/os/CountDownTimer;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/QrcodeActivity;


# direct methods
.method public constructor <init>(Lcom/switfpass/pay/activity/QrcodeActivity;)V
    .locals 4

    iput-object p1, p0, Lcom/switfpass/pay/activity/u;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    const-wide/32 v0, 0x1d4c0

    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/activity/u;)Lcom/switfpass/pay/activity/QrcodeActivity;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/activity/u;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    return-object p0
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/switfpass/pay/activity/u;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    new-instance v1, Lcom/switfpass/pay/activity/v;

    invoke-direct {v1, p0}, Lcom/switfpass/pay/activity/v;-><init>(Lcom/switfpass/pay/activity/u;)V

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/activity/QrcodeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 1

    iget-object p1, p0, Lcom/switfpass/pay/activity/u;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/QrcodeActivity;->e(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/switfpass/pay/activity/u;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/QrcodeActivity;->e(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object p2

    invoke-virtual {p2}, Lcom/switfpass/pay/bean/OrderBena;->v()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/switfpass/pay/activity/u;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->e(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/OrderBena;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->a(Lcom/switfpass/pay/activity/QrcodeActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
