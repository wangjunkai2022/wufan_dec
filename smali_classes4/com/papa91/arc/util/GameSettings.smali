.class public Lcom/papa91/arc/util/GameSettings;
.super Ljava/lang/Object;
.source "GameSettings.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomSettingEnable()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CustomSettingEnable"

    const-string v2, "false"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/papa91/arc/util/GameSettings;->queryConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getGameSettingLevel()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getGameSettingTotalLevel()I

    move-result v0

    const-string v1, "1"

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    const-string v0, "4"

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    const-string v3, "GameSettingLevel"

    invoke-static {v2, v3, v0}, Lcom/papa91/arc/util/GameSettings;->queryConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 3
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getGameSettingTotalLevel()I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "GameSettingTotalLevel"

    const-string v2, "4"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/papa91/arc/util/GameSettings;->queryConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 3
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getSettingsPath()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    const-string v2, "wufan91"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 4
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    const-string v4, "/wufan91"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 5
    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 6
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/arc/util/GameSettings;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 11
    :cond_1
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    const-string v4, "mgpapa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    sget-object v2, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    const-string v4, "/mgpapa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 13
    sget-object v3, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 14
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/papa91/arc/util/GameSettings;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 19
    :cond_3
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 22
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    sget-object v0, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/papa91/arc/util/GameSettings;->context:Landroid/content/Context;

    return-void
.end method

.method public static queryConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string p0, "GameSetting"

    .line 2
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getSettingsPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v3, "settings.ini"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v0, Lcom/papa91/arc/util/IniFile;

    invoke-direct {v0, v2}, Lcom/papa91/arc/util/IniFile;-><init>(Ljava/io/File;)V

    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/papa91/arc/util/IniFile;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static queryConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string p0, "GameSetting"

    .line 9
    :cond_1
    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getSettingsPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getSettingsPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "settings.ini"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    new-instance v0, Lcom/papa91/arc/util/IniFile;

    invoke-direct {v0, v1}, Lcom/papa91/arc/util/IniFile;-><init>(Ljava/io/File;)V

    .line 15
    invoke-virtual {v0, p0, p1, p2}, Lcom/papa91/arc/util/IniFile;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    :cond_2
    return-object p2
.end method

.method public static saveGameConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/papa91/arc/util/GameSettings;->getSettingsPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "settings.ini"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "GameSetting"

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/papa91/arc/util/IniFile;

    invoke-direct {v0, v1}, Lcom/papa91/arc/util/IniFile;-><init>(Ljava/io/File;)V

    .line 7
    invoke-virtual {v0, v2, p0, p1}, Lcom/papa91/arc/util/IniFile;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Lcom/papa91/arc/util/IniFile;->save()V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/papa91/arc/util/IniFile;

    invoke-direct {v0}, Lcom/papa91/arc/util/IniFile;-><init>()V

    .line 10
    invoke-virtual {v0, v2, p0, p1}, Lcom/papa91/arc/util/IniFile;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/papa91/arc/util/IniFile;->save(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method public static setCustomSettingEnable(Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "CustomSettingEnable"

    invoke-static {v0, p0}, Lcom/papa91/arc/util/GameSettings;->saveGameConfig(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setGameSettingLevel(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GameSettingLevel"

    invoke-static {v0, p0}, Lcom/papa91/arc/util/GameSettings;->saveGameConfig(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setGameSettingTotalLevel(I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GameSettingTotalLevel"

    invoke-static {v0, p0}, Lcom/papa91/arc/util/GameSettings;->saveGameConfig(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
