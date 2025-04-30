.class final Lcom/switfpass/pay/utils/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/d0;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/z;->a:Lcom/switfpass/pay/utils/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/switfpass/pay/utils/z;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {p1}, Lcom/switfpass/pay/utils/d0;->m(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/bean/RequestMsg;

    move-result-object p1

    invoke-static {}, Lcom/switfpass/pay/utils/d0;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/bean/RequestMsg;->P(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/switfpass/pay/utils/z;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {p1}, Lcom/switfpass/pay/utils/d0;->m(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/bean/RequestMsg;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/switfpass/pay/utils/d0;->F(Lcom/switfpass/pay/bean/RequestMsg;)V

    return-void
.end method
