.class public final Lcom/join/mgps/pref/PrefDef_;
.super Lorg/androidannotations/api/sharedpreferences/n;
.source "PrefDef_.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/pref/PrefDef_$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "PrefDef"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/androidannotations/api/sharedpreferences/n;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public DownloadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "DownloadRecoderNotice"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public DownloadRecoderNoticeMarcket()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "DownloadRecoderNoticeMarcket"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public FirstShowMYgameTopTip()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "FirstShowMYgameTopTip"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public Member_id()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "Member_id"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public Member_name()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "Member_name"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public PaBiData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "PaBiData"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public accountData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "accountData"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public accountDataV2()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "accountDataV2"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public accountDataV3()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "accountDataV3"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public accountLoginToken()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "accountLoginToken"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public accountLoginUID()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "accountLoginUID"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public adIdArc()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "adIdArc"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public adIdCommonH()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "adIdCommonH"

    const-string v1, "919681372"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public adIdCommonV()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "adIdCommonV"

    const-string v1, "919681774"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public adIdDownloadSpeedUp()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "adIdDownloadSpeedUp"

    const-string v1, "919681084"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public adIdPsp()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "adIdPsp"

    const-string v1, "919681132"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public addedShortcutGames()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "addedShortcutGames"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public androidIdNullsKey()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "androidIdNullsKey"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public annonunceWhenDownload()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "annonunceWhenDownload"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public anti_addiction_switch()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "anti_addiction_switch"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public apName()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "apName"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public arcadeGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "arcadeGameAdCfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public arenaDialogAdData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "arenaDialogAdData"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public autoLogin()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "autoLogin"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public battleWelcomeIn()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "battleWelcomeIn"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public changeNickNameNotice()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "changeNickNameNotice"

    const-string v1, "\u6d88\u8017\u94dc\u677f\u66f4\u6539\u6635\u79f0"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public classFyFirstOpen()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "classFyFirstOpen"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public clickFloatViewTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "clickFloatViewTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public cloudVipLink()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "cloudVipLink"

    const-string v1, "http://anv3btapi.5fun.com/user/activity/cloud_archive"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public commentToken()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "commentToken"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public commentnoticeTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "commentnoticeTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public community_entrance_title()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "community_entrance_title"

    const-string v1, "\u53bb\u793e\u533a\u770b\u770b"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public continueOnWifi()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "continueOnWifi"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public defaultSearchKeyword()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "defaultSearchKeyword"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public downloadPath()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "downloadPath"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public downloadSpeedUpCount()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "downloadSpeedUpCount"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public downloadSpeedUpCountAD()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "downloadSpeedUpCountAD"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public downloadSpeedUpCountCurrent()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "downloadSpeedUpCountCurrent"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public downloadSpeedUpCountCurrentAD()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "downloadSpeedUpCountCurrentAD"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public downloadSpeedUpGameSize()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "downloadSpeedUpGameSize"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public downloadSpeedUpGames()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "downloadSpeedUpGames"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public downloadSpeedUpLastTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "downloadSpeedUpLastTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public downloadSpeedupCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "downloadSpeedupCfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public download_game_switch()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "download_game_switch"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/join/mgps/pref/PrefDef_$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_$a;

    invoke-virtual {p0}, Lorg/androidannotations/api/sharedpreferences/n;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_$a;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method

