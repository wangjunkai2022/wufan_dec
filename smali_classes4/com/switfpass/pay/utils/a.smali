.class final Lcom/switfpass/pay/utils/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/d0;

.field private final synthetic b:Lcom/switfpass/pay/utils/g0;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/d0;Lcom/switfpass/pay/utils/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/a;->a:Lcom/switfpass/pay/utils/d0;

    iput-object p2, p0, Lcom/switfpass/pay/utils/a;->b:Lcom/switfpass/pay/utils/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/switfpass/pay/utils/a;->a:Lcom/switfpass/pay/utils/d0;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/switfpass/pay/utils/d0;->e(Lcom/switfpass/pay/utils/d0;Z)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/a;->b:Lcom/switfpass/pay/utils/g0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
