.class Lcom/join/mgps/mod/utils/e$a;
.super Ljava/lang/Object;
.source "SoLibManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/mod/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/zip/ZipFile;

.field private c:Ljava/util/zip/ZipEntry;

.field private d:Landroid/content/Context;

.field private e:J

.field private f:Ljava/lang/String;

.field final synthetic g:Lcom/join/mgps/mod/utils/e;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/utils/e;Landroid/content/Context;Ljava/lang/String;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/utils/e$a;->g:Lcom/join/mgps/mod/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/join/mgps/mod/utils/e$a;->f:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/join/mgps/mod/utils/e$a;->b:Ljava/util/zip/ZipFile;

    .line 8
    iput-object p2, p0, Lcom/join/mgps/mod/utils/e$a;->d:Landroid/content/Context;

    .line 9
    iput-object p5, p0, Lcom/join/mgps/mod/utils/e$a;->c:Ljava/util/zip/ZipEntry;

    .line 10
    invoke-virtual {p5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/join/mgps/mod/utils/e$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/mod/utils/e$a;->a:Ljava/lang/String;

    .line 11
    iput-wide p6, p0, Lcom/join/mgps/mod/utils/e$a;->e:J

    .line 12
    :try_start_1
    new-instance p1, Ljava/util/zip/ZipFile;

    invoke-virtual {p4}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/mgps/mod/utils/e$a;->b:Ljava/util/zip/ZipFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private b(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    if-gtz p1, :cond_1

    const/16 p1, 0x400

    :cond_1
    return p1
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/e$a;->b:Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/join/mgps/mod/utils/e$a;->c:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/join/mgps/mod/utils/e$a;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/join/mgps/mod/utils/e$a;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/mod/utils/e$a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/mod/utils/e$a;->b:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/mod/utils/e$a;->b(Ljava/io/InputStream;)I

    move-result p2

    .line 4
    new-array v1, p2, [B

    :goto_0
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, p2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 6
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 8
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    :goto_1
    return-void
.end method

.method public run()V
    .locals 6

    const-string v0, "com.join.android.app.mgsim.wufun.soCopyFinish"

    const-string v1, "soName"

    .line 1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.join.android.app.mgsim.wufun.soCopyStart"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v3, p0, Lcom/join/mgps/mod/utils/e$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/mod/utils/e$a;->d()V

    .line 5
    iget-object v2, p0, Lcom/join/mgps/mod/utils/e$a;->d:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 6
    iget-object v3, p0, Lcom/join/mgps/mod/utils/e$a;->c:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/join/mgps/mod/utils/e$a;->e:J

    invoke-static {v2, v3, v4, v5}, Lcom/join/mgps/mod/utils/PluginConfig;->setSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 7
    :cond_0
    invoke-static {}, Lcom/join/mgps/mod/utils/e;->a()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy so lib success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/mod/utils/e$a;->c:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 9
    :try_start_1
    invoke-static {}, Lcom/join/mgps/mod/utils/e;->a()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copy so lib failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/mod/utils/e$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 14
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/mod/utils/e$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 17
    throw v2
.end method
