.class final Lcom/switfpass/pay/utils/h1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/l;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/l;I)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/h1;->a:Lcom/switfpass/pay/utils/l;

    iput p2, p0, Lcom/switfpass/pay/utils/h1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/switfpass/pay/utils/h1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget p1, p0, Lcom/switfpass/pay/utils/h1;->b:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/switfpass/pay/utils/h1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/h1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/h1;->a:Lcom/switfpass/pay/utils/l;

    invoke-static {p1}, Lcom/switfpass/pay/utils/l;->d(Lcom/switfpass/pay/utils/l;)Lcom/switfpass/pay/utils/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/switfpass/pay/utils/i;->cancel()V

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/switfpass/pay/utils/h1;->a:Lcom/switfpass/pay/utils/l;

    invoke-static {p1}, Lcom/switfpass/pay/utils/l;->d(Lcom/switfpass/pay/utils/l;)Lcom/switfpass/pay/utils/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/switfpass/pay/utils/i;->cancel()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/switfpass/pay/utils/h1;->a:Lcom/switfpass/pay/utils/l;

    invoke-static {p1}, Lcom/switfpass/pay/utils/l;->a(Lcom/switfpass/pay/utils/l;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
