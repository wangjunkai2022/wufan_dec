.class final Lcom/switfpass/pay/activity/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/d;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/e;->a:Lcom/switfpass/pay/activity/d;

    iput-object p2, p0, Lcom/switfpass/pay/activity/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/switfpass/pay/activity/e;->a:Lcom/switfpass/pay/activity/d;

    invoke-static {v0}, Lcom/switfpass/pay/activity/d;->a(Lcom/switfpass/pay/activity/d;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->U:Lcom/switfpass/pay/utils/g0;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/switfpass/pay/activity/e;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/e;->a:Lcom/switfpass/pay/activity/d;

    invoke-static {v0}, Lcom/switfpass/pay/activity/d;->a(Lcom/switfpass/pay/activity/d;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/switfpass/pay/activity/e;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->showToastInfo(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x6

    const/16 v1, 0x8

    const-string v2, "\u652f\u4ed8\u72b6\u6001\uff1a\u672a\u652f\u4ed8"

    invoke-static {v0, v1, v2}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/e;->a:Lcom/switfpass/pay/activity/d;

    invoke-static {v0}, Lcom/switfpass/pay/activity/d;->a(Lcom/switfpass/pay/activity/d;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->finish()V

    return-void
.end method
