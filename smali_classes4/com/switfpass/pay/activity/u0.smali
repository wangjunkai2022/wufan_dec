.class final Lcom/switfpass/pay/activity/u0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/PaySDKCaptureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/u0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/switfpass/pay/activity/u0;)Lcom/switfpass/pay/activity/PaySDKCaptureActivity;
    .locals 0

    iget-object p0, p0, Lcom/switfpass/pay/activity/u0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    return-object p0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/switfpass/pay/activity/u0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_title_prompt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/switfpass/pay/activity/u0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_unFinished()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/switfpass/pay/activity/u0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_str_btnCancel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/switfpass/pay/activity/u0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/PaySDKCaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/switfpass/pay/lib/Resourcemap;->getById_pay_str_btnOk()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/switfpass/pay/activity/u0;->a:Lcom/switfpass/pay/activity/PaySDKCaptureActivity;

    new-instance v6, Lcom/switfpass/pay/activity/v0;

    invoke-direct {v6, p0}, Lcom/switfpass/pay/activity/v0;-><init>(Lcom/switfpass/pay/activity/u0;)V

    new-instance v7, Lcom/switfpass/pay/activity/w0;

    invoke-direct {v7}, Lcom/switfpass/pay/activity/w0;-><init>()V

    invoke-static/range {v1 .. v7}, Lcom/switfpass/pay/utils/h;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
