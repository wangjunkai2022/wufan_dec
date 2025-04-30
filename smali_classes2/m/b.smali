.class public final Lm/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lm/b;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v1, p0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    new-instance v2, Ljava/io/DataInputStream;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "exit\n"

    .line 9
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :catchall_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_1
    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    :goto_1
    return-object v0
.end method

.method public static b()Lm/b;
    .locals 1

    .line 1
    sget-object v0, Lm/b;->b:Lm/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lm/b;

    invoke-direct {v0}, Lm/b;-><init>()V

    sput-object v0, Lm/b;->b:Lm/b;

    .line 3
    :cond_0
    sget-object v0, Lm/b;->b:Lm/b;

    return-object v0
.end method

.method public static d()Z
    .locals 6

    const-string v0, "root"

    const-string v1, "/system/xbin/"

    const-string v2, "/system/bin/"

    const-string v3, "/system/sbin/"

    const-string v4, "/sbin/"

    const-string v5, "/vendor/bin/"

    .line 1
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_3

    .line 2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "ls"

    aput-object v3, v1, v2

    const-string v3, "-l"

    const/4 v5, 0x1

    aput-object v3, v1, v5

    const/4 v3, 0x2

    aput-object v4, v1, v3

    .line 5
    invoke-static {v1}, Lm/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, v0, :cond_0

    goto :goto_1

    :cond_0
    return v5

    :cond_1
    :goto_1
    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return v2
.end method

.method private f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static g()Lcom/alipay/sdk/data/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/alipay/sdk/data/c;->a()Lcom/alipay/sdk/data/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lm/b;->a:Landroid/content/Context;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lm/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
