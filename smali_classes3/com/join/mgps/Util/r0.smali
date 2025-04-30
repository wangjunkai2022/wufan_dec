.class public Lcom/join/mgps/Util/r0;
.super Ljava/lang/Object;
.source "JpegOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/r0$b;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "jpegoptim"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:I

.field private g:Z

.field private h:[Ljava/lang/String;

.field private i:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/Util/r0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/r0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/Util/r0;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/join/mgps/Util/r0;->d:I

    .line 6
    iput p5, p0, Lcom/join/mgps/Util/r0;->f:I

    .line 7
    iput-boolean p6, p0, Lcom/join/mgps/Util/r0;->g:Z

    .line 8
    invoke-direct {p0}, Lcom/join/mgps/Util/r0;->g()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/Util/r0;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/r0;->h:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/r0;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object p0, v0

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    .line 5
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "jpegoptim"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/join/mgps/Util/r0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "755"

    const-string v1, "chmod"

    .line 1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    const/4 p2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x2000

    :try_start_2
    new-array p2, p2, [B

    .line 6
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_0

    .line 7
    invoke-virtual {p1, p2, v6, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 8
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 10
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/String;

    aput-object v1, p1, v6

    aput-object v0, p1, v4

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-object p2, p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, p1

    :goto_1
    if-eqz p1, :cond_1

    .line 13
    :try_start_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz p0, :cond_2

    .line 14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 15
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/String;

    aput-object v1, p1, v6

    aput-object v0, p1, v4

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 18
    :catch_1
    throw p2

    :catch_2
    move-object p0, p2

    :catch_3
    :goto_2
    if-eqz p2, :cond_3

    .line 19
    :try_start_5
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_3
    if-eqz p0, :cond_4

    .line 20
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 21
    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/String;

    aput-object v1, p1, v6

    aput-object v0, p1, v4

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_5
    :goto_3
    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/Util/r0;->f:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/Util/r0;->e:Z

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/Util/r0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/join/mgps/Util/r0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-b"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/r0;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-boolean v1, p0, Lcom/join/mgps/Util/r0;->e:Z

    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/join/mgps/Util/r0;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget-boolean v1, p0, Lcom/join/mgps/Util/r0;->g:Z

    if-eqz v1, :cond_2

    const-string v1, "-p"

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/Util/r0;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-od"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/Util/r0;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/join/mgps/Util/r0;->h:[Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method d(Lcom/join/mgps/Util/r0$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/r0;->i:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/Util/r0$a;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/Util/r0$a;-><init>(Lcom/join/mgps/Util/r0;Lcom/join/mgps/Util/r0$b;)V

    iput-object v0, p0, Lcom/join/mgps/Util/r0;->i:Landroid/os/AsyncTask;

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/Util/r0;->i:Landroid/os/AsyncTask;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/join/mgps/Util/r0;->i:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/join/mgps/Util/r0;->h:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method
