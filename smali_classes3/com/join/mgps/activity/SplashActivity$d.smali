.class Lcom/join/mgps/activity/SplashActivity$d;
.super Ll1/m;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SplashActivity;->t(Ljava/lang/String;Lcom/join/mgps/dto/ShowViewDataBean;Lcom/join/mgps/dto/SplashIntentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/SplashIntentBean;

.field final synthetic b:Lcom/join/mgps/dto/ShowViewDataBean;

.field final synthetic c:Lcom/join/mgps/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SplashActivity;Lcom/join/mgps/dto/SplashIntentBean;Lcom/join/mgps/dto/ShowViewDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/SplashActivity$d;->a:Lcom/join/mgps/dto/SplashIntentBean;

    iput-object p3, p0, Lcom/join/mgps/activity/SplashActivity$d;->b:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-direct {p0}, Ll1/m;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs J(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SplashActivity;->b:Lcom/join/android/app/component/video/EmptyControlVideoView;

    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p2, Lcom/join/mgps/activity/SplashActivity;->u:I

    .line 3
    invoke-static {p2}, Lcom/join/mgps/activity/SplashActivity;->c(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/SplashActivity;->c(Lcom/join/mgps/activity/SplashActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public varargs b0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SplashActivity$d;->a:Lcom/join/mgps/dto/SplashIntentBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SplashIntentBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$d;->b:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/ShowViewDataBean;->getIs_force()Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x2

    const-string v1, ""

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$d;->b:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ShowViewDataBean;->setTag_show(I)V

    .line 4
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object p2

    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity$d;->b:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ShowViewDataBean;->getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    move-result-object v2

    invoke-virtual {p2, v2}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    iget-object p2, p2, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {p2}, Lcom/join/mgps/pref/PrefDef_;->lastClickPageAD()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/SplashActivity$d;->b:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/ShowViewDataBean;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/SplashActivity;->e(Lcom/join/mgps/activity/SplashActivity;)Z

    move-result p2

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v2}, Lcom/join/mgps/pref/PrefDef_;->isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    new-instance v2, Lcom/papa/sim/statistic/e;

    iget-object v3, p0, Lcom/join/mgps/activity/SplashActivity$d;->a:Lcom/join/mgps/dto/SplashIntentBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/SplashIntentBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/join/mgps/activity/SplashActivity$d;->a:Lcom/join/mgps/dto/SplashIntentBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/join/mgps/activity/SplashActivity$d;->a:Lcom/join/mgps/dto/SplashIntentBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "spreadButton"

    invoke-direct {v2, v3, v5, v4, v1}, Lcom/papa/sim/statistic/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p2, v2, v1}, Lcom/join/mgps/activity/SplashActivity;->f(Lcom/join/mgps/activity/SplashActivity;Lcom/papa/sim/statistic/e;Z)V

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity$d;->b:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/ShowViewDataBean;->getStrategy_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/activity/SplashActivity$d;->a:Lcom/join/mgps/dto/SplashIntentBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/SplashIntentBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity$d;->a:Lcom/join/mgps/dto/SplashIntentBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/SplashIntentBean;->getJump_id()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->onclickScreenAds:Lcom/papa/sim/statistic/Event;

    new-instance v4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v4, p2}, Lcom/papa/sim/statistic/Ext;->setNodeId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 11
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$d;->a:Lcom/join/mgps/dto/SplashIntentBean;

    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/SplashIntentBean;->setTag_show(I)V

    .line 12
    invoke-static {}, Ln1/i0;->n()Ln1/i0;

    move-result-object p2

    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$d;->b:Lcom/join/mgps/dto/ShowViewDataBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/ShowViewDataBean;->getShowVieDatabeanTable()Lcom/join/mgps/db/tables/ShowViewDataBeanTable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lg1/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p2, v1}, Lcom/join/mgps/activity/SplashActivity;->b(Lcom/join/mgps/activity/SplashActivity;Z)Z

    .line 14
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    invoke-static {p2}, Lcom/join/mgps/activity/SplashActivity;->e(Lcom/join/mgps/activity/SplashActivity;)Z

    move-result p2

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/SplashActivity;->f:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 16
    iget-object p2, p0, Lcom/join/mgps/activity/SplashActivity$d;->c:Lcom/join/mgps/activity/SplashActivity;

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/SplashActivity;->A(Lcom/join/mgps/Util/IntentDateBean;)V

    return-void
.end method

.method public varargs q(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Ll1/m;->q(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/SplashActivity$d;->b0(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
