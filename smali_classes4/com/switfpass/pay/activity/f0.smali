.class final Lcom/switfpass/pay/activity/f0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/activity/PayResultActivity;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/activity/PayResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/activity/f0;->a:Lcom/switfpass/pay/activity/PayResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p1, v0}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    iget-object p1, p0, Lcom/switfpass/pay/activity/f0;->a:Lcom/switfpass/pay/activity/PayResultActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
