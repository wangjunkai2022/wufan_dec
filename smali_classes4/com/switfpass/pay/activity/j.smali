.class final Lcom/switfpass/pay/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/QrcodeActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/QrcodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/j;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/switfpass/pay/activity/j;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/QrcodeActivity;->e(Lcom/switfpass/pay/activity/QrcodeActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p2, v0, p1}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/j;->a:Lcom/switfpass/pay/activity/QrcodeActivity;

    invoke-virtual {p1}, Lcom/switfpass/pay/activity/QrcodeActivity;->finish()V

    return-void
.end method
