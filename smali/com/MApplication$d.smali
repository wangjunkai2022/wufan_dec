.class Lcom/MApplication$d;
.super Ljava/lang/Object;
.source "MApplication.java"

# interfaces
.implements Lcom/papa91/arc/CContext$IVideoAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MApplication;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/join/mgps/dto/PlayCfgBean;

.field b:Lcom/join/mgps/dto/PlayCfgBean;

.field c:Landroid/content/SharedPreferences;

.field d:J

.field e:Lcom/join/mgps/dialog/x1;

.field f:I

.field g:I

.field h:J

.field i:Z

.field j:Z

.field final synthetic k:Lcom/MApplication;


# direct methods
.method constructor <init>(Lcom/MApplication;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/MApplication$d;->k:Lcom/MApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PrefDef"

    const/4 v1, 0x4

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/MApplication$d;->c:Landroid/content/SharedPreferences;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/MApplication$d;->d:J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/MApplication$d;->f:I

    .line 5
    iput p1, p0, Lcom/MApplication$d;->g:I

    .line 6
    iput-wide v0, p0, Lcom/MApplication$d;->h:J

    .line 7
    iput-boolean p1, p0, Lcom/MApplication$d;->i:Z

    .line 8
    iput-boolean p1, p0, Lcom/MApplication$d;->j:Z

    return-void
.end method


# virtual methods
.method public loadAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    const-string v1, "FC"

    .line 2
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "GBA"

    const-string v4, "PSP"

    const-string v5, "FBA"

    const-string v6, ""

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/MApplication$d;->c:Landroid/content/SharedPreferences;

    const-string v7, "simulator_fc_cfg"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/MApplication$d;->c:Landroid/content/SharedPreferences;

    const-string v7, "simulator_jj_cfg"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/MApplication$d;->c:Landroid/content/SharedPreferences;

    const-string v7, "simulator_psp_cfg"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    iget-object v2, p0, Lcom/MApplication$d;->c:Landroid/content/SharedPreferences;

    const-string v7, "simulator_gba_cfg"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v6

    .line 10
    :goto_0
    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 11
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v7

    const-class v8, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    invoke-virtual {v7, v2, v8}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    goto :goto_1

    :cond_4
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_10

    .line 12
    invoke-virtual {v2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getSwitch_state()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    .line 13
    iget-object v7, p0, Lcom/MApplication$d;->c:Landroid/content/SharedPreferences;

    const-string v9, "simulator_play_records"

    invoke-interface {v7, v9, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-static {v7}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 15
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v10

    const-class v11, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    invoke-virtual {v10, v7, v11}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    if-eqz v7, :cond_6

    .line 16
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getRecord_time()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/MApplication$d;->d:J

    .line 17
    invoke-static {v10, v11}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v10

    if-nez v10, :cond_6

    .line 18
    iget-object v7, p0, Lcom/MApplication$d;->c:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    move-object v7, v0

    :cond_6
    if-nez v7, :cond_7

    .line 19
    new-instance v7, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    invoke-direct {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;-><init>()V

    .line 20
    :cond_7
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 21
    :cond_8
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 22
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_fc_cfg()Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-virtual {v7, v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    move-result-object p2

    :goto_2
    move-object v12, v0

    move-object v0, p2

    move-object p2, v12

    goto :goto_3

    .line 24
    :cond_9
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 25
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_jj_cfg()Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-virtual {v7, v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    move-result-object p2

    goto :goto_2

    .line 27
    :cond_a
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 28
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_gba_cfg()Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-virtual {v7, v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    move-result-object p2

    goto :goto_2

    .line 30
    :cond_b
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 31
    invoke-virtual {v7}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_psp_cfg()Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-virtual {v7, v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    move-result-object p2

    goto :goto_2

    :cond_c
    move-object p2, v0

    :goto_3
    if-eqz v0, :cond_d

    .line 33
    invoke-virtual {v2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->getAdType()I

    move-result v0

    invoke-virtual {v2, p2, v0}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlayCfgBean(Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;

    move-result-object p2

    iput-object p2, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    if-nez p2, :cond_e

    .line 34
    invoke-virtual {v2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlayCfgBean(Ljava/util/List;)Lcom/join/mgps/dto/PlayCfgBean;

    move-result-object p2

    iput-object p2, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    goto :goto_4

    .line 35
    :cond_d
    invoke-virtual {v2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlayCfgBean(Ljava/util/List;Ljava/util/List;)Lcom/join/mgps/dto/PlayCfgBean;

    move-result-object p2

    iput-object p2, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    .line 36
    :cond_e
    :goto_4
    iget-object p2, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    if-eqz p2, :cond_10

    .line 37
    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result p2

    if-ne p2, v8, :cond_f

    .line 38
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.tools.AdBroadcast"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    const-string v0, "playCfg"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p2, 0x3e9

    const-string v0, "action"

    .line 40
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    iget-object p2, p0, Lcom/MApplication$d;->k:Lcom/MApplication;

    invoke-virtual {p2, p1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5

    .line 42
    :cond_f
    iget-object p2, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    invoke-virtual {p2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_10

    .line 43
    iget-object p2, p0, Lcom/MApplication$d;->k:Lcom/MApplication;

    iget-object v0, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    invoke-virtual {p2, p1, v0}, Lcom/MApplication;->v(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    :cond_10
    :goto_5
    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/MApplication$d;->c:Landroid/content/SharedPreferences;

    const-string v1, "simulator_play_records"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    const-class v4, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    invoke-virtual {v2, v0, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/join/mgps/dto/SimulatorAdPlayConfig;

    invoke-direct {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;-><init>()V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->setRecord_time(J)V

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    if-eqz v2, :cond_c

    const-string v2, "FC"

    .line 7
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_fc_cfg()Ljava/util/List;

    move-result-object p3

    iget-object v2, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v2

    invoke-virtual {v0, p3, v2}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;I)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_fc_cfg()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_2

    .line 10
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->setSimulator_fc_cfg(Ljava/util/List;)V

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_fc_cfg()Ljava/util/List;

    move-result-object p3

    goto/16 :goto_1

    :cond_3
    const-string v2, "FBA"

    .line 12
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_jj_cfg()Ljava/util/List;

    move-result-object p3

    iget-object v2, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v2

    invoke-virtual {v0, p3, v2}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;I)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    move-result-object v3

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_jj_cfg()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_4

    .line 15
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->setSimulator_jj_cfg(Ljava/util/List;)V

    .line 16
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_jj_cfg()Ljava/util/List;

    move-result-object p3

    goto :goto_1

    :cond_5
    const-string v2, "GBA"

    .line 17
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_gba_cfg()Ljava/util/List;

    move-result-object p3

    iget-object v2, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v2

    invoke-virtual {v0, p3, v2}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;I)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    move-result-object v3

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_gba_cfg()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_6

    .line 20
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->setSimulator_gba_cfg(Ljava/util/List;)V

    .line 21
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_gba_cfg()Ljava/util/List;

    move-result-object p3

    goto :goto_1

    :cond_7
    const-string v2, "PSP"

    .line 22
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_psp_cfg()Ljava/util/List;

    move-result-object p3

    iget-object v2, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v2

    invoke-virtual {v0, p3, v2}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getPlayConfig(Ljava/util/List;I)Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    move-result-object v3

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_psp_cfg()Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_8

    .line 25
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p3}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->setSimulator_psp_cfg(Ljava/util/List;)V

    .line 26
    :cond_8
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAdPlayConfig;->getSimulator_psp_cfg()Ljava/util/List;

    move-result-object p3

    goto :goto_1

    :cond_9
    move-object p3, v3

    :goto_1
    const/4 v2, 0x1

    if-nez v3, :cond_a

    .line 27
    new-instance v3, Lcom/join/mgps/dto/SimulatorAdPlayRecord;

    iget-object v4, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    invoke-virtual {v4}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v4

    iget-object v5, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    invoke-virtual {v5}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {v3, v4, v2, v5}, Lcom/join/mgps/dto/SimulatorAdPlayRecord;-><init>(III)V

    .line 28
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 29
    :cond_a
    invoke-virtual {v3}, Lcom/join/mgps/dto/SimulatorAdPlayRecord;->add()V

    .line 30
    :goto_2
    iget-object p3, p0, Lcom/MApplication$d;->c:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-static {v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    iget-object p3, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    invoke-virtual {p3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result p3

    if-ne p3, v2, :cond_b

    .line 32
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.tools.AdBroadcast"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "gameId"

    .line 33
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x3ea

    const-string p3, "action"

    .line 34
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    iget-object p2, p0, Lcom/MApplication$d;->k:Lcom/MApplication;

    invoke-virtual {p2, p1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 36
    :cond_b
    iget-object p3, p0, Lcom/MApplication$d;->a:Lcom/join/mgps/dto/PlayCfgBean;

    invoke-virtual {p3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_c

    .line 37
    iget-object p3, p0, Lcom/MApplication$d;->k:Lcom/MApplication;

    iget-object p3, p3, Lcom/MApplication;->n:Lcom/join/mgps/ad/d;

    if-eqz p3, :cond_c

    .line 38
    invoke-virtual {p3, p1, p2}, Lcom/join/mgps/ad/c;->q(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public showGoldAdDialog(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "adCount"

    const-string v3, "howTimes"

    const-string v4, "lastTime"

    .line 1
    iget-object v5, v1, Lcom/MApplication$d;->c:Landroid/content/SharedPreferences;

    const-string v6, "simulator_gold_finger_cfg"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "extras"

    const-string v9, "close"

    const-string v10, "state"

    const-string v12, "adAction"

    const-string v13, "com.emu.ad.result"

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    .line 3
    invoke-static {v5}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v6

    const-class v14, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    invoke-virtual {v6, v5, v14}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/join/mgps/dto/SimulatorAdCfgBean;

    :cond_0
    if-eqz v6, :cond_10

    .line 5
    invoke-virtual {v6}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getSwitch_state()I

    move-result v5

    const/4 v14, 0x1

    if-ne v5, v14, :cond_10

    .line 6
    new-instance v5, Lcom/papa91/wrapper/UserPrefs;

    sget-object v15, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-direct {v5, v15}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 7
    sget-object v15, Lcom/MApplication;->q:Lcom/MApplication;

    invoke-static {v15}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v15

    invoke-virtual {v15}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v15

    .line 8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v2, v11}, Lcom/papa91/wrapper/UserPrefs;->getGoldFingerAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-static {v11}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v16, v5

    if-eqz v14, :cond_4

    .line 10
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 12
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v6

    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/MApplication$d;->h:J

    goto :goto_0

    :cond_1
    move-object v11, v6

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/MApplication$d;->h:J

    .line 14
    :goto_0
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/MApplication$d;->g:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 16
    iput v3, v1, Lcom/MApplication$d;->g:I

    .line 17
    :goto_1
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/MApplication$d;->f:I

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 19
    iput v3, v1, Lcom/MApplication$d;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v11, v6

    .line 20
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    move-object v11, v6

    .line 21
    :goto_3
    iget-wide v3, v1, Lcom/MApplication$d;->h:J

    invoke-static {v3, v4}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v3, 0x0

    .line 22
    iput v3, v1, Lcom/MApplication$d;->f:I

    .line 23
    iput v3, v1, Lcom/MApplication$d;->g:I

    .line 24
    :cond_5
    iget v0, v1, Lcom/MApplication$d;->f:I

    invoke-virtual {v11}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getDaily_times()I

    move-result v3

    if-ge v0, v3, :cond_8

    iget v0, v1, Lcom/MApplication$d;->g:I

    invoke-virtual {v11}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getShow_times()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_6

    invoke-virtual {v15}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v0

    if-gtz v0, :cond_6

    iget v0, v1, Lcom/MApplication$d;->g:I

    invoke-virtual {v11}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getShow_times()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v0, v4

    invoke-virtual {v11}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getInterval_times()I

    move-result v3

    rem-int/2addr v0, v3

    if-nez v0, :cond_6

    invoke-virtual {v11}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getShow_times()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    iget v0, v1, Lcom/MApplication$d;->g:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {v11}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getShow_times()I

    move-result v3

    if-lt v0, v3, :cond_8

    iget v0, v1, Lcom/MApplication$d;->f:I

    if-gtz v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, v1, Lcom/MApplication$d;->i:Z

    if-eqz v0, :cond_f

    .line 25
    iget v0, v1, Lcom/MApplication$d;->f:I

    if-nez v0, :cond_b

    .line 26
    invoke-virtual {v11}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getPlay_cfg()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/PlayCfgBean;

    .line 30
    invoke-virtual {v5}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 31
    :cond_9
    invoke-static {v3}, Lcom/join/mgps/ad/g;->b(Ljava/util/List;)I

    move-result v3

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 32
    :goto_6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    iput-object v0, v1, Lcom/MApplication$d;->b:Lcom/join/mgps/dto/PlayCfgBean;

    .line 33
    invoke-virtual {v11}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getOpen_cfg()Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    move-result-object v0

    const/4 v3, 0x0

    .line 34
    iput-boolean v3, v1, Lcom/MApplication$d;->j:Z

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v11}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getUn_play_cfg()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 37
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/dto/PlayCfgBean;

    .line 39
    invoke-virtual {v5}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 40
    :cond_c
    invoke-static {v3}, Lcom/join/mgps/ad/g;->b(Ljava/util/List;)I

    move-result v5

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    .line 41
    :goto_8
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    iput-object v0, v1, Lcom/MApplication$d;->b:Lcom/join/mgps/dto/PlayCfgBean;

    .line 42
    invoke-virtual {v11}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getUn_open_cfg()Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;

    move-result-object v0

    const/4 v3, 0x1

    .line 43
    iput-boolean v3, v1, Lcom/MApplication$d;->j:Z

    .line 44
    :goto_9
    iget-object v3, v1, Lcom/MApplication$d;->e:Lcom/join/mgps/dialog/x1;

    if-eqz v3, :cond_e

    .line 45
    invoke-virtual {v3}, Lcom/join/mgps/dialog/x1;->dismiss()V

    .line 46
    :cond_e
    new-instance v3, Lcom/join/mgps/dialog/x1;

    iget-boolean v4, v1, Lcom/MApplication$d;->j:Z

    move-object/from16 v5, p1

    invoke-direct {v3, v5, v0, v4}, Lcom/join/mgps/dialog/x1;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/SimulatorGoldAdCfgBean;Z)V

    iput-object v3, v1, Lcom/MApplication$d;->e:Lcom/join/mgps/dialog/x1;

    .line 47
    new-instance v0, Lcom/MApplication$d$a;

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v4, v15}, Lcom/MApplication$d$a;-><init>(Lcom/MApplication$d;Ljava/lang/String;ILcom/join/mgps/dto/AccountBean;)V

    invoke-virtual {v3, v0}, Lcom/join/mgps/dialog/x1;->d(Lcom/join/mgps/dialog/x1$a;)V

    .line 48
    iget-object v0, v1, Lcom/MApplication$d;->e:Lcom/join/mgps/dialog/x1;

    invoke-virtual {v0, v2}, Lcom/join/mgps/dialog/x1;->c(Ljava/lang/String;)V

    .line 49
    iget-object v0, v1, Lcom/MApplication$d;->e:Lcom/join/mgps/dialog/x1;

    invoke-virtual {v0}, Lcom/join/mgps/dialog/x1;->show()V

    goto/16 :goto_a

    :cond_f
    move/from16 v4, p3

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x3ef

    .line 52
    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 54
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-boolean v4, v1, Lcom/MApplication$d;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v3}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v3, v1, Lcom/MApplication$d;->k:Lcom/MApplication;

    invoke-virtual {v3, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    iget v0, v1, Lcom/MApplication$d;->f:I

    invoke-virtual {v11}, Lcom/join/mgps/dto/SimulatorAdCfgBean;->getDaily_times()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v3, v1, Lcom/MApplication$d;->g:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iget v4, v1, Lcom/MApplication$d;->f:I

    move-object/from16 v5, v16

    invoke-virtual {v5, v2, v0, v3, v4}, Lcom/papa91/wrapper/UserPrefs;->setGoldFingerAdGamesConfig(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_a

    :cond_10
    move/from16 v4, p3

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3ef

    .line 62
    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v2, v1, Lcom/MApplication$d;->k:Lcom/MApplication;

    invoke-virtual {v2, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a

    :cond_11
    move/from16 v4, p3

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x3ef

    .line 70
    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object v2, v1, Lcom/MApplication$d;->k:Lcom/MApplication;

    invoke-virtual {v2, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_12
    :goto_a
    return-void
.end method
