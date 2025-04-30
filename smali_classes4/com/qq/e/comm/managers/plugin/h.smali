.class Lcom/qq/e/comm/managers/plugin/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "e_qq_com_plugin"

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/managers/plugin/h;->a:Ljava/lang/String;

    const-string v0, "e_qq_com_dex"

    invoke-static {v0}, Lcom/qq/e/comm/managers/plugin/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qq/e/comm/managers/plugin/h;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    sget-object v0, Lcom/qq/e/comm/managers/plugin/h;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lcom/qq/e/comm/managers/plugin/h;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    :goto_0
    invoke-static {p0}, Lcom/qq/e/comm/managers/plugin/h;->a(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/h;->a(Ljava/io/OutputStream;)V

    return v0

    :cond_1
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x4000

    :try_start_2
    new-array v1, v1, [B

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v3, v1, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/qq/e/comm/managers/plugin/h;->a(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/qq/e/comm/managers/plugin/h;->a(Ljava/io/OutputStream;)V

    return v2

    :catchall_0
    move-object v1, v3

    :catchall_1
    const-string v3, "Exception while copy from InputStream to File %s"

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qq/e/comm/util/GDTLogger;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-static {p0}, Lcom/qq/e/comm/managers/plugin/h;->a(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/qq/e/comm/managers/plugin/h;->a(Ljava/io/OutputStream;)V

    throw p1

    :cond_3
    :goto_2
    return v0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    const-string v0, "gdt_plugin"

    return-object v0
.end method

.method static c(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Target File Can not be null in StringUtil.writeTo"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static d(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    .line 1
    sget-object v1, Lcom/qq/e/comm/managers/plugin/h;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v1, "update_lc"

    .line 2
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static e(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    .line 1
    sget-object v1, Lcom/qq/e/comm/managers/plugin/h;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v1, "gdt_plugin.next"

    .line 2
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static f(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    .line 1
    sget-object v1, Lcom/qq/e/comm/managers/plugin/h;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v1, "gdt_plugin.next.sig"

    .line 2
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static g(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    .line 1
    sget-object v1, Lcom/qq/e/comm/managers/plugin/h;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v1, "gdt_plugin.jar"

    .line 2
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static h(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    .line 1
    sget-object v1, Lcom/qq/e/comm/managers/plugin/h;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    const-string v1, "gdt_plugin.jar.sig"

    .line 2
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
