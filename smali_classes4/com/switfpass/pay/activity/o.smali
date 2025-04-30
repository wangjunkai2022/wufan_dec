.class final Lcom/switfpass/pay/activity/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/QrcodeActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/QrcodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/o;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/switfpass/pay/activity/o;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/QrcodeActivity;->f(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/utils/y;

    move-result-object v0

    iget-object v1, p0, Lcom/switfpass/pay/activity/o;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v1}, Lcom/switfpass/pay/activity/QrcodeActivity;->e(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object v1

    invoke-virtual {v1}, Lcom/switfpass/pay/bean/OrderBena;->r()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/switfpass/pay/activity/o;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v2}, Lcom/switfpass/pay/activity/QrcodeActivity;->g(Lcom/switfpass/pay/activity/QrcodeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/switfpass/pay/utils/y;->a(Ljava/lang/String;I)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->a(Lcom/switfpass/pay/activity/QrcodeActivity;Landroid/widget/PopupWindow;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/o;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/QrcodeActivity;->h(Lcom/switfpass/pay/activity/QrcodeActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    iget-object v0, p0, Lcom/switfpass/pay/activity/o;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {v0}, Lcom/switfpass/pay/activity/QrcodeActivity;->g(Lcom/switfpass/pay/activity/QrcodeActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method
