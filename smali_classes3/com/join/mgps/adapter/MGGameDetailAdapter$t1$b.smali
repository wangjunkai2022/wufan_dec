.class Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->a(Lcom/join/mgps/dto/GameVoucherBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    new-instance p1, Lcom/join/mgps/dto/AccountVoucher;

    invoke-direct {p1}, Lcom/join/mgps/dto/AccountVoucher;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/AccountVoucher;->setGame_id(J)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountVoucher;->setGame_name(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/join/mgps/dto/AccountVoucherStatus;

    new-instance v1, Lcom/join/mgps/dto/AccountVoucherStatusBean;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/join/mgps/dto/AccountVoucherStatusBean;-><init>(DI)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dto/AccountVoucherStatus;-><init>(Lcom/join/mgps/dto/AccountVoucherStatusBean;Lcom/join/mgps/dto/AccountVoucherStatusBean;)V

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountVoucher;->setStatus(Lcom/join/mgps/dto/AccountVoucherStatus;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getGame_info_tpl_type()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountVoucher;->setGame_tpl(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->a(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/dto/DetailResultBeanV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBeanV3;->getSp_tpl_two_position()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/AccountVoucher;->setSp_tpl_two_position(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$b;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    iget-object v0, v0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/activity/MyVoucherGameActivity_;->X0(Landroid/content/Context;)Lcom/join/mgps/activity/MyVoucherGameActivity_$j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/MyVoucherGameActivity_$j;->a(Lcom/join/mgps/dto/AccountVoucher;)Lcom/join/mgps/activity/MyVoucherGameActivity_$j;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