.method public emuApkTableList()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "emuApkTableList"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public emulatorCheckpointUrl()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "emulatorCheckpointUrl"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public emulatorGoldenFingerUrl()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "emulatorGoldenFingerUrl"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public emulatorOneSkillUrl()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "emulatorOneSkillUrl"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public emulatorStartAdCount()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "emulatorStartAdCount"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public fightWifiInputIP()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "fightWifiInputIP"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public firstArena()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "firstArena"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public firstArenaFilterVisit()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "firstArenaFilterVisit"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public firstClickShoubing()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "firstClickShoubing"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public firstClickUsericon()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "firstClickUsericon"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public firstInstallAppCompanyDialog()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "firstInstallAppCompanyDialog"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public firstIntentgamedetialVideo()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "firstIntentgamedetialVideo"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public firstNewSplash()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "firstNewSplash"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public firstNewSplashV2()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "firstNewSplashV2"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "firstShowUserPermiss"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public forumFirstClickUsericon()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "forumFirstClickUsericon"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public gameHasFeedBack()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "gameHasFeedBack"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public gameTimeLvCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "gameTimeLvCfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public gameTopAd()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "gameTopAd"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public gameTypeList()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "gameTypeList"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public gameWorldActive()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "gameWorldActive"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public gameWorldGradeList()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "gameWorldGradeList"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public gameWorldWorshipTop()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "gameWorldWorshipTop"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public getArchiveCoinPref()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "getArchiveCoinPref"

    const/16 v1, 0x14

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public getLastPayType()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "getLastPayType"

    const-string v1, "alipaymobilesign"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public gprsIsOpen()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "gprsIsOpen"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public gprsNoticeInfo()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "gprsNoticeInfo"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public hasShowAdInfo()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "hasShowAdInfo"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public hasShowMiniGameBadge()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "hasShowMiniGameBadge"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public hasShowModInstallGames()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "hasShowModInstallGames"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public hideGameTopAd()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "hideGameTopAd"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public homeAllData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "homeAllData"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public homeAllDataV3()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "homeAllDataV3"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public homeFastThe_new()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "homeFastThe_new"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public homeFastTopic()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "homeFastTopic"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public homeFastWillpay()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "homeFastWillpay"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public homePopupAdCount()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "homePopupAdCount"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public homePopupAdLast()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "homePopupAdLast"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public homePopupAdLastTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "homePopupAdLastTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public insatllAppFirst()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "insatllAppFirst"

    const/4 v1, -0x8

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public insatllAppFirstData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "insatllAppFirstData"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public installApplastNoticeTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "installApplastNoticeTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public isAcActived()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isAcActived"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isAutoWifiDownUpdate()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isAutoWifiDownUpdate"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isCanShowAddShortcut()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isCanShowAddShortcut"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFcActived()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFcActived"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFightActivity()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFightActivity"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFirst35()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFirst35"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFirstClickClassify()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFirstClickClassify"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFirstCommendVersion()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFirstCommendVersion"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFirstCouldShowPopw()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFirstCouldShowPopw"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFirstCustomApk()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFirstCustomApk"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFirstLocalShowPopw()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFirstLocalShowPopw"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFirstRemeShowPopw()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFirstRemeShowPopw"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFirstRun()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFirstRun"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFirstRunApkBackup()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFirstRunApkBackup"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFirstRunApkBackupLong()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "isFirstRunApkBackupLong"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public isFirstRunGameCarefullyLong()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "isFirstRunGameCarefullyLong"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public isFirstRunRecomeWifi()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFirstRunRecomeWifi"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isFirstbuyShowPopw()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isFirstbuyShowPopw"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isHideAdBlock()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isHideAdBlock"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isLogin()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isLogin"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isNewFinishedGame()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isNewFinishedGame"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isNoShowAddShortcut()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "isNoShowAddShortcut"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public isOnlyWifiReconnect()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isOnlyWifiReconnect"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isReloadClassify()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isReloadClassify"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isShowEditorRecoomand()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isShowEditorRecoomand"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isShowLuckyEggBadge()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isShowLuckyEggBadge"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isShowSplash()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isShowSplash"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isShowVideo()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isShowVideo"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public isWifiConnectedBefore()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "isWifiConnectedBefore"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public lastApplyReadPhonePermission()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastApplyReadPhonePermission"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastApplyReadPhonePermissionOnRecom()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastApplyReadPhonePermissionOnRecom"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastCheckInTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastCheckTokenTick()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastCheckTokenTick"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastClickPageAD()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastClickPageAD"

    const-string v1, "12345"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastGameShowOnlineCouponTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastGameShowOnlineCouponTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastGameShowOnlineCouponTimeGuest()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastGameShowOnlineCouponTimeGuest"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastGameTimePeriod()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastGameTimePeriod"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastGameTimePeriodGuest()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastGameTimePeriodGuest"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastHomeDataMd5()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastHomeDataMd5"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastInstallApp()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastInstallApp"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastInstallAppFinish()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastInstallAppFinish"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastLaunchModGameId"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastLoginAccount()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastLoginAccount"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastMainShowOnlineCouponTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastMainShowOnlineCouponTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastMainShowOnlineCouponTimeGuest()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastMainShowOnlineCouponTimeGuest"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastMainTimePeriod()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastMainTimePeriod"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastMainTimePeriodGuest()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastMainTimePeriodGuest"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastQuitShowOnlineCouponTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastQuitShowOnlineCouponTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastQuitShowOnlineCouponTimeGuset()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastQuitShowOnlineCouponTimeGuset"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastRealNameCheckTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastRealNameCheckTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastSendAppTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastSendAppTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastShowLoginGuiedTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastShowLoginGuiedTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastShowNotInstallTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastShowNotInstallTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastShowNotOpenTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastShowNotOpenTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastShowRealNameTime()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "lastShowRealNameTime"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public lastShowSplashImage()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastShowSplashImage"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastShowTOUTIAOAd()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastShowTOUTIAOAd"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastStartSimulatorCore()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastStartSimulatorCore"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lastTopTip()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lastTopTip"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public launch_game_switch()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "launch_game_switch"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public liveSubtitle()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "liveSubtitle"

    const-string v1, "\u76f4\u64ad\u706b\u70ed\u5185\u4fa7\u4e2d"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public liveTitle()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "liveTitle"

    const-string v1, "\u556a\u53cb\u76f4\u64ad"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public localUserIcon()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "localUserIcon"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public location()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "location"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public lodingImageMD5()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "lodingImageMD5"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public loginPermissHasallow()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "loginPermissHasallow"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public md5FileTag()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "md5FileTag"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public mod_enhance_ad_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "mod_enhance_ad_cfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public mod_normal_ad_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "mod_normal_ad_cfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public myGameAllTabSort()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "myGameAllTabSort"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public needShowPermissdialog()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "needShowPermissdialog"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public needsendRigeister()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "needsendRigeister"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public noFavoriteTips()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "noFavoriteTips"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public noPromptDownload()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "noPromptDownload"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public non_online_user_switch()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "non_online_user_switch"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public offlineId()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "offlineId"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public packageName()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "packageName"

    const-string v1, "com.join.android.app.mgsim.wufun"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public packageType()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "packageType"

    const-string v1, "wufunNormal"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public platform()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "platform"

    const-string v1, "wufun"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public plugHasUpdate()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "plugHasUpdate"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public pspAdShowTime()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "pspAdShowTime"

    const/4 v1, 0x5

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public pspAdShowTimeSwitch()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "pspAdShowTimeSwitch"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public pspGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "pspGameAdCfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public rankNotify()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "rankNotify"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public rankingMenu()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "rankingMenu"

    const-string v1, "1|\u7f51\u6e38\u699c,2|\u5355\u673a\u699c,3|\u6a21\u62df\u5668\u699c"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public rankingMenu2()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "rankingMenu2"

    const-string v1, "[{\"id\":1,\"title\":\"\u7f51\u6e38\u699c\"},{\"id\":2,\"title\":\"\u5355\u673a\u699c\"},{\"id\":3,\"title\":\"\u6a21\u62df\u5668\u699c\"}]"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public recomDataJson()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "recomDataJson"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public rpcUserId()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "rpcUserId"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public runRomFirst()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "runRomFirst"

    const/4 v1, -0x8

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public sdcardData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "sdcardData"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public sdcardisFirst()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "sdcardisFirst"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public searchHintCache()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "searchHintCache"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public searchguesslikeData()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "searchguesslikeData"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public shareTipClosed()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "shareTipClosed"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public showAnBattle()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "showAnBattle"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public showHistroyHint()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "showHistroyHint"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public showIndex()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "showIndex"

    const-string v1, "2"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public showName()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "showName"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public simulator_fc_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "simulator_fc_cfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public simulator_gba_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "simulator_gba_cfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public simulator_gold_finger_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "simulator_gold_finger_cfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public simulator_jj_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "simulator_jj_cfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public simulator_last_ad_position()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "simulator_last_ad_position"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public simulator_path_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "simulator_path_cfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public simulator_play_records()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "simulator_play_records"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public simulator_psp_cfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "simulator_psp_cfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public singleGameAdCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "singleGameAdCfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "singleGameShowDialog"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public soundnowIsNoSound()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "soundnowIsNoSound"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public ssidBefore()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "ssidBefore"

    const-string v1, "-1"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public startGameShowLoginNumber()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "startGameShowLoginNumber"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public startgameLogintimes_open_login()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "startgameLogintimes_open_login"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public startgametimes_open_certify()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "startgametimes_open_certify"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public statisticVisit()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "statisticVisit"

    const-string v1, "-1"

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public thAdSwitchCfg()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "thAdSwitchCfg"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public todayShowRealNameCount()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "todayShowRealNameCount"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public token()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "token"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public touriseTUID()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "touriseTUID"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public uncompleteDownload()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "uncompleteDownload"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public upLoadConfig()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "upLoadConfig"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public upLoadFileName()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "upLoadFileName"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public upLoadGame()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "upLoadGame"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public upLoadState()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "upLoadState"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public uploadRecoderNotice()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "uploadRecoderNotice"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public uploadType2()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "uploadType2"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public userCenterViewConfigs()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "userCenterViewConfigs"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public userCenterViewConfigsv2()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "userCenterViewConfigsv2"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public userId()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "userId"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public userLastStartAPP()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "userLastStartAPP"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public userLastStartGame()Lorg/androidannotations/api/sharedpreferences/k;
    .locals 3

    const-string v0, "userLastStartGame"

    const-wide/16 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lorg/androidannotations/api/sharedpreferences/n;->longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;

    move-result-object v0

    return-object v0
.end method

.method public versionCode()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "versionCode"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public virtualDeviceState()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "virtualDeviceState"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public wifiDownNumber()Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    const-string v0, "wifiDownNumber"

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;

    move-result-object v0

    return-object v0
.end method

.method public wifiIsOpen()Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    const-string v0, "wifiIsOpen"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;

    move-result-object v0

    return-object v0
.end method

.method public worldStart()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "worldStart"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public worshipMarqueeHistory()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "worshipMarqueeHistory"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method

.method public wx_open_appid()Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    const-string v0, "wx_open_appid"

    const-string v1, ""

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/androidannotations/api/sharedpreferences/n;->stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    return-object v0
.end method
