.class final Lcom/switfpass/pay/activity/v0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/u0;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/u0;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/v0;->a:Lcom/switfpass/pay/activity/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x6

    const/16 p2, 0x8

    const-string v0, "\u5df2\u9000\u51fa\u53cd\u626b\u652f\u4ed8"

    invoke-static {p1, p2, v0}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/v0;->a:Lcom/switfpass/pay/activity/u0;

    invoke-static {p1}, Lcom/switfpass/pay/activity/u0;->a(Lcom/switfpass/pay/activity/u0;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->finish()V

    return-void
.end method
