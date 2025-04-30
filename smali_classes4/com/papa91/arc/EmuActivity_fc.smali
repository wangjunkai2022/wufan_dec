.class public Lcom/papa91/arc/EmuActivity_fc;
.super Lcom/papa91/activity/EmuMenuBaseActivity;
.source "EmuActivity_fc.java"

# interfaces
.implements Lcom/join/mgps/joystick/a$d;


# static fields
.field public static AD_APP_KEY:Ljava/lang/String; = "1105704794"

.field public static final SINGLE_MODE:Z = false

.field private static appId:Ljava/lang/String; = "900010112"

.field private static appKey:Ljava/lang/String; = "m6eE8CcLThk7FMEg"

.field public static cpuFreq:Ljava/lang/String;

.field public static cpuNum:Ljava/lang/String;

.field private static emuActivity:Lcom/papa91/arc/EmuActivity_fc;

.field private static vibrtor:Landroid/os/Vibrator;


# instance fields
.field firstKey:I

.field private jsonData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/papa91/arc/EmuActivity_fc;->getCurCpuFreq()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/arc/EmuActivity_fc;->cpuFreq:Ljava/lang/String;

    .line 2
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

    sput-object v0, Lcom/papa91/arc/EmuActivity_fc;->cpuNum:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa91/arc/EmuActivity_fc;->firstKey:I

    return-void
.end method

