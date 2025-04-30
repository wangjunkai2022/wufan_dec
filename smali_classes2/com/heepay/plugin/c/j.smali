.class public Lcom/heepay/plugin/c/j;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/heepay/plugin/c/j;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HyID"

    iput-object v0, p0, Lcom/heepay/plugin/c/j;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/heepay/plugin/c/j;
    .locals 2

    sget-object v0, Lcom/heepay/plugin/c/j;->a:Lcom/heepay/plugin/c/j;

    if-nez v0, :cond_1

    const-class v0, Lcom/heepay/plugin/c/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/heepay/plugin/c/j;->a:Lcom/heepay/plugin/c/j;

    if-nez v1, :cond_0

    new-instance v1, Lcom/heepay/plugin/c/j;

    invoke-direct {v1}, Lcom/heepay/plugin/c/j;-><init>()V

    sput-object v1, Lcom/heepay/plugin/c/j;->a:Lcom/heepay/plugin/c/j;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/heepay/plugin/c/j;->a:Lcom/heepay/plugin/c/j;

    return-object v0
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int p1, v1

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private b(Ljava/io/File;)V
    .locals 1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "HyID"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/heepay/plugin/c/j;->b(Ljava/io/File;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/heepay/plugin/c/j;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
