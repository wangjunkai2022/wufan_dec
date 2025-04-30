.class public Lcom/papa91/arc/EmuActivity_md;
.super Lcom/papa91/activity/EmuBaseActivity;
.source "EmuActivity_md.java"

# interfaces
.implements Lcom/join/mgps/joystick/a$d;


# static fields
.field public static APP_KEY:Ljava/lang/String; = "yHhMiVuMaLhF6XoH"

.field public static BUGLY_ID:Ljava/lang/String; = "900010158"

.field public static coreName:Ljava/lang/String;

.field public static cpuFreq:Ljava/lang/String;

.field public static cpuNum:Ljava/lang/String;

.field private static emuActivity:Lcom/papa91/arc/EmuActivity_md;

.field public static keyVaule:[I

.field private static vibrtor:Landroid/os/Vibrator;


# instance fields
.field firstKey:I

.field private jsonData:Ljava/lang/String;

.field v2_list:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/papa91/arc/EmuActivity_md;->keyVaule:[I

    .line 2
    invoke-static {}, Lcom/papa91/arc/EmuActivity_md;->getCurCpuFreq()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/arc/EmuActivity_md;->cpuFreq:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/arc/EmuActivity_md;->cpuNum:Ljava/lang/String;

    const-string v0, "MD"

    .line 4
    sput-object v0, Lcom/papa91/arc/EmuActivity_md;->coreName:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/arc/EmuActivity_md;->firstKey:I

    const-string v1, "szfy"

    const-string v2, "sgz3"

    const-string v3, "lb3"

    const-string v4, "qgqs97"

    const-string v5, "qgqs98"

    const-string v6, "mhzx4"

    .line 3
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/EmuActivity_md;->v2_list:[Ljava/lang/String;

    return-void
.end method

.method public static copyFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 9
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 12
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "/"

    if-eqz v4, :cond_3

    .line 13
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 14
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x1400

    new-array v7, v7, [B

    .line 16
    :goto_2
    invoke-virtual {v4, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 17
    invoke-virtual {v6, v7, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 19
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 20
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 21
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/papa91/arc/EmuActivity_md;->copyFolder(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public static exitActivty(I)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->uploadEfficiencyData()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/papa91/activity/EmuBaseActivity;->startTIme:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 3
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->gameOut(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->exitActivity(I)V

    return-void
.end method

.method public static getCurCpuFreq()Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "/system/bin/cat"

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x18

    new-array v1, v1, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    .line 5
    :goto_0
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "N/A"

    .line 9
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecordInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa91/arc/EmuActivity_md;->coreName:Ljava/lang/String;

    const-string v1, "MD_V2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_v2"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/activity/EmuBaseActivity;->getRecordInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static openUrl()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://h5.5fun.com/sp_jiesuo.html"

    .line 2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    sget-object v1, Lcom/papa91/arc/EmuActivity_md;->emuActivity:Lcom/papa91/arc/EmuActivity_md;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static playerVibrtor()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/arc/EmuActivity_md;->vibrtor:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public static printLogCat(IIII)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zcylog15 printLogCat a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "c="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "d="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :try_start_0
    const-string p1, ""

    const/4 p2, 0x2

    if-eq p0, p2, :cond_6

    const/4 p2, 0x4

    if-eq p0, p2, :cond_5

    const/16 p2, 0x8

    if-eq p0, p2, :cond_4

    const/16 p2, 0xb

    if-eq p0, p2, :cond_3

    const/16 p2, 0xf

    if-eq p0, p2, :cond_2

    const/16 p2, 0x15

    if-eq p0, p2, :cond_1

    const/16 p2, 0x16

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SIGABRT"

    goto :goto_0

    :cond_1
    const-string p1, "SIGBREAK"

    goto :goto_0

    :cond_2
    const-string p1, "SIGTERM"

    goto :goto_0

    :cond_3
    const-string p1, "SIGSEGV"

    goto :goto_0

    :cond_4
    const-string p1, "SIGFPE"

    goto :goto_0

    :cond_5
    const-string p1, "SIGILL"

    goto :goto_0

    :cond_6
    const-string p1, "SIGINT"

    .line 2
    :goto_0
    sget-object p0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object p2, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->version:Ljava/lang/String;

    invoke-static {p0, p2, p3, v0, p1}, Lcom/papa91/activity/EmuBaseActivity;->emuLogCat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static saveConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "core"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static setBlueTooth()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/joystick/a;->v()V

    return-void
.end method

.method public static setImageToMEDIA(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static unLockSp()I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-static {v1}, Lcom/papa91/activity/EmuBaseActivity;->unLockSP(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public createRom()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jniLibs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"romPath\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/rom/ld\",\"startMode\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\"userID\":\"2000\",\"gameID\":\"509474702\",\"version\":\"2\",\"roomID\":\"10000\",\"sopath\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"assetspath\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"classname\":\"com/papa91/arc/EmuActivity_md\",\"serverIP\":\"121.201.0.114 \",\"serverPort\":\"5369\",\"porder\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->dealSDPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setJson(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Lcom/papa91/arc/EmuActivity_md;->firstKey:I

    if-ne v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->showDailog(I)I

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    move-result p1

    xor-int/2addr p1, v2

    :goto_0
    or-int/2addr p1, v0

    return p1

    .line 5
    :cond_2
    iput v0, p0, Lcom/papa91/arc/EmuActivity_md;->firstKey:I

    .line 6
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/join/mgps/joystick/a;->p(Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    .line 7
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected extractAsset(Ljava/io/File;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p1, 0x2000

    :try_start_2
    new-array p1, p1, [B

    .line 4
    :goto_0
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {v3, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_1

    .line 8
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 10
    :catch_1
    :cond_2
    throw p1

    :catch_2
    move-object v2, v1

    :catch_3
    :goto_2
    if-eqz v1, :cond_3

    .line 11
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_3
    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_4
    return v0

    :catch_5
    :cond_5
    :goto_3
    const/4 p1, 0x1

    return p1
.end method

.method getCore(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_md;->v2_list:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "MD_V2"

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 2
    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "md_v2.cfg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v4

    :cond_2
    const-string p1, "MD"

    return-object p1
.end method

.method public loadRom()V
    .locals 10

    const-string v0, "MD_V2"

    .line 1
    sput-object v0, Lcom/papa91/arc/EmuActivity_md;->coreName:Ljava/lang/String;

    const-string v1, "screenMode"

    const-string v2, "appPath"

    const-string v3, "libPath"

    const-string v4, "enableAudio"

    const-string v5, "vibriorMode"

    const-string v6, "version"

    const-string v7, "cpuNum"

    const-string v8, "cpuFreq"

    const-string v9, "gameMode"

    .line 2
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    .line 3
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->screenMOde:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getLibpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->enableAudio:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->vibriorMode:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->version:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/papa91/arc/EmuActivity_md;->cpuNum:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/papa91/arc/EmuActivity_md;->cpuFreq:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/papa91/arc/EmuActivity_md;->coreName:Ljava/lang/String;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 5
    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->initLaunchConfig([Ljava/lang/String;[Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_md;->createRom()V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/rom/ld"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/emus/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/papa91/common/BaseAppConfig;->EMU_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/common/BaseAppConfig;->APK_PATH:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->initEmu()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const-string v0, "device"

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/papa91/arc/EmuActivity_md;->BUGLY_ID:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2
    sput-object p0, Lcom/papa91/arc/EmuActivity_md;->emuActivity:Lcom/papa91/arc/EmuActivity_md;

    const-string v1, "vibrator"

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    sput-object v1, Lcom/papa91/arc/EmuActivity_md;->vibrtor:Landroid/os/Vibrator;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jniLibs"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/1/so_md"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/1/assets_md/"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v6, "romPath"

    const-string v7, ""

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    if-eq v8, v7, :cond_0

    .line 10
    sput-object v8, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json ........................... rompath : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/papa91/arcapp/AppConfig_md;->logE(Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->initialise(Landroid/content/Context;)V

    .line 13
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    const-string v10, "carthw.cfg"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/papa91/arc/EmuActivity_md;->extractAsset(Ljava/io/File;)Z

    .line 14
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    const-string v10, "eu_mcd1_9210.bin"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/papa91/arc/EmuActivity_md;->extractAsset(Ljava/io/File;)Z

    .line 15
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    const-string v10, "jp_mcd1_9112.bin"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/papa91/arc/EmuActivity_md;->extractAsset(Ljava/io/File;)Z

    .line 16
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    const-string v10, "us_scd1_9210.bin"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/papa91/arc/EmuActivity_md;->extractAsset(Ljava/io/File;)Z

    .line 17
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_md;->updateConfig()V

    const-string v8, "jsonData"

    .line 18
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_4

    .line 19
    sget-object v9, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    if-eqz v9, :cond_1

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 20
    :cond_1
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    :cond_2
    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 22
    :cond_3
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 23
    iput-object v1, p0, Lcom/papa91/arc/EmuActivity_md;->jsonData:Ljava/lang/String;

    .line 24
    invoke-static {v1}, Lcom/papa91/arcapp/AppConfig_md;->logE(Ljava/lang/String;)V

    .line 25
    :try_start_0
    new-instance v2, Lcom/papa91/common/MyJson;

    invoke-direct {v2, v1}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V

    const-string v8, "plugin_area_val"

    .line 26
    invoke-virtual {v2, v8, v4}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/papa91/activity/EmuBaseActivity;->fid:I

    const-string v8, "pa_package_name"

    .line 27
    sget-object v9, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    const-string v8, "startMode"

    .line 28
    invoke-virtual {v2, v8, v4}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v8

    sput v8, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 29
    invoke-virtual {v2, v6, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    const-string v6, "userID"

    .line 30
    invoke-virtual {v2, v6, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    .line 31
    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    sput-object v6, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 32
    new-instance v6, Ljava/io/File;

    sget-object v8, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/emus/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/papa91/common/BaseAppConfig;->EMU_NAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/papa91/common/BaseAppConfig;->APK_PATH:Ljava/lang/String;

    const-string v6, "sopath"

    .line 34
    invoke-virtual {v2, v6, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    const-string v6, "assetspath"

    .line 35
    invoke-virtual {v2, v6, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    const-string v6, "activityName"

    .line 36
    invoke-virtual {v2, v6, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    const-string v8, "."

    .line 37
    invoke-virtual {v6, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    const-string v5, "gameID"

    .line 38
    invoke-virtual {v2, v5, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v5, "roomID"

    .line 39
    invoke-virtual {v2, v5, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->RoomID:Ljava/lang/String;

    const-string v5, "groupId"

    .line 40
    invoke-virtual {v2, v5, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->GroupID:Ljava/lang/String;

    const-string v5, "version"

    .line 41
    invoke-virtual {v2, v5, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->Version:Ljava/lang/String;

    const-string v5, "serverIP"

    .line 42
    invoke-virtual {v2, v5, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->server_ip:Ljava/lang/String;

    const-string v5, "serverPort"

    .line 43
    invoke-virtual {v2, v5, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->server_port:Ljava/lang/String;

    const-string v5, "porder"

    .line 44
    invoke-virtual {v2, v5, v4}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/papa91/common/BaseAppConfig;->curPlayer:I

    const-string v5, "token"

    const-string v6, "0"

    .line 45
    invoke-virtual {v2, v5, v6}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "...................KEY_START_FID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/papa91/activity/EmuBaseActivity;->fid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/papa91/arcapp/AppConfig_md;->logE(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :try_start_1
    sget-object v5, Lcom/papa91/common/BaseAppConfig;->APK_PATH:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getPhoneInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "apkPath"

    .line 49
    sget-object v6, Lcom/papa91/common/BaseAppConfig;->APK_PATH:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "classname"

    .line 50
    sget-object v6, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getPhoneInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 54
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 55
    :goto_1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->asyncConfig()V

    .line 56
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onLoadNativeLibraries()V

    .line 57
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/papa91/arc/EmuActivity_md;->getCore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/arc/EmuActivity_md;->coreName:Ljava/lang/String;

    const-string v5, "screenMode"

    const-string v6, "appPath"

    const-string v7, "libPath"

    const-string v8, "enableAudio"

    const-string v9, "vibriorMode"

    const-string v10, "version"

    const-string v11, "cpuNum"

    const-string v12, "cpuFreq"

    const-string v13, "gameMode"

    .line 58
    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    .line 59
    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->screenMOde:Ljava/lang/String;

    aput-object v5, v2, v4

    sget-object v4, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 60
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_md;->getLibpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->enableAudio:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->vibriorMode:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/papa91/activity/EmuBaseActivity;->version:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/papa91/arc/EmuActivity_md;->cpuNum:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/papa91/arc/EmuActivity_md;->cpuFreq:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/papa91/arc/EmuActivity_md;->coreName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 61
    invoke-static {v0, v2}, Lcom/papa91/activity/EmuBaseActivity;->initLaunchConfig([Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/papa91/activity/EmuBaseActivity;->dealSDPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setJson(Ljava/lang/String;)I

    .line 63
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->initEmu()I

    goto :goto_2

    :cond_5
    const-string v0, "json not load"

    .line 64
    invoke-static {v0}, Lcom/papa91/arcapp/AppConfig_md;->logE(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/papa91/activity/EmuBaseActivity;->asyncConfig()V

    .line 67
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onLoadNativeLibraries()V

    .line 68
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_md;->loadRom()V

    .line 69
    :goto_2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    move-result-object v0

    sget-object v1, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->MD:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/joystick/a;->w(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    .line 72
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/join/mgps/joystick/a;->y(Lcom/join/mgps/joystick/a$d;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->onAfterActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/joystick/a;->F()V

    .line 2
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->onDestroy()V

    .line 3
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->exitEmu()I

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onGenericMotionEvent(IFF)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcom/papa91/arcapp/AppConfig_md;->IsXperiaPlay()Z

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMap([ILcom/join/mgps/joystick/map/c;Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->setJoyStickKey([I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_md;->jsonData:Ljava/lang/String;

    const-string v1, "jsonData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    const-string v1, "romPath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onVirtualKeyboard(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->setPadVisible(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->setPadVisible(I)V

    :goto_0
    return-void
.end method

.method protected showInvitePlayUi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public updateConfig()V
    .locals 3

    const-string v0, "core"

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enableAudio"

    const-string v2, "1"

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->enableAudio:Ljava/lang/String;

    const-string v1, "screenMode"

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->screenMOde:Ljava/lang/String;

    const-string v1, "vibriorMode"

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/papa91/activity/EmuBaseActivity;->vibriorMode:Ljava/lang/String;

    const-string v1, "version"

    const-string v2, "1.4.0"

    .line 5
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->version:Ljava/lang/String;

    return-void
.end method
