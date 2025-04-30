.class Lcom/join/mgps/fragment/o3$g;
.super Ljava/lang/Object;
.source "NewArenaMainFragment.java"

# interfaces
.implements Lcom/join/mgps/dialog/h0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o3;->E0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/fragment/o3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o3;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    iput p2, p0, Lcom/join/mgps/fragment/o3$g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/h0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->R(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->R(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(Lcom/join/mgps/dialog/h0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->Q(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->Q(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->Q(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/fragment/o3$g;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {v1}, Lcom/join/mgps/fragment/o3;->U(Lcom/join/mgps/fragment/o3;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vsButton"

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->f2(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->R(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->R(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->Q(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    :cond_1
    iget p1, p0, Lcom/join/mgps/fragment/o3$g;->a:I

    iget-object v0, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {v0}, Lcom/join/mgps/fragment/o3;->Q(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_3

    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->R(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    invoke-static {p1}, Lcom/join/mgps/fragment/o3;->R(Lcom/join/mgps/fragment/o3;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/o3$g;->b:Lcom/join/mgps/fragment/o3;

    iget-object p1, p1, Lcom/join/mgps/fragment/o3;->g:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_3
    return-void
.end method
