.class public Lcom/papa/sim/statistic/q;
.super Ljava/lang/Object;
.source "SystemInfoUtils.java"


# static fields
.field static b:Ljava/lang/String; = "q"

.field static c:Lcom/papa/sim/statistic/q; = null

.field static d:Ljava/lang/String; = null

.field static e:Ljava/lang/String; = null

.field static f:J = 0x0L

.field static g:Ljava/lang/String; = ""

.field static h:Ljava/lang/String; = null

.field static i:Ljava/lang/String; = ""


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/papa/sim/statistic/q;->f:J

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/b;->q()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/papa/sim/statistic/c;->b([B)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/papa/sim/statistic/q;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static f(Landroid/content/Context;)Lcom/papa/sim/statistic/q;
    .locals 6

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/q;->c:Lcom/papa/sim/statistic/q;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/papa/sim/statistic/q;

    invoke-direct {v0, p0}, Lcom/papa/sim/statistic/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/papa/sim/statistic/q;->c:Lcom/papa/sim/statistic/q;

    .line 3
    :cond_0
    sget-wide v0, Lcom/papa/sim/statistic/q;->f:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    sget-object p0, Lcom/papa/sim/statistic/q;->d:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v4, Lcom/papa/sim/statistic/q;->f:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xbb8

    cmp-long p0, v0, v4

    if-lez p0, :cond_2

    .line 4
    sput-wide v2, Lcom/papa/sim/statistic/q;->f:J

    .line 5
    :cond_2
    sget-object p0, Lcom/papa/sim/statistic/q;->c:Lcom/papa/sim/statistic/q;

    return-object p0
.end method

.method private h()Ljava/lang/String;
    .locals 13

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    move-object v3, v2

    .line 2
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 4
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5
    array-length v6, v5

    if-nez v6, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x1

    if-ge v9, v7, :cond_2

    aget-byte v11, v5, v9

    const-string v12, "%02X:"

    new-array v10, v10, [Ljava/lang/Object;

    .line 8
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 10
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "wlan0"

    .line 12
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v2, v3

    .line 13
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interfaceName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mac="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_6

    goto :goto_3

    :catch_0
    nop

    goto :goto_2

    :catch_1
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_6
    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_7
    return-object v2
.end method

.method public static i()Ljava/lang/String;
    .locals 7

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://pv.sohu.com/cityjson?ie=utf-8"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 3
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 6
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "utf-8"

    invoke-direct {v4, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, "((?:(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d)))\\.){3}(?:25[0-5]|2[0-4]\\d|((1\\d{2})|([1-9]?\\d))))"

    .line 10
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v2, v1

    .line 18
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 20
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_5
    move-exception v3

    move-object v2, v1

    .line 21
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 22
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 23
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_3
    return-object v0

    :catchall_1
    move-exception v0

    .line 24
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 25
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_5

    :catch_6
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_7
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    :goto_5
    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method private static l(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/papa/sim/statistic/pref/b;->q()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/papa/sim/statistic/c;->b([B)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/papa/sim/statistic/q;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "activity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 5
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/papa/sim/statistic/db/b;->o(Landroid/content/Context;)Lcom/papa/sim/statistic/db/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/papa/sim/statistic/db/b;->j(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v2

    :catch_0
    :cond_0
    return v0
.end method

.method public static r(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "keyguard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/q;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/papa/sim/statistic/q;->g:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object p1, Lcom/papa/sim/statistic/q;->g:Ljava/lang/String;

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 9

    const-string v0, "020000000000"

    const-string v1, "0"

    const-string v2, "02:00:00:00:00:00"

    const-string v3, "null"

    const-string v4, "000000000000000"

    const-string v5, ":"

    const-string v6, ""

    .line 1
    :try_start_0
    sget-object v7, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    const-string v8, "02"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    sget-object v8, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    invoke-virtual {v8, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2
    :cond_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-ge v7, v8, :cond_1

    .line 3
    iget-object v7, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    const-string v8, "phone"

    .line 4
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 5
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    sget-object v7, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->getUMIDString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 8
    invoke-virtual {p0}, Lcom/papa/sim/statistic/q;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catchall_0
    move-exception v7

    .line 9
    sget-object v8, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    if-eqz v8, :cond_3

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->getUMIDString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/papa/sim/statistic/q;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    sput-object v6, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    .line 13
    :cond_4
    :goto_0
    throw v7

    :catch_1
    nop

    .line 14
    sget-object v7, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->getUMIDString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 16
    invoke-virtual {p0}, Lcom/papa/sim/statistic/q;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 17
    :catch_2
    sput-object v6, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    .line 18
    :cond_6
    :goto_2
    sget-object v0, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/papa/sim/statistic/q;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    .line 20
    :cond_8
    sget-object v0, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->i()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/pref/b;->C(Ljava/lang/String;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v1, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    const-string v2, "phone"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const-string v1, ",brand:"

    const-string v2, "[version:"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa/sim/statistic/q;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",imei:   ,imsi:    ,model:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",number:    ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    const-string v3, "phone"

    .line 4
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 8
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 9
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u624b\u673aIMEI\u53f7\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u624b\u673aIESI\u53f7\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u624b\u673a\u578b\u53f7\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u624b\u673a\u54c1\u724c\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u624b\u673a\u53f7\u7801"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/papa/sim/statistic/q;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",imei:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/papa/sim/statistic/q;->i:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",imsi:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",model:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",number:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 6

    const-string v0, "02_00_00_00_00_00"

    const-string v1, "02:00:00:00:00:00"

    .line 1
    sget-object v2, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    return-object v0

    .line 2
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-le v2, v4, :cond_1

    return-object v3

    .line 3
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "wifi"

    .line 4
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 5
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    sput-object v2, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/papa/sim/statistic/q;->h()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v2, v3

    .line 10
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    sget-object v4, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/papa/sim/statistic/q;->h()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    .line 13
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u624b\u673amacAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    sget-object v0, Lcom/papa/sim/statistic/q;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/q;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/papa/sim/statistic/q;->e:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->j(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/papa/sim/statistic/c;->b([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/papa/sim/statistic/q;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    :cond_1
    sget-object v0, Lcom/papa/sim/statistic/q;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/umeng/commonsdk/UMConfigure;->getUMIDString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method public o()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public p()[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/papa/sim/statistic/q;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x1

    .line 4
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v1, v0, v2

    return-object v0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/papa/sim/statistic/q;->d:Ljava/lang/String;

    return-void
.end method
