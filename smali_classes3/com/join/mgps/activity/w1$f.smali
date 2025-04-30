.class Lcom/join/mgps/activity/w1$f;
.super Ljava/lang/Object;
.source "MyGamePapaFragment.java"

# interfaces
.implements Lcom/join/mgps/Util/z$n0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/w1;->m1(Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/OnlineCouponConfigBean;

.field final synthetic b:Lcom/join/mgps/activity/w1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/w1;Lcom/join/mgps/dto/OnlineCouponConfigBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/w1$f;->b:Lcom/join/mgps/activity/w1;

    iput-object p2, p0, Lcom/join/mgps/activity/w1$f;->a:Lcom/join/mgps/dto/OnlineCouponConfigBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/w1$f;->a:Lcom/join/mgps/dto/OnlineCouponConfigBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/OnlineCouponConfigBean;->isTabSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/w1$f;->b:Lcom/join/mgps/activity/w1;

    invoke-static {v0}, Lcom/join/mgps/activity/w1;->h0(Lcom/join/mgps/activity/w1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/w1$f;->b:Lcom/join/mgps/activity/w1;

    iget-object v0, v0, Lcom/join/mgps/activity/w1;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/w1$f;->a:Lcom/join/mgps/dto/OnlineCouponConfigBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/OnlineCouponConfigBean;->getTabHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/w1$f;->b:Lcom/join/mgps/activity/w1;

    iget-object v0, v0, Lcom/join/mgps/activity/w1;->s:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/w1$f;->b:Lcom/join/mgps/activity/w1;

    invoke-static {v0}, Lcom/join/mgps/activity/w1;->i0(Lcom/join/mgps/activity/w1;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->tabStartViewSuccessTips:Lcom/papa/sim/statistic/Event;

    iget-object v2, p0, Lcom/join/mgps/activity/w1$f;->b:Lcom/join/mgps/activity/w1;

    invoke-static {v2}, Lcom/join/mgps/activity/w1;->i0(Lcom/join/mgps/activity/w1;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/p;->M1(Lcom/papa/sim/statistic/Event;I)V

    :cond_0
    return-void
.end method
