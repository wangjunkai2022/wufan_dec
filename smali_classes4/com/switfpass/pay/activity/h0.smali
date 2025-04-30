.class final Lcom/switfpass/pay/activity/h0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/PayResultActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/PayResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/h0;->a:Lcom/switfpass/pay/activity/PayResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/switfpass/pay/activity/h0;->a:Lcom/switfpass/pay/activity/PayResultActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/PayResultActivity;->a(Lcom/switfpass/pay/activity/PayResultActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/switfpass/pay/activity/h0;->a:Lcom/switfpass/pay/activity/PayResultActivity;

    invoke-static {p1}, Lcom/switfpass/pay/activity/PayResultActivity;->a(Lcom/switfpass/pay/activity/PayResultActivity;)Lcom/switfpass/pay/bean/OrderBena;

    move-result-object p1

    invoke-virtual {p1}, Lcom/switfpass/pay/bean/OrderBena;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    const/4 v0, 0x7

    const-string v1, "\u652f\u4ed8\u72b6\u6001\uff1a\u8be5\u7b14\u8ba2\u5355\u5df2\u652f\u4ed8"

    invoke-static {p1, v0, v1}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v0, v0, v1}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/switfpass/pay/activity/h0;->a:Lcom/switfpass/pay/activity/PayResultActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
