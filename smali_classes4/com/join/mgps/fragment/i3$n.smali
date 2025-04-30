.class Lcom/join/mgps/fragment/i3$n;
.super Ljava/lang/Object;
.source "MyArchiveFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/i3;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/i3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/i3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    invoke-static {p1}, Lcom/join/mgps/fragment/i3;->N(Lcom/join/mgps/fragment/i3;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goMyAccountLoginActivity(Landroid/content/Context;)V

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    iget p1, p1, Lcom/join/mgps/fragment/i3;->t:I

    const-string v0, "\u8bf7\u9009\u62e9\u5b58\u6863"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    iget-object v2, v2, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CloudListDataBean;

    .line 7
    invoke-virtual {v3}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-virtual {v3}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 8
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->m:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->DownloadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    invoke-static {v0, p1}, Lcom/join/mgps/fragment/i3;->O(Lcom/join/mgps/fragment/i3;Ljava/util/List;)V

    return-void

    .line 13
    :cond_5
    new-instance v0, Lcom/join/mgps/dialog/w;

    iget-object v1, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f12014a

    invoke-direct {v0, v1, v2}, Lcom/join/mgps/dialog/w;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u4e0b\u8f7d\u987b\u77e5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u540e\uff0c\u5c06\u4ee5\u5907\u4efd\u5b58\u6863\u4e3a\u51c6\uff0c\u8986\u76d6\u672c\u5730\u540c\u540d\u5b58\u6863"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->f(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/w;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/fragment/i3$n$c;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/fragment/i3$n$c;-><init>(Lcom/join/mgps/fragment/i3$n;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/w;->e(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/fragment/i3$n$b;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/i3$n$b;-><init>(Lcom/join/mgps/fragment/i3$n;)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->a(Lcom/join/mgps/dialog/w$e;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    new-instance v0, Lcom/join/mgps/fragment/i3$n$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/i3$n$a;-><init>(Lcom/join/mgps/fragment/i3$n;)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/w;->c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/w;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 17
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v2, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    iget-object v2, v2, Lcom/join/mgps/fragment/i3;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CloudListDataBean;

    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/CloudListDataBean;->getIsCheck()I

    move-result v4

    if-ne v4, v1, :cond_7

    invoke-virtual {v3}, Lcom/join/mgps/dto/CloudListDataBean;->getStatus()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_7

    .line 20
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 22
    iget-object p1, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/i3;->showMessage(Ljava/lang/String;)V

    return-void

    .line 23
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    iget-object v0, v0, Lcom/join/mgps/fragment/i3;->H:Lcom/join/mgps/dialog/x0;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x0;->b()V

    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/i3$n;->a:Lcom/join/mgps/fragment/i3;

    new-instance v2, Lcom/join/mgps/fragment/i3$n$d;

    invoke-direct {v2, p0, p1}, Lcom/join/mgps/fragment/i3$n$d;-><init>(Lcom/join/mgps/fragment/i3$n;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/join/mgps/fragment/i3;->q0(Ljava/util/List;ZLcom/join/mgps/fragment/i3$x;)V

    :goto_2
    return-void
.end method
