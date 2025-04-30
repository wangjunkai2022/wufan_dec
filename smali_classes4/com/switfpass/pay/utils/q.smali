.class final Lcom/switfpass/pay/utils/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/d0;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/q;->a:Lcom/switfpass/pay/utils/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/switfpass/pay/utils/e0;

    invoke-direct {p1}, Lcom/switfpass/pay/utils/e0;-><init>()V

    iget-object v0, p0, Lcom/switfpass/pay/utils/q;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->m(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/bean/RequestMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/switfpass/pay/utils/q;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->m(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/bean/RequestMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/bean/RequestMsg;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/switfpass/pay/utils/q;->a:Lcom/switfpass/pay/utils/d0;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/q;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {p1}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/switfpass/pay/utils/q;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->m(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/bean/RequestMsg;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->startActivity(Landroid/content/Context;Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/switfpass/pay/utils/q;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->g(Lcom/switfpass/pay/utils/d0;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tokenid\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p1, v0, v1}, Lcom/switfpass/pay/utils/e0;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
