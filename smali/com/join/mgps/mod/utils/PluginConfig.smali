.class public Lcom/join/mgps/mod/utils/PluginConfig;
.super Ljava/lang/Object;
.source "PluginConfig.java"


# static fields
.field public static final LOG:Z = true

.field public static sPluginClassloader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/join/mgps/mod/utils/PluginConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/join/mgps/mod/utils/PluginConfig;->sPluginClassloader:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "plugin_configs"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getArchiveSection(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "archiveInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    return-object p0
.end method

.method public static getLastLaunchPkg(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "launchPackage"

    const-string v1, ""

    .line 1
    invoke-static {p0, v0, v1}, Lcom/join/mgps/mod/utils/PluginConfig;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getModConfig(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "config"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    return-object p0
.end method

.method public static getModGameId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "gameInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "gameId"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getModMenuSwitch(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "switch"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    return-object p0
.end method

.method public static getModPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "soInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "modPath"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSoCode(Landroid/content/Context;)I
    .locals 2

    const-string v0, "plugin_configs"

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "soCode"

    const/4 v1, 0x0

    .line 7
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSoCode(Ljava/lang/String;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "soInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "code"

    .line 3
    invoke-virtual {p0, v1}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "plugin_configs"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 2
    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSoVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "soVersion"

    const-string v1, ""

    .line 4
    invoke-static {p0, v0, v1}, Lcom/join/mgps/mod/utils/PluginConfig;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSoVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "soInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-string v0, "version"

    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/t$c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "plugin_configs"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setArchivePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "archiveInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/t$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_0
    const-string p0, "archivePath"

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "archivePath2"

    .line 6
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "archiveId"

    .line 7
    invoke-virtual {v1, p0, p3}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z

    return-void
.end method

.method public static setLastLaunchPkg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "launchPackage"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/join/mgps/mod/utils/PluginConfig;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setModConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "soInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/t$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_0
    const-string p0, "modPath"

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "version"

    .line 6
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "code"

    invoke-virtual {v1, p2, p0}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "lastModifyTime"

    invoke-virtual {v1, p1, p0}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z

    return-void
.end method

.method public static setModConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 10
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "switch"

    .line 11
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/join/mgps/Util/t$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_0
    const-string p0, "goldFingerSwitch"

    .line 14
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "archiveCloudSwitch"

    .line 15
    invoke-virtual {v1, p0, p2}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "introductionSwitch"

    .line 16
    invoke-virtual {v1, p0, p3}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "config"

    .line 17
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object p1

    if-nez p1, :cond_1

    .line 18
    new-instance p1, Lcom/join/mgps/Util/t$c;

    invoke-direct {p1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_1
    const-string p0, "channelNum"

    .line 20
    invoke-virtual {p1, p0, p4}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "targetVersion"

    .line 21
    invoke-virtual {p1, p0, p5}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z

    return-void
.end method

.method public static setModGameId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "gameInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/t$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_0
    const-string p0, "gameId"

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z

    return-void
.end method

.method public static setModPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/Util/t;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/t;-><init>(Ljava/lang/String;)V

    const-string p0, "gameInfo"

    .line 2
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/t;->b(Ljava/lang/String;)Lcom/join/mgps/Util/t$c;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/join/mgps/Util/t$c;

    invoke-direct {v1, p0}, Lcom/join/mgps/Util/t$c;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/t;->f(Lcom/join/mgps/Util/t$c;)V

    :cond_0
    const-string p0, "modPath"

    .line 5
    invoke-virtual {v1, p0, p1}, Lcom/join/mgps/Util/t$c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/Util/t;->j()Z

    return-void
.end method

.method public static setSoCode(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "plugin_configs"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "soCode"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "plugin_configs"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSoVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "soVersion"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/join/mgps/mod/utils/PluginConfig;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
