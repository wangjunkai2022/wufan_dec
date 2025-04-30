.class public Lcom/papa/sim/statistic/pref/b;
.super Ljava/lang/Object;
.source "PrefUtil.java"


# static fields
.field static d:Lcom/papa/sim/statistic/pref/b;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field b:Landroid/content/Context;

.field private c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa/sim/statistic/pref/b;->b:Landroid/content/Context;

    const-string v0, "Papa_Stat_SharedPreferences"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/pref/b;->d:Lcom/papa/sim/statistic/pref/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/sim/statistic/pref/b;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/pref/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa/sim/statistic/pref/b;->d:Lcom/papa/sim/statistic/pref/b;

    .line 3
    :cond_0
    sget-object p0, Lcom/papa/sim/statistic/pref/b;->d:Lcom/papa/sim/statistic/pref/b;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "statisticGameList"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public B(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_home_ab_page_type"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wufun_idfinal"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public D(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "getIsShowDiviceDialog"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public E(Lcom/papa/sim/statistic/pref/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "liveStat"

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public F(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NewGBAPlugType"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public G(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OldDatabaseVersion"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public H(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ShowDialogNewGBAPlug"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "statisticVisit"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public J(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstShowUserPermiss"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "dailyReward"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "_detail_ab_page_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "EmuApkTableList"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "firstSetUserBg"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "firstSetUserCenter"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "firstSetUserIcon"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "statisticGameList"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "_home_ab_page_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "wufun_idfinal"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "getIsShowDiviceDialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public l()Lcom/papa/sim/statistic/pref/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "liveStat"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->e()Lcom/papa/sim/statistic/JsonMapper;

    move-result-object v2

    const-class v3, Lcom/papa/sim/statistic/pref/a;

    invoke-virtual {v2, v0, v3}, Lcom/papa/sim/statistic/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/sim/statistic/pref/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public m()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "NewGBAPlugType"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "OldDatabaseVersion"

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "ShowDialogNewGBAPlug"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "statisticVisit"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "papauuidkey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "firstShowUserPermiss"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "actived"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public t(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "actived"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dailyReward"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public v(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "_detail_ab_page_type"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EmuApkTableList"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public x(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstSetUserBg"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public y(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstSetUserCenter"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/pref/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firstSetUserIcon"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
