.class Lcom/join/mgps/activity/ModGameIndexActivity$i;
.super Ljava/lang/Object;
.source "ModGameIndexActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->d2(Lcom/join/mgps/dto/ModGameDetailBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 10

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0909eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->T0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/activity/ModGameIndexActivity$x;

    iget v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity$x;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090687

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090acd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity;->T0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/activity/ModGameIndexActivity$x;

    iget v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity$x;->d:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->T0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->T0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;->f:Ljava/lang/String;

    const-string v2, "MOD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "1"

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->changeCloudItTab:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->T0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;->f:Ljava/lang/String;

    const-string v3, "\u6211\u7684\u5b58\u6863"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "2"

    if-eqz v0, :cond_2

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->changeCloudItTab:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->T0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;->f:Ljava/lang/String;

    const-string v4, "\u653b\u7565"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0910b6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f090690

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v4

    sget-object v5, Lcom/papa/sim/statistic/Event;->singleStartGamePageList:Lcom/papa/sim/statistic/Event;

    sget-object v6, Lcom/papa/sim/statistic/Event;->ClickIntroTab:Lcom/papa/sim/statistic/Event;

    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {p1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v8

    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->H:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v9

    const-string v7, ""

    invoke-virtual/range {v4 .. v9}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->changeCloudItTab:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v1, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object p1

    sget-object v0, Lcom/papa/sim/statistic/Event;->changeCloudItTab:Lcom/papa/sim/statistic/Event;

    new-instance v1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0909eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080079

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090687

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090acd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity;->T0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/activity/ModGameIndexActivity$x;

    iget v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity$x;->a:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->T0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$i;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->T0:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity$x;->f:Ljava/lang/String;

    const-string v2, "\u653b\u7565"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090690

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
