.class final Lcom/switfpass/pay/activity/q0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/p0;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/p0;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/q0;->a:Lcom/switfpass/pay/activity/p0;

    iput-object p2, p0, Lcom/switfpass/pay/activity/q0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/switfpass/pay/activity/q0;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/switfpass/pay/activity/q0;->a:Lcom/switfpass/pay/activity/p0;

    invoke-static {v0}, Lcom/switfpass/pay/activity/p0;->a(Lcom/switfpass/pay/activity/p0;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/switfpass/pay/activity/q0;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->showToastInfo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/switfpass/pay/activity/q0;->a:Lcom/switfpass/pay/activity/p0;

    invoke-static {v0}, Lcom/switfpass/pay/activity/p0;->a(Lcom/switfpass/pay/activity/p0;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->finish()V

    :cond_0
    return-void
.end method
