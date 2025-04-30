.class Lcom/join/mgps/activity/ModGameIndexActivity$m;
.super Ljava/lang/Object;
.source "ModGameIndexActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/z0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->V1(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/z0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->Z0(Lcom/join/mgps/activity/ModGameIndexActivity;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v2, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->t0:Lcom/join/mgps/dialog/z0;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->Y0(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    move-result v0

    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v3}, Lcom/join/mgps/activity/ModGameIndexActivity;->X0(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/join/mgps/dialog/z0;->C(IZ)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->X0(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    move-result v0

    const/16 v2, 0x2a

    const/16 v3, 0x9

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-eq p1, v3, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->p0:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->e2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    goto/16 :goto_3

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->p0:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->j2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    goto/16 :goto_3

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-eq v0, v3, :cond_6

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto/16 :goto_1

    .line 8
    :cond_3
    :try_start_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-direct {v0, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    const-class v3, Ljava/util/List;

    invoke-virtual {v2, v0, v3}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 11
    sget-object v2, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/MApplication;->z:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    return-void

    :catch_0
    nop

    .line 13
    :cond_4
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-direct {v0, v2}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/join/mgps/activity/ModGameIndexActivity$m$a;

    invoke-direct {v3, p0, p1}, Lcom/join/mgps/activity/ModGameIndexActivity$m$a;-><init>(Lcom/join/mgps/activity/ModGameIndexActivity$m;Lcom/join/mgps/dialog/z0;)V

    const-string v4, "VIRTUAL_SINGLE"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/join/mgps/Util/UtilsMy;->p0(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/activity/arena/GameRoomActivity$x;)V

    goto :goto_2

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->q0:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/ModGameIndexActivity;->e2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    goto :goto_2

    .line 16
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->q0:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/ModGameIndexActivity;->j2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 17
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-nez v0, :cond_7

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->modDownloadTip_install:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dialog/z0;->o()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public b(Lcom/join/mgps/dialog/z0;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dialog/q;->dismiss()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->X0(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0x2a

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/ModGameIndexActivity;->p0:Lcom/join/mgps/dto/GamedetialModleFourBean;

    if-eqz v0, :cond_3

    .line 7
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->V0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->p0:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->e2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/ModGameIndexActivity;->q0:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/ModGameIndexActivity;->e2(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->N0(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v1, Lcom/papa/sim/statistic/Event;->modDownloadTip_exit:Lcom/papa/sim/statistic/Event;

    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/ModGameIndexActivity;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/join/mgps/dialog/z0;->o()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    :cond_3
    :goto_0
    return-void
.end method
