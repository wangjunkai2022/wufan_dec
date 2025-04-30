.class public Lcom/papa/sim/statistic/f;
.super Ljava/lang/Object;
.source "GetDeviceId.java"


# static fields
.field private static final a:Ljava/lang/String; = "aray/cache/devices"

.field private static final b:Ljava/lang/String; = ".DEVICES"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 3
    aget-byte v2, p0, v1

    if-gez v2, :cond_0

    add-int/lit16 v2, v2, 0x100

    :cond_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    const-string v3, "0"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/f;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/papa/sim/statistic/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/papa/sim/statistic/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/papa/sim/statistic/f;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 16
    invoke-static {v0, p0}, Lcom/papa/sim/statistic/f;->h(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ".DEVICES"

    const-string v2, "aray/cache/devices"

    if-eqz v0, :cond_1

    .line 2
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string p0, ""

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string v1, "eth1"

    .line 2
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "wlan0"

    .line 3
    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    return-object p0

    .line 4
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 5
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_2

    aget-byte v6, v1, v4

    const-string v7, "%02X:"

    new-array v5, v5, [Ljava/lang/Object;

    .line 6
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    return-object p0
.end method

.method public static f(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 4
    invoke-static {p0, p1}, Lcom/papa/sim/statistic/f;->a([BZ)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/papa/sim/statistic/f;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    new-instance p0, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 6
    :goto_0
    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result p0

    const/4 v2, -0x1

    if-le p0, v2, :cond_0

    int-to-char p0, p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/papa/sim/statistic/f;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    new-instance p1, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
