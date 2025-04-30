.class final Lcom/switfpass/pay/activity/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

.field private final synthetic b:Lcom/switfpass/pay/utils/g0;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Lcom/switfpass/pay/utils/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/a;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    iput-object p2, p0, Lcom/switfpass/pay/activity/a;->b:Lcom/switfpass/pay/utils/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/switfpass/pay/activity/a;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->a(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;Z)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/a;->b:Lcom/switfpass/pay/utils/g0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/switfpass/pay/activity/a;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->finish()V

    :cond_0
    return-void
.end method
