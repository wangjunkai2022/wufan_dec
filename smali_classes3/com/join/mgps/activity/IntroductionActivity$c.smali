.class Lcom/join/mgps/activity/IntroductionActivity$c;
.super Ljava/lang/Object;
.source "IntroductionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/IntroductionActivity;->d1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/IntroductionActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/IntroductionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->a:Lcom/join/mgps/activity/IntroductionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->a:Lcom/join/mgps/activity/IntroductionActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/IntroductionActivity;->t0:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->a:Lcom/join/mgps/activity/IntroductionActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    sget-object v3, Lcom/papa/sim/statistic/Event;->ClickBrowser:Lcom/papa/sim/statistic/Event;

    new-instance p1, Lcom/papa/sim/statistic/Ext;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->a:Lcom/join/mgps/activity/IntroductionActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->a:Lcom/join/mgps/activity/IntroductionActivity;

    iget v0, v0, Lcom/join/mgps/activity/IntroductionActivity;->z:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v5

    new-instance p1, Lcom/papa/sim/statistic/Data;

    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->a:Lcom/join/mgps/activity/IntroductionActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/IntroductionActivity;->D:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcom/papa/sim/statistic/Data;->setGameId(J)Lcom/papa/sim/statistic/Data;

    move-result-object v6

    const-string v4, ""

    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/p;->m1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->a:Lcom/join/mgps/activity/IntroductionActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/IntroductionActivity;->I:Lcom/join/mgps/dto/BbsDetailBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getSourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/IntroductionActivity;->j1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