.method public static complainPlayer(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->complain(II)V

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

    invoke-static {v3, p1}, Lcom/papa91/arc/EmuActivity_fc;->copyFolder(Ljava/lang/String;Ljava/lang/String;)V
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
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "papa91/img"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1}, Lcom/papa91/activity/EmuBaseActivity;->send(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/papa91/activity/EmuBaseActivity;->startTIme:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    .line 4
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/papa91/activity/EmuBaseActivity;->gameOut(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    .line 6
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->sendGameExit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "_"

    if-nez v2, :cond_0

    .line 7
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/mgpapa/aidlservice/Game_out_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/papa91/activity/EmuBaseActivity;->startTIme:J

    .line 9
    sget v1, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    if-nez v1, :cond_1

    if-nez v2, :cond_4

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/mgpapa/aidlservice/Game_start15_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    if-nez v2, :cond_4

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/mgpapa/aidlservice/Game_start160_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/mgpapa/aidlservice/Game_startBattle15_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->createDir(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_4
    :goto_1
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

.method private getGateZipPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getModSubfix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "/"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/combine_stage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->romPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/combine_stage_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getModSubfix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static openUrl()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://h5.papa91.com/sp_jiesuo.html"

    .line 2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    sget-object v1, Lcom/papa91/arc/EmuActivity_fc;->emuActivity:Lcom/papa91/arc/EmuActivity_fc;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static playerVibrtor()V
    .locals 3

    .line 1
    sget-object v0, Lcom/papa91/arc/EmuActivity_fc;->vibrtor:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public static printLogCat(IIII)V
    .locals 0

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

.method public static startForumsActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->sendHandleEmptyMessage(I)V

    return-void
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

    const-string v3, "rom/hdl1\",\"startMode\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\"userID\":\"2000\",\"gameID\":\"509474702\",\"version\":\"2\",\"roomID\":\"10000\",\"sopath\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"assetspath\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"classname\":\"com/papa91/arc/EmuActivity_fc\",\"serverIP\":\"121.201.0.114 \",\"serverPort\":\"5369\",\"porder\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
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
    iget v1, p0, Lcom/papa91/arc/EmuActivity_fc;->firstKey:I

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
    iput v0, p0, Lcom/papa91/arc/EmuActivity_fc;->firstKey:I

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

.method public getCustomCheatTip(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u8f93\u51656\u62168\u4f4d\u6570\u5b57\u3001\u5b57\u6bcd\n\u4f8b:SXOKVVSE"

    return-object p1

    :cond_0
    const-string p1, "\u91d1\u624b\u6307\u7801\u5206\u4e3a\u4e24\u90e8\u5206:\n\u7b2c\u4e00\u90e8\u5206:4\u4f4d\u6570\u5b57\u3001\u5b57\u6bcd\n\u7b2c\u4e8c\u90e8\u5206:2\u62164\u4f4d\u6570\u5b57\u3001\u5b57\u6bcd\n\u4e24\u90e8\u5206\u4e2d\u95f4\u8bf7\u7528\u3010\u4e2d\u7ebf\u3011\u5206\u5272\uff0c\u4f8b:030B-63"

    return-object p1
.end method

.method public getGateData()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/GateBean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/papa91/arc/EmuActivity_fc;->getGateZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_1

    .line 4
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, ".zip"

    invoke-direct {p0, v4}, Lcom/papa91/arc/EmuActivity_fc;->getGateZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/papa91/arc/EmuActivity_fc;->getGateZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/papa91/arc/util/XZip;->upZipFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 5
    :cond_1
    new-instance v3, Lcom/papa91/arc/EmuActivity_fc$2;

    invoke-direct {v3, p0}, Lcom/papa91/arc/EmuActivity_fc$2;-><init>(Lcom/papa91/arc/EmuActivity_fc;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 6
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 7
    new-instance v7, Lcom/papa91/arc/bean/GateBean;

    invoke-direct {v7}, Lcom/papa91/arc/bean/GateBean;-><init>()V

    .line 8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/papa91/arc/EmuActivity_fc;->getGateZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/papa91/arc/bean/GateBean;->setGateMaskPath(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v6, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/papa91/arc/bean/GateBean;->setGateName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v7}, Lcom/papa91/arc/bean/GateBean;->getGateName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/papa91/arc/bean/GateBean;->getGateName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/papa91/arc/bean/GateBean;->setGateIndex(I)V

    .line 11
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 13
    :cond_2
    new-instance v0, Lcom/papa91/arc/EmuActivity_fc$3;

    invoke-direct {v0, p0}, Lcom/papa91/arc/EmuActivity_fc$3;-><init>(Lcom/papa91/arc/EmuActivity_fc;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public getSimulatorType()Ljava/lang/String;
    .locals 1

    const-string v0, "fc"

    return-object v0
.end method

.method protected handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/activity/EmuMenuBaseActivity;->handleAdResult(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "adAction"

    const/16 v0, 0x3eb

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->pauseGame()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x3ec

    if-ne p1, p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->resumeGame()V

    :cond_1
    :goto_0
    return-void
.end method

.method public hideMenuDialog()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->hideMenuDialog()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->closeDialogWithOut(Lcom/papa91/arc/dialog/SettingDialog;)V

    .line 3
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameOnResume()V

    return-void
.end method

.method public isShowGate()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankGame()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".zip"

    invoke-direct {p0, v2}, Lcom/papa91/arc/EmuActivity_fc;->getGateZipPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public loadAdVideo()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    if-eqz v0, :cond_0

    const-string v1, "FC"

    .line 3
    invoke-interface {v0, p0, v1}, Lcom/papa91/arc/CContext$IVideoAdListener;->loadAd(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public loadGateStage(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->loadStageData(I)V

    return-void
.end method

.method public loadRom()V
    .locals 6

    const-string v0, "screenMode"

    const-string v1, "appPath"

    const-string v2, "libPath"

    const-string v3, "enableAudio"

    const-string v4, "vibriorMode"

    const-string v5, "gameMode"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 2
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->screenMOde:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 3
    invoke-static {p0}, Lcom/papa91/arcapp/AppConfig_fc;->getLibpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->enableAudio:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->vibriorMode:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    const-string v3, "FC"

    aput-object v3, v1, v2

    .line 4
    invoke-static {v0, v1}, Lcom/papa91/activity/EmuBaseActivity;->initLaunchConfig([Ljava/lang/String;[Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_fc;->createRom()V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "rom/hdl1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 8
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

    .line 9
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->initEmu()I

    return-void
.end method

.method protected loginFinish()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->onLoginFinish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "rolesJson"

    const/4 v4, 0x1

    .line 1
    sput-boolean v4, Lcom/papa91/activity/EmuBaseActivity;->hasRewardBanana:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "jniLibs"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/1/so_fc"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/1/assets_fc/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/papa91/arc/EmuActivity_fc;->updateConfig()V

    .line 8
    sput-object v1, Lcom/papa91/arc/EmuActivity_fc;->emuActivity:Lcom/papa91/arc/EmuActivity_fc;

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v8, Lcom/papa91/arc/EmuActivity_fc;->appId:Ljava/lang/String;

    invoke-static {v0, v8, v4}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "vibrator"

    .line 10
    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/papa91/arc/EmuActivity_fc;->vibrtor:Landroid/os/Vibrator;

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "romPath"

    const-string v9, ""

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    if-eq v10, v9, :cond_0

    .line 13
    sput-object v10, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "json ........................... rompath : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/papa91/arcapp/AppConfig_fc;->logE(Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/papa91/arcapp/AppConfig_fc;->initialise(Landroid/content/Context;)V

    .line 16
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    const-string v12, "nesromdb.dat"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/papa91/arc/EmuActivity_fc;->extractAsset(Ljava/io/File;)Z

    .line 17
    new-instance v10, Ljava/io/File;

    sget-object v11, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    const-string v12, "Disksys.rom"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/papa91/arc/EmuActivity_fc;->extractAsset(Ljava/io/File;)Z

    const-string v10, "jsonData"

    .line 18
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_4

    .line 19
    sget-object v11, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    if-eqz v11, :cond_1

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 20
    :cond_1
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 22
    :cond_3
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_7

    .line 23
    iput-object v0, v1, Lcom/papa91/arc/EmuActivity_fc;->jsonData:Ljava/lang/String;

    const/4 v5, 0x0

    .line 24
    :try_start_0
    new-instance v10, Lcom/papa91/common/MyJson;

    invoke-direct {v10, v0}, Lcom/papa91/common/MyJson;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 26
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    move-object v10, v5

    :goto_0
    if-eqz v10, :cond_6

    .line 28
    sget-object v0, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    const-string v11, "pa_package_name"

    invoke-virtual {v10, v11, v0}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->appPackName:Ljava/lang/String;

    const-string v0, "startMode"

    .line 29
    invoke-virtual {v10, v0, v6}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->startMode:I

    .line 30
    invoke-virtual {v10, v8, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->romPath:Ljava/lang/String;

    .line 31
    sput-object v0, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/io/File;

    sget-object v8, Lcom/papa91/common/BaseAppConfig;->ROM_PATH:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/emus/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/papa91/common/BaseAppConfig;->EMU_NAME:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/common/BaseAppConfig;->APK_PATH:Ljava/lang/String;

    const-string v0, "sopath"

    .line 34
    invoke-virtual {v10, v0, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    const-string v0, "assetspath"

    .line 35
    invoke-virtual {v10, v0, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->assetsPath:Ljava/lang/String;

    const-string v0, "activityName"

    .line 36
    invoke-virtual {v10, v0, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    const-string v8, "."

    .line 37
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    const-string v0, "userID"

    .line 38
    invoke-virtual {v10, v0, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->UserID:Ljava/lang/String;

    const-string v0, "gameID"

    .line 39
    invoke-virtual {v10, v0, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v0, "plugin_area_val"

    .line 40
    invoke-virtual {v10, v0, v6}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->fid:I

    const-string v0, "roomID"

    .line 41
    invoke-virtual {v10, v0, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->RoomID:Ljava/lang/String;

    const-string v0, "groupId"

    .line 42
    invoke-virtual {v10, v0, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->GroupID:Ljava/lang/String;

    const-string v0, "version"

    .line 43
    invoke-virtual {v10, v0, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->Version:Ljava/lang/String;

    const-string v0, "serverIP"

    .line 44
    invoke-virtual {v10, v0, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->server_ip:Ljava/lang/String;

    const-string v0, "serverPort"

    .line 45
    invoke-virtual {v10, v0, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->server_port:Ljava/lang/String;

    const-string v0, "porder"

    .line 46
    invoke-virtual {v10, v0, v6}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/papa91/common/BaseAppConfig;->curPlayer:I

    const-string v0, "token"

    const-string v7, "0"

    .line 47
    invoke-virtual {v10, v0, v7}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->token:Ljava/lang/String;

    .line 48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "tourist"

    invoke-virtual {v10, v7, v0}, Lcom/papa91/common/MyJson;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/papa91/activity/EmuBaseActivity;->tourist:Z

    const-string v0, "sp_lock"

    .line 49
    invoke-virtual {v10, v0, v6}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/papa91/activity/EmuBaseActivity;->spLock:I

    const-string v0, "sVipLevel"

    .line 50
    invoke-virtual {v10, v0, v6}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/papa91/activity/EmuBaseActivity;->m_SVIP:I

    const-string v0, "vipLevel"

    .line 51
    invoke-virtual {v10, v0, v6}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/papa91/activity/EmuBaseActivity;->m_VIP:I

    const-string v0, "device_id"

    .line 52
    invoke-virtual {v10, v0, v9}, Lcom/papa91/common/MyJson;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->DEVICE_ID:Ljava/lang/String;

    const-string v0, "adDatas"

    .line 53
    invoke-virtual {v10, v0, v5}, Lcom/papa91/common/MyJson;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 54
    sget-object v5, Lcom/papa91/arc/EmuActivity_fc;->AD_APP_KEY:Ljava/lang/String;

    invoke-virtual {v1, v0, v5}, Lcom/papa91/activity/EmuBaseActivity;->initBanner(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_5
    :try_start_2
    const-string v0, "device"

    .line 55
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->getPhoneInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    const-string v0, "rankMiniTime"

    .line 57
    invoke-virtual {v10, v0, v6}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/papa91/activity/EmuBaseActivity;->miniRankTime:I

    const-string v0, "rankAutoUpload"

    .line 58
    invoke-virtual {v10, v0, v6}, Lcom/papa91/common/MyJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/papa91/activity/EmuBaseActivity;->rankAutoUpload:I

    .line 59
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->isRankAutoUpload()Z

    move-result v0

    if-nez v0, :cond_6

    .line 60
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 61
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 62
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 63
    new-instance v5, Lcom/papa91/arc/EmuActivity_fc$1;

    invoke-direct {v5, v1}, Lcom/papa91/arc/EmuActivity_fc$1;-><init>(Lcom/papa91/arc/EmuActivity_fc;)V

    .line 64
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 65
    invoke-virtual {v3, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v1, Lcom/papa91/activity/EmuMenuBaseActivity;->rolesBeanList:Ljava/util/List;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 66
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 67
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->setMenuViewListener()V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/papa91/activity/EmuBaseActivity;->asyncConfig()V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onLoadNativeLibraries()V

    const-string v11, "screenMode"

    const-string v12, "appPath"

    const-string v13, "libPath"

    const-string v14, "enableAudio"

    const-string v15, "vibriorMode"

    const-string v16, "version"

    const-string v17, "cpuNum"

    const-string v18, "cpuFreq"

    const-string v19, "gameMode"

    .line 70
    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    .line 71
    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->screenMOde:Ljava/lang/String;

    aput-object v5, v3, v6

    sget-object v5, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 72
    invoke-static/range {p0 .. p0}, Lcom/papa91/arcapp/AppConfig_fc;->getLibpath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->enableAudio:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->vibriorMode:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/papa91/activity/EmuBaseActivity;->version:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Lcom/papa91/arc/EmuActivity_fc;->cpuNum:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Lcom/papa91/arc/EmuActivity_fc;->cpuFreq:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "FC"

    aput-object v5, v3, v4

    .line 73
    invoke-static {v0, v3}, Lcom/papa91/activity/EmuBaseActivity;->initLaunchConfig([Ljava/lang/String;[Ljava/lang/String;)I

    :try_start_4
    const-string v0, "apkPath"

    .line 74
    sget-object v3, Lcom/papa91/common/BaseAppConfig;->APK_PATH:Ljava/lang/String;

    invoke-virtual {v10, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "classname"

    .line 75
    sget-object v3, Lcom/papa91/activity/EmuBaseActivity;->className:Ljava/lang/String;

    invoke-virtual {v10, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/papa91/common/BaseAppConfig;->APP_PATH:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/papa91/activity/EmuBaseActivity;->dealSDPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->setJson(Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->initEmu()I

    goto :goto_5

    .line 79
    :goto_4
    sget-object v2, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/CrashReport;->setUserId(Ljava/lang/String;)V

    .line 80
    throw v0

    .line 81
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa91/activity/EmuBaseActivity;->soPath:Ljava/lang/String;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onLoadNativeLibraries()V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/papa91/arc/EmuActivity_fc;->loadRom()V

    .line 84
    :goto_5
    invoke-super/range {p0 .. p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    move-result-object v0

    sget-object v3, Lcom/join/mgps/joystick/map/KeyMap$EmuMap;->FC:Lcom/join/mgps/joystick/map/KeyMap$EmuMap;

    invoke-virtual {v0, v1, v3}, Lcom/join/mgps/joystick/a;->w(Landroid/content/Context;Lcom/join/mgps/joystick/map/KeyMap$EmuMap;)V

    .line 86
    invoke-static {}, Lcom/join/mgps/joystick/a;->g()Lcom/join/mgps/joystick/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/join/mgps/joystick/a;->y(Lcom/join/mgps/joystick/a$d;)V

    .line 87
    invoke-virtual/range {p0 .. p1}, Lcom/papa91/activity/EmuBaseActivity;->onAfterActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->exitEmu()I

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onGenericMotionEvent(IFF)V
    .locals 0

    return-void
.end method

.method protected onHandleGameExit(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/activity/EmuBaseActivity;->onHandleGameExit(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyMap([ILcom/join/mgps/joystick/map/c;Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->setJoyStickKey([I)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->onPause()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gamePause(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa91/activity/EmuBaseActivity;->onResume()V

    .line 2
    invoke-virtual {p0, p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_fc;->jsonData:Ljava/lang/String;

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

.method protected setUserStateUi(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/papa91/activity/EmuBaseActivity;->setUserState(I)V

    return-void
.end method

.method public showAdVideo()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa91/activity/EmuMenuBaseActivity;->getVip()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    sget-object v0, Lcom/papa91/arc/CContext;->mVideoAdListener:Lcom/papa91/arc/CContext$IVideoAdListener;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/papa91/activity/EmuBaseActivity;->GameID:Ljava/lang/String;

    const-string v2, "FC"

    invoke-interface {v0, p0, v1, v2}, Lcom/papa91/arc/CContext$IVideoAdListener;->showAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showGGCodeButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showInvitePlayUi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/papa91/activity/EmuBaseActivity;->showInvitePlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->sendReceiveInvitation()V

    .line 3
    invoke-virtual {p0}, Lcom/papa91/arc/EmuActivity_fc;->hideMenuDialog()V

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
