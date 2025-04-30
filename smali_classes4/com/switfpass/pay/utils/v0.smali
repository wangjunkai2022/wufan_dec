.class final Lcom/switfpass/pay/utils/v0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Ljava/util/List;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/v0;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/switfpass/pay/utils/v0;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/switfpass/pay/utils/v0;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/switfpass/pay/utils/g;

    invoke-virtual {p1}, Lcom/switfpass/pay/utils/g;->c()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/switfpass/pay/utils/v0;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/switfpass/pay/utils/g;

    iget-object p1, p1, Lcom/switfpass/pay/utils/g;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/switfpass/pay/utils/v0;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/switfpass/pay/utils/g;

    iget-object v0, v0, Lcom/switfpass/pay/utils/g;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/switfpass/pay/utils/v0;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/switfpass/pay/utils/g;

    invoke-virtual {p2}, Lcom/switfpass/pay/utils/g;->c()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/switfpass/pay/utils/v0;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/switfpass/pay/utils/v0;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/switfpass/pay/utils/g;

    iget-object p2, p2, Lcom/switfpass/pay/utils/g;->b:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
