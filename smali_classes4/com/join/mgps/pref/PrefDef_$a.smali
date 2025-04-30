.class public final Lcom/join/mgps/pref/PrefDef_$a;
.super Lorg/androidannotations/api/sharedpreferences/e;
.source "PrefDef_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/pref/PrefDef_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/androidannotations/api/sharedpreferences/e<",
        "Lcom/join/mgps/pref/PrefDef_$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/androidannotations/api/sharedpreferences/e;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public A()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "addedShortcutGames"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public A0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "getLastPayType"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public A1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastGameShowOnlineCouponTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public A2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "recomDataJson"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public B()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "androidIdNullsKey"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public B0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "gprsIsOpen"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public B1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastGameShowOnlineCouponTimeGuest"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public B2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "rpcUserId"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public C()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "annonunceWhenDownload"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public C0()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "gprsNoticeInfo"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public C1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastGameTimePeriod"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public C2()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "runRomFirst"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public D()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "anti_addiction_switch"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public D0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "hasShowAdInfo"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public D1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastGameTimePeriodGuest"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public D2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "sdcardData"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public E()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "apName"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public E0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "hasShowMiniGameBadge"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public E1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastHomeDataMd5"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public E2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "sdcardisFirst"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public F()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "arcadeGameAdCfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public F0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "hasShowModInstallGames"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public F1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastInstallApp"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public F2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "searchHintCache"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public G()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "arenaDialogAdData"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public G0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "hideGameTopAd"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public G1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastInstallAppFinish"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public G2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "searchguesslikeData"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public H()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "autoLogin"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public H0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "homeAllData"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public H1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastLaunchModGameId"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public H2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "shareTipClosed"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public I()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "battleWelcomeIn"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public I0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "homeAllDataV3"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public I1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastLoginAccount"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public I2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "showAnBattle"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public J()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "changeNickNameNotice"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public J0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "homeFastThe_new"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public J1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastMainShowOnlineCouponTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public J2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "showHistroyHint"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public K()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "classFyFirstOpen"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public K0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "homeFastTopic"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public K1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastMainShowOnlineCouponTimeGuest"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public K2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "showIndex"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public L()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "clickFloatViewTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public L0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "homeFastWillpay"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public L1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastMainTimePeriod"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public L2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "showName"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public M()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "cloudVipLink"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public M0()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "homePopupAdCount"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public M1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastMainTimePeriodGuest"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public M2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "simulator_fc_cfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public N()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "commentToken"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public N0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "homePopupAdLast"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public N1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastQuitShowOnlineCouponTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public N2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "simulator_gba_cfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public O()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "commentnoticeTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public O0()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "homePopupAdLastTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public O1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastQuitShowOnlineCouponTimeGuset"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public O2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "simulator_gold_finger_cfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public P()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "community_entrance_title"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public P0()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "insatllAppFirst"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public P1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastRealNameCheckTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public P2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "simulator_jj_cfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public Q()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "continueOnWifi"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public Q0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "insatllAppFirstData"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public Q1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastSendAppTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public Q2()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "simulator_last_ad_position"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public R()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "defaultSearchKeyword"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public R0()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "installApplastNoticeTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public R1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastShowLoginGuiedTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public R2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "simulator_path_cfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public S()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "downloadPath"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public S0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isAcActived"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public S1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastShowNotInstallTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public S2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "simulator_play_records"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public T()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "downloadSpeedUpCount"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public T0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isAutoWifiDownUpdate"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public T1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastShowNotOpenTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public T2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "simulator_psp_cfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public U()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "downloadSpeedUpCountAD"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public U0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isCanShowAddShortcut"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public U1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastShowRealNameTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public U2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "singleGameAdCfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public V()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "downloadSpeedUpCountCurrent"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public V0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFcActived"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public V1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastShowSplashImage"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public V2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "singleGameShowDialog"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public W()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "downloadSpeedUpCountCurrentAD"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public W0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFightActivity"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public W1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastShowTOUTIAOAd"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public W2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "soundnowIsNoSound"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public X()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "downloadSpeedUpGameSize"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public X0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirst35"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public X1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastStartSimulatorCore"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public X2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "ssidBefore"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public Y()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "downloadSpeedUpGames"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public Y0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstClickClassify"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public Y1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastTopTip"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public Y2()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "startGameShowLoginNumber"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public Z()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "downloadSpeedUpLastTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public Z0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstCommendVersion"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public Z1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "launch_game_switch"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public Z2()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "startgameLogintimes_open_login"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public a0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "downloadSpeedupCfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public a1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstCouldShowPopw"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public a2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "liveSubtitle"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public a3()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "startgametimes_open_certify"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public b0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "download_game_switch"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public b1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstCustomApk"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public b2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "liveTitle"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public b3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "statisticVisit"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public c0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "emuApkTableList"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public c1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstLocalShowPopw"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public c2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "localUserIcon"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public c3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "thAdSwitchCfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public d0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "emulatorCheckpointUrl"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public d1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstRemeShowPopw"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public d2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "location"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public d3()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "todayShowRealNameCount"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public e0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "emulatorGoldenFingerUrl"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public e1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstRun"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public e2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lodingImageMD5"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public e3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "token"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public f0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "emulatorOneSkillUrl"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public f1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstRunApkBackup"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public f2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "loginPermissHasallow"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public f3()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "touriseTUID"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public g0()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "emulatorStartAdCount"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public g1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstRunApkBackupLong"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public g2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "md5FileTag"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public g3()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "uncompleteDownload"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public h0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "fightWifiInputIP"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public h1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstRunGameCarefullyLong"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public h2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "mod_enhance_ad_cfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public h3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "upLoadConfig"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public i0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "firstArena"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public i1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstRunRecomeWifi"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public i2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "mod_normal_ad_cfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public i3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "upLoadFileName"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public j0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "firstArenaFilterVisit"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public j1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isFirstbuyShowPopw"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public j2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "myGameAllTabSort"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public j3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "upLoadGame"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public k()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "DownloadRecoderNotice"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public k0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "firstClickShoubing"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public k1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isHideAdBlock"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public k2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "needShowPermissdialog"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public k3()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "upLoadState"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public l()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "DownloadRecoderNoticeMarcket"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public l0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "firstClickUsericon"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public l1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isLogin"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public l2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "needsendRigeister"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public l3()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "uploadRecoderNotice"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public m()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "FirstShowMYgameTopTip"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public m0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "firstInstallAppCompanyDialog"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public m1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isNewFinishedGame"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public m2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "noFavoriteTips"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public m3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "uploadType2"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public n()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "Member_id"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public n0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "firstIntentgamedetialVideo"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public n1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isNoShowAddShortcut"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public n2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "noPromptDownload"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public n3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "userCenterViewConfigs"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public o()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "Member_name"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public o0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "firstNewSplash"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public o1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isOnlyWifiReconnect"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public o2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "non_online_user_switch"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public o3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "userCenterViewConfigsv2"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public p()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "PaBiData"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public p0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "firstNewSplashV2"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public p1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isReloadClassify"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public p2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "offlineId"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public p3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "userId"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public q()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "accountData"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public q0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "firstShowUserPermiss"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public q1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isShowEditorRecoomand"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public q2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "packageName"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public q3()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "userLastStartAPP"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public r()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "accountDataV2"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public r0()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "forumFirstClickUsericon"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public r1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isShowLuckyEggBadge"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public r2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "packageType"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public r3()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "userLastStartGame"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public s()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "accountDataV3"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public s0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "gameHasFeedBack"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public s1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isShowSplash"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public s2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "platform"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public s3()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "versionCode"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public t()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "accountLoginToken"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public t0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "gameTimeLvCfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public t1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isShowVideo"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public t2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "plugHasUpdate"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public t3()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "virtualDeviceState"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public u()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "accountLoginUID"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public u0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "gameTopAd"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public u1()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "isWifiConnectedBefore"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public u2()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "pspAdShowTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public u3()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "wifiDownNumber"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public v()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "adIdArc"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public v0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "gameTypeList"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public v1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastApplyReadPhonePermission"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public v2()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "pspAdShowTimeSwitch"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public v3()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "wifiIsOpen"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public w()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "adIdCommonH"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public w0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "gameWorldActive"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public w1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastApplyReadPhonePermissionOnRecom"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public w2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "pspGameAdCfg"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public w3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "worldStart"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public x()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "adIdCommonV"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public x0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "gameWorldGradeList"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public x1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastCheckInTime"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public x2()Lorg/androidannotations/api/sharedpreferences/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/c<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "rankNotify"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->b(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/c;

    move-result-object v0

    return-object v0
.end method

.method public x3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "worshipMarqueeHistory"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public y()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "adIdDownloadSpeedUp"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public y0()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "gameWorldWorshipTop"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public y1()Lorg/androidannotations/api/sharedpreferences/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/j<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastCheckTokenTick"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->h(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/j;

    move-result-object v0

    return-object v0
.end method

.method public y2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "rankingMenu"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public y3()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "wx_open_appid"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public z()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "adIdPsp"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public z0()Lorg/androidannotations/api/sharedpreferences/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/h<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "getArchiveCoinPref"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->g(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/h;

    move-result-object v0

    return-object v0
.end method

.method public z1()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "lastClickPageAD"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method

.method public z2()Lorg/androidannotations/api/sharedpreferences/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/androidannotations/api/sharedpreferences/o<",
            "Lcom/join/mgps/pref/PrefDef_$a;",
            ">;"
        }
    .end annotation

    const-string v0, "rankingMenu2"

    .line 1
    invoke-virtual {p0, v0}, Lorg/androidannotations/api/sharedpreferences/e;->i(Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/o;

    move-result-object v0

    return-object v0
.end method
