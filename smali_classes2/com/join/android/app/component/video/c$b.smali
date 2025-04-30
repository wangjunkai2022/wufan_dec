.class Lcom/join/android/app/component/video/c$b;
.super Ljava/lang/Object;
.source "MyListViewVideoHelper.java"

# interfaces
.implements Lcom/join/android/app/component/video/StandardVideoView$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/video/c;->x(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/android/app/component/video/c;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/video/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/c$b;->c:Lcom/join/android/app/component/video/c;

    iput-object p2, p0, Lcom/join/android/app/component/video/c$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/join/android/app/component/video/c$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/c$b;->c:Lcom/join/android/app/component/video/c;

    iget-object v1, v0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/c$k;

    iget-object v0, v0, Lcom/join/android/app/component/video/c$k;->d:Lcom/join/mgps/Util/IntentDateBean;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isInPlayingState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/video/c$b;->a:Landroid/content/Context;

    check-cast v1, Lcom/BaseAppCompatActivity;

    .line 4
    invoke-static {p1}, Lcom/join/android/app/component/video/f;->f(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 5
    iget-object v2, p0, Lcom/join/android/app/component/video/c$b;->c:Lcom/join/android/app/component/video/c;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/join/android/app/component/video/c;->e:Z

    .line 6
    invoke-virtual {p1}, Lcom/join/android/app/component/video/StandardVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/papa/gsyvideoplayer/video/base/a;->i(Lc2/a;)V

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v4

    invoke-static {v1, p1, v2, v3, v4}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->startTActivity(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ZLcom/join/mgps/dto/ExtBean;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/join/android/app/component/video/c$b;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getVolcanoOther()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "home"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    iget-object v3, p0, Lcom/join/android/app/component/video/c$b;->c:Lcom/join/android/app/component/video/c;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/psk/eventmodule/Event;->click:Lcom/psk/eventmodule/Event;

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getRecPosition()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/Util/IntentDateBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p1

    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getVolcanoOther()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    invoke-virtual {p1, v0, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Lcom/psk/eventmodule/StatFactory$VolcanoOther;

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->isOnlineGame()Z

    move-result v9

    .line 17
    invoke-static/range {v3 .. v9}, Lcom/join/android/app/component/video/c;->a(Lcom/join/android/app/component/video/c;Landroid/content/Context;Lcom/psk/eventmodule/Event;Ljava/lang/String;Ljava/lang/String;Lcom/psk/eventmodule/StatFactory$VolcanoOther;Z)V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/c$b;->a:Landroid/content/Context;

    instance-of p1, p1, Lcom/join/mgps/activity/MGMainActivity;

    if-eqz p1, :cond_3

    const-string p1, "PapaMainAdapter"

    iget-object v0, p0, Lcom/join/android/app/component/video/c$b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/join/android/app/component/video/c$b;->a:Landroid/content/Context;

    check-cast p1, Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, p0, Lcom/join/android/app/component/video/c$b;->c:Lcom/join/android/app/component/video/c;

    iget-object v1, v0, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/c;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/c$k;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->setPapaMainFragmentLastPosition(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/join/android/app/component/video/c$b;->c:Lcom/join/android/app/component/video/c;

    iget-object v0, p1, Lcom/join/android/app/component/video/c;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/android/app/component/video/c;->t()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/android/app/component/video/c$k;

    invoke-virtual {v0}, Lcom/join/android/app/component/video/c$k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/android/app/component/video/c;->b(Lcom/join/android/app/component/video/c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
