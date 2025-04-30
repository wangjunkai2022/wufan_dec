.class Lcom/join/mgps/activity/PayNowActivity$e;
.super Ljava/lang/Thread;
.source "PayNowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayNowActivity;->Z0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/activity/PayNowActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayNowActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$e;->b:Lcom/join/mgps/activity/PayNowActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/PayNowActivity$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x2

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/PayNowActivity$e;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/join/mgps/Util/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance v2, Lcom/alipay/sdk/app/PayTask;

    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$e;->b:Lcom/join/mgps/activity/PayNowActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/PayNowActivity;->A:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v1, v3}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 5
    iput v0, v2, Landroid/os/Message;->what:I

    .line 6
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$e;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/PayNowActivity;->L0(Lcom/join/mgps/activity/PayNowActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    new-instance v1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {v1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orderId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/PayNowActivity$e;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/PayNowActivity;->H0(Lcom/join/mgps/activity/PayNowActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$e;->b:Lcom/join/mgps/activity/PayNowActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/PayNowActivity;->B:Lcom/join/mgps/dto/PayCenterOrderRequest;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PayCenterOrderRequest;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    const-string v0, "\u7b7e\u540d\u9a8c\u8bc1\u5931\u8d25"

    .line 13
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$e;->b:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    return-void
.end method
