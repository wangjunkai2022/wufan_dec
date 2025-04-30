.class final Lcom/switfpass/pay/utils/R;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic dH:Lcom/switfpass/pay/utils/d0;

.field private final synthetic dR:Lcom/switfpass/pay/bean/OrderBena;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/bean/OrderBena;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/R;->dH:Lcom/switfpass/pay/utils/d0;

    iput-object p2, p0, Lcom/switfpass/pay/utils/R;->dR:Lcom/switfpass/pay/bean/OrderBena;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/switfpass/pay/utils/R;->dH:Lcom/switfpass/pay/utils/d0;

    invoke-static {v1}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/switfpass/pay/utils/R;->dR:Lcom/switfpass/pay/bean/OrderBena;

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/OrderBena;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/switfpass/pay/utils/R;->dH:Lcom/switfpass/pay/utils/d0;

    iget-object v0, v0, Lcom/switfpass/pay/utils/d0;->u:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
