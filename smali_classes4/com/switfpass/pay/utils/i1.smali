.class final Lcom/switfpass/pay/utils/i1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/l;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/l;I)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    iput p2, p0, Lcom/switfpass/pay/utils/i1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/switfpass/pay/utils/i1;->b:I

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-static {p1}, Lcom/switfpass/pay/utils/l;->d(Lcom/switfpass/pay/utils/l;)Lcom/switfpass/pay/utils/i;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/switfpass/pay/utils/i;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-static {p1}, Lcom/switfpass/pay/utils/l;->d(Lcom/switfpass/pay/utils/l;)Lcom/switfpass/pay/utils/i;

    move-result-object p1

    iget-object v0, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-static {v0}, Lcom/switfpass/pay/utils/l;->e(Lcom/switfpass/pay/utils/l;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/switfpass/pay/utils/i;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-static {p1}, Lcom/switfpass/pay/utils/l;->d(Lcom/switfpass/pay/utils/l;)Lcom/switfpass/pay/utils/i;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/switfpass/pay/utils/i;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-static {p1}, Lcom/switfpass/pay/utils/l;->d(Lcom/switfpass/pay/utils/l;)Lcom/switfpass/pay/utils/i;

    move-result-object p1

    invoke-interface {p1}, Lcom/switfpass/pay/utils/i;->cancel()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-static {p1}, Lcom/switfpass/pay/utils/l;->a(Lcom/switfpass/pay/utils/l;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-static {p1}, Lcom/switfpass/pay/utils/l;->d(Lcom/switfpass/pay/utils/l;)Lcom/switfpass/pay/utils/i;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/switfpass/pay/utils/i;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u63d0\u4ea4\u6210\u529f!"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/switfpass/pay/utils/i1;->a:Lcom/switfpass/pay/utils/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :goto_1
    return-void
.end method
