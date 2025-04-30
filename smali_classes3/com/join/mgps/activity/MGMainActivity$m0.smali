.class Lcom/join/mgps/activity/MGMainActivity$m0;
.super Landroid/content/BroadcastReceiver;
.source "MGMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MGMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m0"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "lastTime"

    const-string v4, "action"

    const/4 v5, 0x0

    .line 1
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "url"

    const-string v7, "adSdkType"

    const-string v8, "adAction"

    const-string v9, "com.emu.ad.result"

    const-string v10, "gameId"

    const-string v11, "adCount"

    const-string v12, "howTimes"

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-nez v4, :cond_8

    .line 2
    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v3}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "\u8bf7\u8054\u7f51\u540e\u91cd\u8bd5\uff01"

    .line 3
    invoke-static {v0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x8

    .line 6
    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isShowVideo()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 9
    invoke-virtual {v2, v12, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 10
    invoke-virtual {v2, v11, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 11
    invoke-virtual {v2, v7, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 12
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_1

    .line 13
    sget-object v0, Lcom/MApplication;->u0:Lcom/join/mgps/dto/PublicVideoCfgBean;

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isShowVideo()Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v13}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v9, 0x62

    .line 17
    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    sget-object v8, Lcom/MApplication;->u0:Lcom/join/mgps/dto/PublicVideoCfgBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/PublicVideoCfgBean;->getV_switch()I

    move-result v8

    const-string v9, "V_switch"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    sget-object v8, Lcom/MApplication;->u0:Lcom/join/mgps/dto/PublicVideoCfgBean;

    invoke-virtual {v8}, Lcom/join/mgps/dto/PublicVideoCfgBean;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    sget-object v6, Lcom/MApplication;->u0:Lcom/join/mgps/dto/PublicVideoCfgBean;

    invoke-virtual {v6}, Lcom/join/mgps/dto/PublicVideoCfgBean;->getTimes()I

    move-result v6

    const-string v8, "time"

    invoke-virtual {v0, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    invoke-virtual {v0, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 26
    :cond_1
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->arcadeGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 28
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v6

    const-class v7, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;

    invoke-virtual {v6, v0, v7}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;

    if-eqz v0, :cond_7

    if-nez v4, :cond_2

    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getPlay_cfg()Lcom/join/mgps/dto/PlayCfgV2Bean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgV2Bean;->getFirst_random_list()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getPlay_cfg()Lcom/join/mgps/dto/PlayCfgV2Bean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgV2Bean;->getSecond_fixed_list()Ljava/util/ArrayList;

    move-result-object v0

    .line 31
    :goto_0
    iget-object v6, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v6, v0, v5}, Lcom/join/mgps/activity/MGMainActivity;->access$1800(Lcom/join/mgps/activity/MGMainActivity;Ljava/util/List;I)Lcom/join/mgps/dto/PlayCfgBean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v5

    if-ne v5, v14, :cond_4

    .line 33
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v6, v5, Lcom/join/mgps/activity/MGMainActivity;->ttAdVideo:Lcom/join/mgps/ad/m;

    if-nez v6, :cond_3

    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0, v14}, Lcom/join/mgps/activity/MGMainActivity;->initTTAd(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 35
    :cond_3
    invoke-virtual {v6, v5, v2, v3, v4}, Lcom/join/mgps/ad/c;->r(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_1

    .line 36
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v5

    if-ne v5, v13, :cond_6

    .line 37
    iget-object v15, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v5, v15, Lcom/join/mgps/activity/MGMainActivity;->gdtAdVideo:Lcom/join/mgps/ad/e;

    if-nez v5, :cond_5

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v17

    const/16 v21, 0x1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    invoke-virtual/range {v15 .. v21}, Lcom/join/mgps/activity/MGMainActivity;->initGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_1

    .line 39
    :cond_5
    invoke-virtual {v5, v15, v2, v3, v4}, Lcom/join/mgps/ad/c;->r(Landroid/app/Activity;Ljava/lang/String;II)V

    goto :goto_1

    .line 40
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    .line 41
    :cond_7
    :goto_1
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->onAdvert31:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_e

    :cond_8
    if-ne v4, v14, :cond_9

    .line 42
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/join/mgps/Util/IntentUtil;->goVip(Landroid/content/Context;)V

    goto/16 :goto_e

    :cond_9
    const-string v15, ""

    if-ne v4, v13, :cond_1e

    const-string v4, "plugNum"

    .line 43
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 44
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    iget-object v4, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v4, v4, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->arcadeGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v4

    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 46
    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 47
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v6

    const-class v10, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;

    invoke-virtual {v6, v4, v10}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;

    if-eqz v4, :cond_1d

    .line 48
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getSwitch_state()I

    move-result v6

    if-ne v6, v14, :cond_1d

    const-wide/16 v19, 0x0

    .line 49
    new-instance v6, Lcom/papa91/wrapper/UserPrefs;

    invoke-direct {v6, v0}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v10}, Lcom/join/mgps/activity/MGMainActivity;->access$1900(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Lcom/papa91/wrapper/UserPrefs;->getFbaAdGamesConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 52
    :try_start_0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 54
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    goto :goto_2

    .line 55
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 56
    :goto_2
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v0

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    .line 58
    :goto_3
    :try_start_1
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 59
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    .line 60
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 61
    :goto_5
    invoke-static/range {v19 .. v20}, Lcom/join/mgps/Util/x;->t(J)Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 62
    :cond_e
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getSwitch_state()I

    move-result v10

    if-ne v10, v14, :cond_f

    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getDaily_times()I

    move-result v10

    if-ge v0, v10, :cond_f

    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getHow_times()I

    move-result v10

    sub-int/2addr v10, v14

    if-lt v3, v10, :cond_f

    iget-object v10, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v10}, Lcom/join/mgps/activity/MGMainActivity;->access$1900(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/join/mgps/dto/AccountBean;->getVip_level()I

    move-result v10

    if-gtz v10, :cond_f

    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getHow_times()I

    move-result v10

    if-lez v10, :cond_f

    const/4 v10, 0x1

    goto :goto_6

    :cond_f
    const/4 v10, 0x0

    .line 63
    :goto_6
    iget-object v13, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v13}, Lcom/join/mgps/activity/MGMainActivity;->access$2000(Lcom/join/mgps/activity/MGMainActivity;)Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_1c

    const-string v5, "3051121204680401"

    if-nez v0, :cond_15

    .line 64
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getPlay_cfg()Lcom/join/mgps/dto/PlayCfgV2Bean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgV2Bean;->getFirst_random_list()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 65
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_11

    .line 66
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/join/mgps/dto/PlayCfgBean;

    .line 68
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    goto :goto_7

    .line 69
    :cond_10
    invoke-static {v10}, Lcom/join/mgps/ad/g;->b(Ljava/util/List;)I

    move-result v10

    goto :goto_8

    :cond_11
    const/4 v10, 0x0

    .line 70
    :goto_8
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/PlayCfgBean;

    if-eqz v6, :cond_1b

    .line 71
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v10

    const/4 v13, 0x1

    if-ne v10, v13, :cond_12

    .line 73
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v2, v6, v5, v10}, Lcom/join/mgps/activity/MGMainActivity;->initTTAd(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_c

    .line 74
    :cond_12
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v10

    const/4 v13, 0x2

    if-ne v10, v13, :cond_13

    .line 75
    iget-object v10, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v20

    const/16 v25, 0x0

    move-object/from16 v19, v10

    move-object/from16 v21, v5

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v0

    invoke-virtual/range {v19 .. v25}, Lcom/join/mgps/activity/MGMainActivity;->initGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto/16 :goto_b

    .line 76
    :cond_13
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v2

    const/4 v10, 0x3

    if-ne v2, v10, :cond_14

    goto/16 :goto_c

    .line 77
    :cond_14
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    goto/16 :goto_c

    .line 78
    :cond_15
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getPlay_cfg()Lcom/join/mgps/dto/PlayCfgV2Bean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgV2Bean;->getSecond_fixed_list()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 79
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_17

    .line 80
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/join/mgps/dto/PlayCfgBean;

    .line 82
    invoke-virtual {v14}, Lcom/join/mgps/dto/PlayCfgBean;->getProbability()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 83
    :cond_16
    invoke-static {v10}, Lcom/join/mgps/ad/g;->b(Ljava/util/List;)I

    move-result v10

    goto :goto_a

    :cond_17
    const/4 v10, 0x0

    .line 84
    :goto_a
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/mgps/dto/PlayCfgBean;

    if-eqz v6, :cond_1b

    .line 85
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v10

    const/4 v13, 0x1

    if-eq v10, v13, :cond_1a

    const/4 v13, 0x2

    if-eq v10, v13, :cond_19

    const/4 v13, 0x4

    if-eq v10, v13, :cond_18

    goto :goto_c

    :cond_18
    const/4 v13, 0x4

    goto :goto_d

    .line 87
    :cond_19
    iget-object v10, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v20

    const/16 v25, 0x0

    move-object/from16 v19, v10

    move-object/from16 v21, v5

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v0

    invoke-virtual/range {v19 .. v25}, Lcom/join/mgps/activity/MGMainActivity;->initGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    :goto_b
    const/4 v13, 0x2

    goto :goto_d

    .line 88
    :cond_1a
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v6}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v2, v6, v5, v10}, Lcom/join/mgps/activity/MGMainActivity;->initTTAd(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1b
    :goto_c
    const/4 v13, 0x1

    .line 89
    :goto_d
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 90
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x63

    .line 91
    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getTip_text()Ljava/lang/String;

    move-result-object v6

    const-string v8, "content"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "dialogUrl"

    .line 93
    invoke-virtual {v2, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "pic"

    .line 94
    invoke-virtual {v2, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "ad_id"

    .line 95
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getL_btn_text()Ljava/lang/String;

    move-result-object v5

    const-string v6, "btn_l"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getR_btn_text()Ljava/lang/String;

    move-result-object v5

    const-string v6, "btn_r"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getL_btn_url()Ljava/lang/String;

    move-result-object v5

    const-string v6, "btn_url"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {v4}, Lcom/join/mgps/dto/ArcadeGameAdCfgBean;->getDaily_times()I

    move-result v4

    sub-int/2addr v4, v0

    const-string v5, "times"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-virtual {v2, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {v2, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    invoke-virtual {v2, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v2, Lcom/papa/sim/statistic/Event;->showAdvert31:Lcom/papa/sim/statistic/Event;

    new-instance v3, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_e

    .line 105
    :cond_1c
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 106
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x7

    .line 107
    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    iget-object v4, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v4}, Lcom/join/mgps/activity/MGMainActivity;->access$2000(Lcom/join/mgps/activity/MGMainActivity;)Ljava/lang/String;

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/MGMainActivity;->access$1900(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/mgps/dto/AccountBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v6, v2, v4, v3, v0}, Lcom/papa91/wrapper/UserPrefs;->setFbaAdGamesConfig(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_e

    .line 111
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 112
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x7

    .line 113
    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_e

    :cond_1e
    const/4 v3, 0x3

    if-ne v4, v3, :cond_20

    .line 115
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "from"

    const/4 v4, 0x0

    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1f

    .line 117
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-static {v2}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->onMemberAdvert31:Lcom/papa/sim/statistic/Event;

    new-instance v4, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v4}, Lcom/papa/sim/statistic/Ext;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 118
    :cond_1f
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v15, v0}, Lcom/join/mgps/activity/MGMainActivity;->raseVipToMgsim(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_20
    const/4 v3, 0x4

    if-ne v4, v3, :cond_21

    .line 119
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_21
    const/4 v0, 0x6

    if-ne v4, v0, :cond_22

    .line 121
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v2, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/MGMainActivity;->showDownloadVideoAd(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_22
    const/4 v3, 0x7

    if-ne v4, v3, :cond_23

    .line 123
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->showPspVideoAd()V

    goto/16 :goto_e

    :cond_23
    const/16 v0, 0x3e9

    const-string v3, "playCfg"

    if-ne v4, v0, :cond_24

    .line 124
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PlayCfgBean;

    .line 125
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v2, v3, v0}, Lcom/MApplication;->w(Landroid/content/Context;Lcom/join/mgps/dto/PlayCfgBean;)V

    goto/16 :goto_e

    :cond_24
    const/16 v0, 0x3ea

    if-ne v4, v0, :cond_25

    .line 126
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v2, Lcom/MApplication;->q:Lcom/MApplication;

    iget-object v3, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    invoke-virtual {v2, v3, v0}, Lcom/MApplication;->A(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_25
    const/16 v0, 0x3ed

    if-ne v4, v0, :cond_29

    .line 128
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/join/mgps/dto/PlayCfgBean;

    .line 129
    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/4 v4, 0x0

    .line 130
    invoke-virtual {v2, v12, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 131
    invoke-virtual {v2, v11, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    const-string v0, "state"

    .line 132
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v4, "close"

    const/4 v5, 0x1

    .line 133
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v3, :cond_29

    .line 134
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 135
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v0

    if-ne v0, v5, :cond_27

    .line 138
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v4, v0, Lcom/join/mgps/activity/MGMainActivity;->ttGoldAdVideo:Lcom/join/mgps/ad/m;

    if-nez v4, :cond_26

    .line 139
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v28

    const/16 v33, 0x1

    move-object/from16 v26, v0

    move-object/from16 v32, v2

    invoke-virtual/range {v26 .. v33}, Lcom/join/mgps/activity/MGMainActivity;->initGoldTTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Z)V

    goto :goto_e

    :cond_26
    move-object v2, v0

    move-object/from16 v4, v29

    move/from16 v5, v30

    move/from16 v6, v31

    .line 140
    invoke-virtual/range {v2 .. v8}, Lcom/join/mgps/activity/MGMainActivity;->showGoldFingerVideo(Lcom/join/mgps/dto/PlayCfgBean;Ljava/lang/String;IIIZ)V

    goto :goto_e

    .line 141
    :cond_27
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_type()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_29

    .line 142
    iget-object v0, v1, Lcom/join/mgps/activity/MGMainActivity$m0;->a:Lcom/join/mgps/activity/MGMainActivity;

    iget-object v4, v0, Lcom/join/mgps/activity/MGMainActivity;->gdtGoldAdVideo:Lcom/join/mgps/ad/e;

    if-nez v4, :cond_28

    .line 143
    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getSdk_key()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v3}, Lcom/join/mgps/dto/PlayCfgBean;->getAd_id()Ljava/lang/String;

    move-result-object v28

    const/16 v33, 0x1

    move-object/from16 v26, v0

    move-object/from16 v32, v2

    invoke-virtual/range {v26 .. v33}, Lcom/join/mgps/activity/MGMainActivity;->initGoldGDTAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Z)V

    goto :goto_e

    :cond_28
    move-object v2, v0

    move-object/from16 v4, v29

    move/from16 v5, v30

    move/from16 v6, v31

    .line 144
    invoke-virtual/range {v2 .. v8}, Lcom/join/mgps/activity/MGMainActivity;->showGoldFingerVideo(Lcom/join/mgps/dto/PlayCfgBean;Ljava/lang/String;IIIZ)V

    :cond_29
    :goto_e
    return-void
.end method
