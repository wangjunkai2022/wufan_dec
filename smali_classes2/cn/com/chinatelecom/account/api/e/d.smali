.class public Lcn/com/chinatelecom/account/api/e/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "cn.com.chinatelecom.account.api.e.d"

.field private static b:Ljava/lang/String; = ""

.field private static final c:Ljava/util/regex/Pattern;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/account/api/e/d;->c:Ljava/util/regex/Pattern;

    const-string v0, ""

    sput-object v0, Lcn/com/chinatelecom/account/api/e/d;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/chinatelecom/account/api/e/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/account/api/e/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/com/chinatelecom/account/api/e/d;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/com/chinatelecom/account/api/e/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcn/com/chinatelecom/account/api/e/d;->d:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_d_i_u"

    invoke-static {p0, v0, p1}, Lcn/com/chinatelecom/account/api/e/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcn/com/chinatelecom/account/api/e/d;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v0, 0x15

    :try_start_0
    new-array v0, v0, [B

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    const/16 v5, 0x8

    aput-byte v5, v0, v3

    const/16 v3, 0x1e

    const/4 v6, 0x3

    aput-byte v3, v0, v6

    const/4 v7, 0x4

    aput-byte v6, v0, v7

    const/4 v7, 0x5

    aput-byte v7, v0, v7

    const/4 v8, 0x6

    aput-byte v5, v0, v8

    const/4 v8, 0x7

    const/16 v9, 0x42

    aput-byte v9, v0, v8

    aput-byte v6, v0, v5

    const/16 v5, 0x1f

    const/16 v8, 0x9

    aput-byte v5, v0, v8

    const/16 v10, 0xa

    aput-byte v9, v0, v10

    const/16 v9, 0xb

    const/16 v10, 0x1c

    aput-byte v10, v0, v9

    const/16 v9, 0xc

    aput-byte v3, v0, v9

    aput-byte v6, v0, v1

    const/16 v1, 0xe

    aput-byte v10, v0, v1

    const/16 v1, 0xf

    aput-byte v8, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    const/16 v3, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v7, v0, v1

    const/16 v1, 0x13

    aput-byte v8, v0, v1

    const/16 v1, 0x14

    aput-byte v5, v0, v1

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "get"

    :try_start_1
    new-array v1, v4, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    array-length v1, p0

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v5, p0, v3

    add-int/lit8 v6, v4, 0x1

    ushr-int/lit8 v7, v5, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v0, v7

    aput-char v7, v2, v4

    add-int/lit8 v4, v6, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static b()Ljava/lang/StringBuffer;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "wlan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "eth0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v4, v3, [B

    fill-array-data v4, :array_0

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "-1"

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result p0

    move-object v5, v0

    move v0, p0

    move-object p0, v5

    :goto_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, -0x1

    if-eq v0, p0, :cond_3

    return v1

    :cond_3
    return v2

    nop

    :array_0
    .array-data 1
        0x4t
        0x18t
        0x18t
        0x1ct
        0x42t
        0x1ct
        0x1et
        0x3t
        0x14t
        0x15t
        0x24t
        0x3t
        0x1ft
        0x18t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4t
        0x18t
        0x18t
        0x1ct
        0x42t
        0x1ct
        0x1et
        0x3t
        0x14t
        0x15t
        0x3ct
        0x3t
        0x1et
        0x18t
    .end array-data
.end method

.method public static c()Z
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0

    nop

    :array_0
    .array-data 1
        0x43t
        0x1ft
        0x15t
        0x1ft
        0x18t
        0x9t
        0x1t
        0x43t
        0xet
        0x5t
        0x2t
        0x43t
        0x1ft
        0x19t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x43t
        0x1ft
        0x15t
        0x1ft
        0x18t
        0x9t
        0x1t
        0x43t
        0x14t
        0xet
        0x5t
        0x2t
        0x43t
        0x1ft
        0x19t
    .end array-data
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/d;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/d;->i(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ls -l "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x73

    if-eq p0, v1, :cond_0

    const/16 v1, 0x78

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_2
    throw p0
.end method

.method public static d()Z
    .locals 5

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0

    :array_0
    .array-data 1
        0x18t
        0x19t
        0x2t
        0x5ct
    .end array-data

    :array_1
    .array-data 1
        0x1ct
        0x1ct
        0x1ct
        0x5ct
    .end array-data
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 29

    move-object/from16 v0, p0

    const/16 v2, 0x8

    :try_start_0
    new-array v3, v2, [B

    const/16 v4, 0xb

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    aput-byte v6, v3, v7

    const/4 v8, 0x2

    aput-byte v5, v3, v8

    aput-byte v2, v3, v6

    const/16 v9, 0xa

    const/4 v10, 0x4

    aput-byte v9, v3, v10

    const/4 v11, 0x5

    aput-byte v11, v3, v11

    const/16 v12, 0x1f

    const/4 v13, 0x6

    aput-byte v12, v3, v13

    const/4 v14, 0x7

    aput-byte v10, v3, v14

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v3

    new-array v15, v4, [B

    const/16 v16, 0x1e

    aput-byte v16, v15, v5

    aput-byte v6, v15, v7

    const/16 v17, 0x42

    aput-byte v17, v15, v8

    aput-byte v10, v15, v6

    const/16 v1, 0xd

    aput-byte v1, v15, v10

    aput-byte v16, v15, v11

    aput-byte v2, v15, v13

    const/16 v19, 0x1b

    aput-byte v19, v15, v14

    aput-byte v1, v15, v2

    const/16 v19, 0x9

    aput-byte v16, v15, v19

    aput-byte v19, v15, v9

    invoke-static {v15}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v15

    const/16 v12, 0xe

    new-array v1, v12, [B

    aput-byte v16, v1, v5

    aput-byte v6, v1, v7

    aput-byte v17, v1, v8

    aput-byte v14, v1, v6

    aput-byte v19, v1, v10

    aput-byte v16, v1, v11

    aput-byte v8, v1, v13

    aput-byte v19, v1, v14

    aput-byte v5, v1, v2

    aput-byte v17, v1, v19

    const/16 v22, 0x1d

    aput-byte v22, v1, v9

    aput-byte v19, v1, v4

    const/16 v22, 0xc

    aput-byte v7, v1, v22

    const/16 v23, 0x19

    const/16 v21, 0xd

    aput-byte v23, v1, v21

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v1

    new-array v12, v14, [B

    aput-byte v4, v12, v5

    aput-byte v19, v12, v7

    aput-byte v8, v12, v8

    aput-byte v19, v12, v6

    aput-byte v16, v12, v10

    aput-byte v11, v12, v11

    const/16 v25, 0xf

    aput-byte v25, v12, v13

    invoke-static {v12}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v12

    const/16 v4, 0x11

    new-array v4, v4, [B

    aput-byte v16, v4, v5

    aput-byte v6, v4, v7

    aput-byte v17, v4, v8

    const/16 v27, 0x1c

    aput-byte v27, v4, v6

    aput-byte v16, v4, v10

    aput-byte v6, v4, v11

    aput-byte v2, v4, v13

    aput-byte v23, v4, v14

    aput-byte v25, v4, v2

    const/16 v28, 0x18

    aput-byte v28, v4, v19

    aput-byte v17, v4, v9

    const/16 v17, 0xb

    aput-byte v2, v4, v17

    aput-byte v19, v4, v22

    const/16 v17, 0x1a

    const/16 v21, 0xd

    aput-byte v17, v4, v21

    const/16 v17, 0xe

    aput-byte v11, v4, v17

    aput-byte v25, v4, v25

    const/16 v17, 0x10

    aput-byte v19, v4, v17

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v15}, Lcn/com/chinatelecom/account/api/e/d;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v15, :cond_0

    return v7

    :cond_0
    const-string v15, "1"

    :try_start_1
    invoke-static {v0, v1}, Lcn/com/chinatelecom/account/api/e/d;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v7

    :cond_1
    invoke-static {v0, v4}, Lcn/com/chinatelecom/account/api/e/d;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v7

    :cond_2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    new-array v2, v9, [B

    const/16 v24, 0x2b

    aput-byte v24, v2, v5

    aput-byte v19, v2, v7

    aput-byte v8, v2, v8

    const/16 v24, 0x15

    aput-byte v24, v2, v6

    aput-byte v7, v2, v10

    aput-byte v6, v2, v11

    const/16 v24, 0x18

    aput-byte v24, v2, v13

    aput-byte v11, v2, v14

    const/16 v17, 0x8

    aput-byte v6, v2, v17

    aput-byte v8, v2, v19

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v2

    new-array v9, v14, [B

    const/16 v26, 0xb

    aput-byte v26, v9, v5

    aput-byte v19, v9, v7

    aput-byte v8, v9, v8

    aput-byte v19, v9, v6

    aput-byte v16, v9, v10

    aput-byte v11, v9, v11

    aput-byte v25, v9, v13

    invoke-static {v9}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v9

    new-array v13, v6, [B

    const/16 v20, 0x1f

    aput-byte v20, v13, v5

    const/16 v17, 0x8

    aput-byte v17, v13, v7

    aput-byte v14, v13, v8

    invoke-static {v13}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v7

    :cond_3
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v7

    :cond_4
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v7

    :cond_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v12, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v15, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_4

    :cond_6
    const/16 v0, 0xd

    new-array v0, v0, [B

    const/16 v1, 0x43

    aput-byte v1, v0, v5

    aput-byte v27, v0, v7

    aput-byte v16, v0, v8

    aput-byte v6, v0, v6

    aput-byte v25, v0, v10

    const/16 v1, 0x43

    aput-byte v1, v0, v11

    const/4 v1, 0x6

    aput-byte v25, v0, v1

    const/4 v1, 0x7

    aput-byte v27, v0, v1

    const/16 v1, 0x8

    aput-byte v23, v0, v1

    aput-byte v11, v0, v19

    const/16 v1, 0xa

    aput-byte v8, v0, v1

    const/16 v2, 0xb

    aput-byte v1, v0, v2

    aput-byte v6, v0, v22

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    new-array v2, v1, [B

    const/16 v3, 0x2b

    aput-byte v3, v2, v5

    aput-byte v6, v2, v7

    aput-byte v5, v2, v8

    aput-byte v1, v2, v6

    const/16 v1, 0xa

    aput-byte v1, v2, v10

    aput-byte v11, v2, v11

    const/16 v1, 0x1f

    const/4 v3, 0x6

    aput-byte v1, v2, v3

    const/4 v1, 0x7

    aput-byte v10, v2, v1

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v7

    :cond_8
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return v5

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v3

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :cond_9
    :goto_4
    return v7

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    :goto_5
    const/16 v18, 0x0

    :goto_6
    if-eqz v18, :cond_a

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_7
    if-eqz v2, :cond_b

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_8
    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "key_d_i_u"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/com/chinatelecom/account/api/e/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 5

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :catch_1
    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v4

    :cond_3
    :goto_2
    return v3

    :array_0
    .array-data 1
        0x8t
        0x9t
        0x42t
        0x1et
        0x3t
        0xet
        0x1at
        0x42t
        0xdt
        0x2t
        0x8t
        0x1et
        0x3t
        0x5t
        0x8t
        0x42t
        0x14t
        0x1ct
        0x3t
        0x1ft
        0x9t
        0x8t
        0x42t
        0x5t
        0x2t
        0x1ft
        0x18t
        0xdt
        0x0t
        0x0t
        0x9t
        0x1et
    .end array-data

    :array_1
    .array-data 1
        0xft
        0x3t
        0x1t
        0x42t
        0x1ft
        0xdt
        0x19t
        0x1et
        0x5t
        0x7t
        0x42t
        0x1ft
        0x19t
        0xet
        0x1ft
        0x18t
        0x1et
        0xdt
        0x18t
        0x9t
    .end array-data
.end method

.method private static h(Landroid/content/Context;)Z
    .locals 25

    const/4 v0, 0x6

    :try_start_0
    new-array v2, v0, [B

    const/16 v3, 0x43

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const/16 v5, 0x1c

    const/4 v6, 0x1

    aput-byte v5, v2, v6

    const/4 v7, 0x2

    const/16 v8, 0x1e

    aput-byte v8, v2, v7

    const/4 v9, 0x3

    aput-byte v9, v2, v9

    const/16 v10, 0xf

    const/4 v11, 0x4

    aput-byte v10, v2, v11

    const/4 v12, 0x5

    aput-byte v3, v2, v12

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v2

    new-array v13, v12, [B

    aput-byte v3, v13, v4

    aput-byte v6, v13, v6

    const/16 v3, 0xd

    aput-byte v3, v13, v7

    aput-byte v5, v13, v9

    const/16 v14, 0x1f

    aput-byte v14, v13, v11

    invoke-static {v13}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x14

    new-array v15, v15, [B

    aput-byte v10, v15, v4

    aput-byte v9, v15, v6

    aput-byte v6, v15, v7

    const/16 v16, 0x42

    aput-byte v16, v15, v9

    aput-byte v14, v15, v11

    aput-byte v3, v15, v12

    const/16 v17, 0x19

    aput-byte v17, v15, v0

    const/16 v18, 0x7

    aput-byte v8, v15, v18

    const/16 v19, 0x8

    aput-byte v12, v15, v19

    const/16 v20, 0x9

    aput-byte v18, v15, v20

    const/16 v21, 0xa

    aput-byte v16, v15, v21

    const/16 v22, 0xb

    aput-byte v14, v15, v22

    const/16 v23, 0xc

    aput-byte v17, v15, v23

    const/16 v17, 0xe

    aput-byte v17, v15, v3

    aput-byte v14, v15, v17

    const/16 v23, 0x18

    aput-byte v23, v15, v10

    const/16 v23, 0x10

    aput-byte v8, v15, v23

    const/16 v23, 0x11

    aput-byte v3, v15, v23

    const/16 v23, 0x12

    const/16 v24, 0x18

    aput-byte v24, v15, v23

    const/16 v23, 0x13

    aput-byte v20, v15, v23

    invoke-static {v15}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v15

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/16 v23, 0x34

    aput-byte v23, v1, v4

    aput-byte v5, v1, v6

    aput-byte v9, v1, v7

    aput-byte v14, v1, v9

    aput-byte v20, v1, v11

    aput-byte v19, v1, v12

    const/16 v5, 0x2e

    aput-byte v5, v1, v0

    aput-byte v8, v1, v18

    aput-byte v12, v1, v19

    aput-byte v19, v1, v20

    aput-byte v22, v1, v21

    aput-byte v20, v1, v22

    const/16 v5, 0xc

    aput-byte v16, v1, v5

    aput-byte v0, v1, v3

    aput-byte v3, v1, v17

    aput-byte v8, v1, v10

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v7, ".so"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".jar"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_1
    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v6

    :cond_4
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return v6

    :cond_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return v4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_9
    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method

.method private static i(Landroid/content/Context;)Z
    .locals 14

    :try_start_0
    new-instance p0, Ljava/lang/Exception;

    const-string/jumbo v0, "we have exception"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x23

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    invoke-static {v2}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    invoke-static {v1}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    invoke-static {v3}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    invoke-static {v4}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12

    new-array v5, v5, [B

    fill-array-data v5, :array_5

    invoke-static {v5}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x19

    new-array v6, v6, [B

    fill-array-data v6, :array_6

    invoke-static {v6}, Lcn/com/chinatelecom/account/api/e/l;->a([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length v7, p0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v7, :cond_4

    aget-object v11, p0, v9

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_0

    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x2

    if-ne v10, v12, :cond_0

    return v13

    :cond_0
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    return v13

    :cond_1
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    return v13

    :cond_2
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    return v13

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    return v8

    nop

    :array_0
    .array-data 1
        0xft
        0x3t
        0x1t
        0x42t
        0xdt
        0x2t
        0x8t
        0x1et
        0x3t
        0x5t
        0x8t
        0x42t
        0x5t
        0x2t
        0x18t
        0x9t
        0x1et
        0x2t
        0xdt
        0x0t
        0x42t
        0x3t
        0x1ft
        0x42t
        0x36t
        0x15t
        0xbt
        0x3t
        0x18t
        0x9t
        0x25t
        0x2t
        0x5t
        0x18t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x8t
        0x9t
        0x42t
        0x1et
        0x3t
        0xet
        0x1at
        0x42t
        0xdt
        0x2t
        0x8t
        0x1et
        0x3t
        0x5t
        0x8t
        0x42t
        0x14t
        0x1ct
        0x3t
        0x1ft
        0x9t
        0x8t
        0x42t
        0x34t
        0x1ct
        0x3t
        0x1ft
        0x9t
        0x8t
        0x2et
        0x1et
        0x5t
        0x8t
        0xbt
        0x9t
    .end array-data

    :array_2
    .array-data 1
        0x8t
        0x9t
        0x42t
        0x1et
        0x3t
        0xet
        0x1at
        0x42t
        0xdt
        0x2t
        0x8t
        0x1et
        0x3t
        0x5t
        0x8t
        0x42t
        0x14t
        0x1ct
        0x3t
        0x1ft
        0x9t
        0x8t
        0x42t
        0x34t
        0x1ct
        0x3t
        0x1ft
        0x9t
        0x8t
        0x2et
        0x1et
        0x5t
        0x8t
        0xbt
        0x9t
    .end array-data

    :array_3
    .array-data 1
        0x5t
        0x2t
        0x1at
        0x3t
        0x7t
        0x9t
        0x8t
    .end array-data

    :array_4
    .array-data 1
        0x1t
        0xdt
        0x5t
        0x2t
    .end array-data

    :array_5
    .array-data 1
        0x4t
        0xdt
        0x2t
        0x8t
        0x0t
        0x9t
        0x24t
        0x3t
        0x3t
        0x7t
        0x9t
        0x8t
        0x21t
        0x9t
        0x18t
        0x4t
        0x3t
        0x8t
    .end array-data

    nop

    :array_6
    .array-data 1
        0xft
        0x3t
        0x1t
        0x42t
        0x1ft
        0xdt
        0x19t
        0x1et
        0x5t
        0x7t
        0x42t
        0x1ft
        0x19t
        0xet
        0x1ft
        0x18t
        0x1et
        0xdt
        0x18t
        0x9t
        0x42t
        0x21t
        0x3ft
        0x48t
        0x5et
    .end array-data
.end method
