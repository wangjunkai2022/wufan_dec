.class public Lcom/papa91/arcapp/AppConfig_md;
.super Lcom/papa91/common/BaseAppConfig;
.source "AppConfig_md.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final HEX_DIGITS:[C

.field public static PATH:Ljava/lang/String; = "/papa91/md/"

.field public static deviceDescrip:[Ljava/lang/String;

.field public static deviceID:[I

.field public static deviceName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "md"

    .line 1
    sput-object v0, Lcom/papa91/common/BaseAppConfig;->EMU_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/papa91/arcapp/AppConfig_md;->initPath(Landroid/content/Context;)V

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lcom/papa91/arcapp/AppConfig_md;->HEX_DIGITS:[C

    const-string v0, "?"

    .line 4
    filled-new-array {v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/papa91/arcapp/AppConfig_md;->deviceName:[Ljava/lang/String;

    .line 5
    filled-new-array {v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/arcapp/AppConfig_md;->deviceDescrip:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_1

    sput-object v0, Lcom/papa91/arcapp/AppConfig_md;->deviceID:[I

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/common/BaseAppConfig;-><init>()V

    return-void
.end method

.method public static IsXperiaPlay()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "R800a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "R800i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "R800x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "R800at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SO-01D"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zeus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static createAppDir(Landroid/content/Context;)V
    .locals 0

    .line 1
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->createFolder(Ljava/lang/String;)Z

    .line 2
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->createFolder(Ljava/lang/String;)Z

    .line 3
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->CONFIG_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->createFolder(Ljava/lang/String;)Z

    .line 4
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->IPS_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->createFolder(Ljava/lang/String;)Z

    .line 5
    sget-object p0, Lcom/papa91/common/BaseAppConfig;->TMP_PATH:Ljava/lang/String;

    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->createFolder(Ljava/lang/String;)Z

    return-void
.end method

.method static createFolder(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mkdir: ok"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->logD(Ljava/lang/String;)V

    return v2

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mkdir: failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->logD(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method static createResFile(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_3

    if-nez p3, :cond_1

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    aget-object v2, p2, v1

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    .line 9
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 10
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    .line 11
    invoke-virtual {v3, v4, v0, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 13
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v2, "cant install bios file"

    .line 15
    invoke-static {v2}, Lcom/papa91/arcapp/AppConfig_md;->logE(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static filePathToURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAnalogDZ(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "analogDeadzoneNEW"

    const-string v1, "1"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getAnalogEZ(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "analogExpandzoneNEW"

    const-string v1, "1"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getButtonEZ(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "buttonExpandzoneNEW"

    const-string v1, "1"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_preferences"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static getLastDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LAST_DIR"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLibpath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "cache"

    const-string v1, "lib"

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNameNoExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ge v1, v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNameNoExtWithPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNameWithExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getNumCores()I
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/papa91/arcapp/AppConfig_md$1CpuFilter;

    invoke-direct {v1}, Lcom/papa91/arcapp/AppConfig_md$1CpuFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 3
    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getRomPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTiltDZ(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PREF_TILT_DZ"

    const-string v1, "1"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getTiltSensitivity(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PREF_TILT_SENSITIVITY"

    const/4 v1, 0x6

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getVpadStyle(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PREF_VPAD_STYLE"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getscrOrientation(Landroid/app/Activity;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 4
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ne p0, v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge p0, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :cond_2
    :goto_0
    return v1
.end method

.method public static hideAds(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "hideAds"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static initPath(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/papa91/arcapp/AppConfig_md;->PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/papa91/arcapp/AppConfig_md;->PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    .line 4
    sput-object p0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "config/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa91/common/BaseAppConfig;->CONFIG_PATH:Ljava/lang/String;

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "rominfo/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa91/common/BaseAppConfig;->INFO_PATH:Ljava/lang/String;

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ips/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa91/common/BaseAppConfig;->IPS_PATH:Ljava/lang/String;

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tmp/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa91/common/BaseAppConfig;->TMP_PATH:Ljava/lang/String;

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "romdata/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa91/common/BaseAppConfig;->ROMDATA_PATH:Ljava/lang/String;

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/papa91/common/BaseAppConfig;->PRIVATE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "log/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa91/common/BaseAppConfig;->LOG_PATH:Ljava/lang/String;

    return-void
.end method

.method public static initialise(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->initPath(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->isFirstRun(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcom/papa91/common/BaseAppConfig;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->createAppDir(Landroid/content/Context;)V

    .line 6
    invoke-static {p0}, Lcom/papa91/common/BaseAppConfig;->copyGuide(Landroid/content/Context;)V

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {p0, v1}, Lcom/papa91/arcapp/AppConfig_md;->setFirstRun(Landroid/content/Context;Z)V

    return-void
.end method

.method public static inputDeviceToPlayer(Landroid/view/InputDevice;)I
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    .line 2
    sget-object v1, Lcom/papa91/arcapp/AppConfig_md;->deviceName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    sget-object v1, Lcom/papa91/arcapp/AppConfig_md;->deviceID:[I

    aget v4, v1, v0

    if-eqz v4, :cond_2

    .line 4
    aget v1, v1, v0

    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    move-result v4

    if-ne v1, v4, :cond_3

    return v0

    .line 5
    :cond_2
    aget v4, v1, v0

    if-nez v4, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    move-result p0

    aput p0, v1, v0

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v3
.end method

.method public static isAnalogPretty(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static isFirstRun(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "version"

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "firstRun"

    const/4 v3, 0x1

    .line 2
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 5
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ge v4, p0, :cond_0

    .line 6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 7
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return v2
.end method

.method static isGameFile(Ljava/lang/String;)Z
    .locals 2

    const-string v0, ".zip"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, ".md"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".cue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".bin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const-string v0, "pgm.zip"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "neogeo.zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public static isTiltSensor(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PREF_TILT_SENSOR"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static lockScreenOrientation(Landroid/content/Context;I)V
    .locals 2

    .line 1
    check-cast p0, Landroid/app/Activity;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static md5string(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 2
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 4
    aget-char v3, p0, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, "MD5"

    .line 5
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 6
    array-length p0, p0

    invoke-virtual {v2, v0, v1, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 7
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static md5sum(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string p0, "MD5"

    .line 4
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v4, 0x0

    .line 6
    invoke-virtual {p0, v0, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 8
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static saveLastDir(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "LAST_DIR"

    .line 3
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveScreenModeConfig(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3
    sget v0, Lcom/papa91/common/BaseAppConfig;->screenMode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screenMode"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    sget v0, Lcom/papa91/common/BaseAppConfig;->frameSkip:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "frameSkip"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static saveStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static saveTurboSpeed(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "turboSpeed"

    .line 3
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static setDefaultConfig(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/papa91/arcapp/AppConfig_md;->setVpadStyle(Landroid/content/Context;I)V

    .line 2
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Lcom/papa91/common/BaseAppConfig;->enableAudio:Z

    .line 5
    sput v1, Lcom/papa91/common/BaseAppConfig;->renderMode:I

    .line 6
    sput-boolean v1, Lcom/papa91/common/BaseAppConfig;->renderQuality:Z

    const/4 v2, -0x1

    .line 7
    sput v2, Lcom/papa91/common/BaseAppConfig;->frameSkip:I

    .line 8
    sput v1, Lcom/papa91/common/BaseAppConfig;->screenOrientation:I

    .line 9
    sput v0, Lcom/papa91/common/BaseAppConfig;->screenMode:I

    .line 10
    sput-boolean v1, Lcom/papa91/common/BaseAppConfig;->enablePad:Z

    .line 11
    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->enableVibrator:Z

    .line 12
    sput-boolean v1, Lcom/papa91/common/BaseAppConfig;->enablePhysicalKey:Z

    const/4 v2, 0x2

    .line 13
    sput v2, Lcom/papa91/common/BaseAppConfig;->cpuCores:I

    .line 14
    sget-boolean v2, Lcom/papa91/common/BaseAppConfig;->enableAudio:Z

    const-string v3, "enableAudio"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 15
    sget v2, Lcom/papa91/common/BaseAppConfig;->renderMode:I

    const-string v3, "renderMode"

    if-ne v2, v1, :cond_0

    .line 16
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 18
    :goto_0
    sget-boolean v2, Lcom/papa91/common/BaseAppConfig;->renderQuality:Z

    const-string v3, "renderQuality"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 19
    sget v2, Lcom/papa91/common/BaseAppConfig;->screenOrientation:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenOrient"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    sget v2, Lcom/papa91/common/BaseAppConfig;->frameSkip:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "frameSkip"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    sget v2, Lcom/papa91/common/BaseAppConfig;->screenMode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "screenMode"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    sget-boolean v2, Lcom/papa91/common/BaseAppConfig;->enablePad:Z

    const-string v3, "enableVPad"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 23
    sget-boolean v2, Lcom/papa91/common/BaseAppConfig;->enableVibrator:Z

    const-string v3, "enableVibrator"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    sget-boolean v2, Lcom/papa91/common/BaseAppConfig;->enablePhysicalKey:Z

    const-string v3, "enablePhysicalKey"

    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "hideAds"

    .line 25
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "vpadPlayer"

    .line 26
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "autoMultiThread"

    .line 27
    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "analogPretty"

    .line 28
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "enableOneController"

    .line 29
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "analogDeadzoneNEW"

    const-string v2, "1"

    .line 30
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "analogExpandzoneNEW"

    const-string v2, "2"

    .line 31
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "buttonExpandzoneNEW"

    .line 32
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1
.end method

.method static setFirstRun(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "firstRun"

    .line 3
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setVpadStyle(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "PREF_VPAD_STYLE"

    .line 2
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static showPlayerButton(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "vpadPlayer"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    sget-object v2, Lcom/papa91/arcapp/AppConfig_md;->HEX_DIGITS:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, v2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updateConfig(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sput v1, Lcom/papa91/common/BaseAppConfig;->language:I

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sput v2, Lcom/papa91/common/BaseAppConfig;->language:I

    .line 4
    :goto_1
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "enableAudio"

    .line 5
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->enableAudio:Z

    .line 6
    invoke-static {}, Lcom/papa91/arcapp/AppConfig_md;->IsXperiaPlay()Z

    move-result v0

    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->IsXperiaPlay:Z

    .line 7
    invoke-static {}, Lcom/papa91/arcapp/AppConfig_md;->getNumCores()I

    move-result v0

    if-le v0, v2, :cond_2

    const-string v0, "autoMultiThread"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Lcom/papa91/arcapp/AppConfig_md;->getNumCores()I

    move-result v0

    sput v0, Lcom/papa91/common/BaseAppConfig;->cpuCores:I

    goto :goto_2

    .line 9
    :cond_2
    sput v2, Lcom/papa91/common/BaseAppConfig;->cpuCores:I

    :goto_2
    const-string v0, "renderMode"

    .line 10
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    sput v2, Lcom/papa91/common/BaseAppConfig;->renderMode:I

    goto :goto_3

    .line 12
    :cond_3
    sput v1, Lcom/papa91/common/BaseAppConfig;->renderMode:I

    :goto_3
    const-string v0, "renderQuality"

    .line 13
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->renderQuality:Z

    const-string v0, "screenMode"

    const-string v1, "0"

    .line 14
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/papa91/common/BaseAppConfig;->screenMode:I

    const-string v0, "frameSkip"

    const-string v1, "-1"

    .line 16
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/papa91/common/BaseAppConfig;->frameSkip:I

    const/16 v0, 0x8

    const-string v1, "turboSpeed"

    .line 18
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/papa91/common/BaseAppConfig;->turboSpeed:I

    const-string v0, "enableVibrator"

    .line 19
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->enableVibrator:Z

    const-string v0, "enableVPad"

    .line 20
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->enablePad:Z

    const-string v0, "vpadAutoLayout"

    .line 21
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->bAutoLayoutBtn:Z

    const-string v0, "enablePhysicalKey"

    .line 22
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/papa91/common/BaseAppConfig;->enablePhysicalKey:Z

    const-string v0, "enableOneController"

    .line 23
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/papa91/common/BaseAppConfig;->oneController:Z

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcom/papa91/common/BaseAppConfig;->autoSearchRom:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/papa91/common/BaseAppConfig;->enableAudio:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/papa91/common/BaseAppConfig;->enableVibrator:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/papa91/common/BaseAppConfig;->renderMode:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/papa91/common/BaseAppConfig;->screenMode:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/papa91/common/BaseAppConfig;->vkeypadLayout:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/papa91/common/BaseAppConfig;->controlScale:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/papa91/common/BaseAppConfig;->enablePhysicalKey:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->logD(Ljava/lang/String;)V

    return-void
.end method
