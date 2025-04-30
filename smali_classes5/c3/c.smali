.class public Lc3/c;
.super Ljava/lang/Object;
.source "ZipFile.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Le3/o;

.field private d:Z

.field private e:Lf3/a;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc3/c;->a:Ljava/lang/String;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lc3/c;->b:I

    .line 5
    new-instance p1, Lf3/a;

    invoke-direct {p1}, Lf3/a;-><init>()V

    iput-object p1, p0, Lc3/c;->e:Lf3/a;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lc3/c;->f:Z

    return-void

    .line 7
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const/4 v0, 0x1

    const-string v1, "Input zip file parameter is not null"

    invoke-direct {p1, v1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc3/c;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private J()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget v0, p0, Lc3/c;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lc3/a;

    invoke-direct {v0, v1}, Lc3/a;-><init>(Ljava/io/RandomAccessFile;)V

    .line 7
    iget-object v2, p0, Lc3/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lc3/a;->d(Ljava/lang/String;)Le3/o;

    move-result-object v0

    iput-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_0

    .line 8
    iget-object v2, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Le3/o;->D(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 10
    :goto_0
    :try_start_3
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 11
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 12
    :catch_3
    :cond_1
    throw v0

    .line 13
    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Invalid mode"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_3
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "no read access for the input zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "zip file does not exist"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Ljava/io/File;Le3/p;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc3/c;->g()V

    .line 2
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {v0}, Le3/o;->n()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "This is a split archive. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    new-instance p3, Lnet/lingala/zip4j/zip/b;

    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-direct {p3, v0}, Lnet/lingala/zip4j/zip/b;-><init>(Le3/o;)V

    .line 6
    iget-object v0, p0, Lc3/c;->e:Lf3/a;

    iget-boolean v1, p0, Lc3/c;->f:Z

    invoke-virtual {p3, p1, p2, v0, v1}, Lnet/lingala/zip4j/zip/b;->c(Ljava/io/File;Le3/p;Lf3/a;Z)V

    return-void

    .line 7
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lc3/c;->J()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lc3/c;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    new-instance v0, Le3/o;

    invoke-direct {v0}, Le3/o;-><init>()V

    iput-object v0, p0, Lc3/c;->c:Le3/o;

    .line 2
    iget-object v1, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le3/o;->D(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    iget-object v1, p0, Lc3/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le3/o;->u(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc3/c;->J()V

    .line 2
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le3/o;->b()Le3/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->b()Le3/c;

    move-result-object v0

    invoke-virtual {v0}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public B(Le3/h;)Lnet/lingala/zip4j/io/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-direct {p0}, Lc3/c;->g()V

    .line 2
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lnet/lingala/zip4j/unzip/c;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/unzip/c;-><init>(Le3/o;)V

    .line 4
    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/unzip/c;->g(Le3/h;)Lnet/lingala/zip4j/io/h;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip model is null, cannot get inputstream"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "FileHeader is null, cannot get InputStream"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C()Lf3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc3/c;->e:Lf3/a;

    return-object v0
.end method

.method public D()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc3/c;->g()V

    .line 2
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->y(Le3/o;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public E()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lc3/c;->J()V

    .line 3
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->b()Le3/c;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->b()Le3/c;

    move-result-object v0

    invoke-virtual {v0}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->b()Le3/c;

    move-result-object v0

    invoke-virtual {v0}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le3/h;

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v2}, Le3/h;->D()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lc3/c;->d:Z

    .line 11
    :goto_2
    iget-boolean v0, p0, Lc3/c;->d:Z

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_4
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid zip file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc3/c;->f:Z

    return v0
.end method

.method public G()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lc3/c;->J()V

    .line 3
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "Zip Model is null"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->n()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lc3/c;->J()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public I(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lc3/c;->g()V

    .line 3
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lnet/lingala/zip4j/util/c;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/c;-><init>()V

    .line 5
    iget-object v1, p0, Lc3/c;->c:Le3/o;

    iget-object v2, p0, Lc3/c;->e:Lf3/a;

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/util/c;->h(Le3/o;Lf3/a;)V

    .line 6
    iget-object v1, p0, Lc3/c;->c:Le3/o;

    iget-object v2, p0, Lc3/c;->e:Lf3/a;

    iget-boolean v3, p0, Lc3/c;->f:Z

    invoke-virtual {v0, v1, p1, v2, v3}, Lnet/lingala/zip4j/util/c;->k(Le3/o;Ljava/io/File;Lf3/a;Z)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip model is null, corrupt zip file?"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "output Zip File already exists"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "outputZipFile is null, cannot merge split files"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public K(Le3/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lc3/c;->J()V

    .line 4
    :cond_0
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lnet/lingala/zip4j/util/c;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/c;-><init>()V

    .line 6
    iget-object v1, p0, Lc3/c;->c:Le3/o;

    iget-object v2, p0, Lc3/c;->e:Lf3/a;

    invoke-virtual {v0, v1, p1, v2}, Lnet/lingala/zip4j/util/c;->i(Le3/o;Le3/h;Lf3/a;)V

    .line 7
    iget-object v1, p0, Lc3/c;->c:Le3/o;

    iget-object v2, p0, Lc3/c;->e:Lf3/a;

    iget-boolean v3, p0, Lc3/c;->f:Z

    invoke-virtual {v0, v1, p1, v2, v3}, Lnet/lingala/zip4j/util/c;->m(Le3/o;Le3/h;Lf3/a;Z)Ljava/util/HashMap;

    return-void

    .line 8
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file header is null, cannot remove file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public L(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lc3/c;->J()V

    .line 5
    :cond_0
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-static {v0, p1}, Lnet/lingala/zip4j/util/h;->p(Le3/o;Ljava/lang/String;)Le3/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v0}, Lc3/c;->K(Le3/h;)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "could not find file header for file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "file name is empty or null, cannot remove file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public M(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lc3/c;->J()V

    .line 3
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Le3/o;->e()Le3/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lnet/lingala/zip4j/util/c;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/c;-><init>()V

    .line 6
    iget-object v1, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0, v1, p1}, Lnet/lingala/zip4j/util/c;->o(Le3/o;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "end of central directory is null, cannot set comment"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zipModel is null, cannot update zip file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip file does not exist, cannot set comment for zip file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input comment is null, cannot update zip file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public N(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lc3/c;->g:Ljava/lang/String;

    return-void

    .line 4
    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "unsupported charset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "null or empty charset name"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lc3/c;->P([C)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public P([C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lc3/c;->J()V

    .line 3
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip Model is null"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->b()Le3/c;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->b()Le3/c;

    move-result-object v0

    invoke-virtual {v0}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 6
    :goto_1
    iget-object v1, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v1}, Le3/o;->b()Le3/c;

    move-result-object v1

    invoke-virtual {v1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v1}, Le3/o;->b()Le3/c;

    move-result-object v1

    invoke-virtual {v1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v1}, Le3/o;->b()Le3/c;

    move-result-object v1

    invoke-virtual {v1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le3/h;

    invoke-virtual {v1}, Le3/h;->D()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v1}, Le3/o;->b()Le3/c;

    move-result-object v1

    invoke-virtual {v1}, Le3/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le3/h;

    invoke-virtual {v1, p1}, Le3/h;->b0([C)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid zip file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public Q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc3/c;->f:Z

    return-void
.end method

.method public a(Ljava/io/File;Le3/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0, p2}, Lc3/c;->b(Ljava/util/ArrayList;Le3/p;)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;Le3/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc3/c;->g()V

    .line 2
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/h;->a(Ljava/util/ArrayList;I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    .line 4
    iget-object v1, p0, Lc3/c;->e:Lf3/a;

    invoke-virtual {v1}, Lf3/a;->j()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    new-instance v0, Lnet/lingala/zip4j/zip/b;

    iget-object v1, p0, Lc3/c;->c:Le3/o;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/zip/b;-><init>(Le3/o;)V

    .line 9
    iget-object v1, p0, Lc3/c;->e:Lf3/a;

    iget-boolean v2, p0, Lc3/c;->f:Z

    invoke-virtual {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/zip/b;->b(Ljava/util/ArrayList;Le3/p;Lf3/a;Z)V

    return-void

    .line 10
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid operation - Zip4j is in busy state"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters are null, cannot add files to zip"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "One or more elements in the input ArrayList is not of type File"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file ArrayList is null, cannot add files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/io/File;Le3/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lc3/c;->d(Ljava/io/File;Le3/p;Z)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters are null, cannot add folder to zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input path is null, cannot add folder to zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;Le3/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lc3/c;->c(Ljava/io/File;Le3/p;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input path is null or empty, cannot add folder to zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/io/InputStream;Le3/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lc3/c;->Q(Z)V

    .line 2
    invoke-direct {p0}, Lc3/c;->g()V

    .line 3
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip file already exists. Zip file format does not allow updating split/spanned files"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    :goto_0
    new-instance v0, Lnet/lingala/zip4j/zip/b;

    iget-object v1, p0, Lc3/c;->c:Le3/o;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/zip/b;-><init>(Le3/o;)V

    .line 8
    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/zip/b;->d(Ljava/io/InputStream;Le3/p;)V

    return-void

    .line 9
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "internal error: zip model is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip parameters are null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "inputstream is null, cannot add file to zip"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/io/File;Le3/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Lc3/c;->l(Ljava/util/ArrayList;Le3/p;ZJ)V

    return-void
.end method

.method public j(Ljava/io/File;Le3/p;ZJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lc3/c;->l(Ljava/util/ArrayList;Le3/p;ZJ)V

    return-void
.end method

.method public k(Ljava/util/ArrayList;Le3/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-virtual/range {v0 .. v5}, Lc3/c;->l(Ljava/util/ArrayList;Le3/p;ZJ)V

    return-void
.end method

.method public l(Ljava/util/ArrayList;Le3/p;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/h;->a(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lc3/c;->h()V

    .line 5
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0, p3}, Le3/o;->x(Z)V

    .line 6
    iget-object p3, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {p3, p4, p5}, Le3/o;->y(J)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lc3/c;->b(Ljava/util/ArrayList;Le3/p;)V

    return-void

    .line 8
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "One or more elements in the input ArrayList is not of type File"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file ArrayList is null, cannot create zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "zip file: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " already exists. To add files to existing zip file use addFile method"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "zip file path is empty"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Ljava/io/File;Le3/p;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 1
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lc3/c;->h()V

    .line 3
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0, p3}, Le3/o;->x(Z)V

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {p3, p4, p5}, Le3/o;->y(J)V

    :cond_0
    const/4 p3, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lc3/c;->d(Ljava/io/File;Le3/p;Z)V

    return-void

    .line 6
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string p3, "zip file: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " already exists. To add files to existing zip file use addFolder method"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input parameters are null, cannot create zip file from folder"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "folderToAdd is null, cannot create zip file from folder"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Ljava/lang/String;Le3/p;ZJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lc3/c;->m(Ljava/io/File;Le3/p;ZJ)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "folderToAdd is empty or null, cannot create Zip File from folder"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lc3/c;->p(Ljava/lang/String;Le3/k;)V

    return-void
.end method

.method public p(Ljava/lang/String;Le3/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lc3/c;->J()V

    .line 5
    :cond_0
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lc3/c;->e:Lf3/a;

    invoke-virtual {v0}, Lf3/a;->j()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 7
    new-instance v0, Lnet/lingala/zip4j/unzip/c;

    iget-object v1, p0, Lc3/c;->c:Le3/o;

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/unzip/c;-><init>(Le3/o;)V

    .line 8
    iget-object v1, p0, Lc3/c;->e:Lf3/a;

    iget-boolean v2, p0, Lc3/c;->f:Z

    invoke-virtual {v0, p2, p1, v1, v2}, Lnet/lingala/zip4j/unzip/c;->e(Le3/k;Ljava/lang/String;Lf3/a;Z)V

    return-void

    .line 9
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid operation - Zip4j is in busy state"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Internal error occurred when extracting zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid output path"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "output path is null or invalid"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Le3/h;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lc3/c;->r(Le3/h;Ljava/lang/String;Le3/k;)V

    return-void
.end method

.method public r(Le3/h;Ljava/lang/String;Le3/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lc3/c;->s(Le3/h;Ljava/lang/String;Le3/k;Ljava/lang/String;)V

    return-void
.end method

.method public s(Le3/h;Ljava/lang/String;Le3/k;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lc3/c;->J()V

    .line 3
    iget-object v0, p0, Lc3/c;->e:Lf3/a;

    invoke-virtual {v0}, Lf3/a;->j()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v3, p0, Lc3/c;->c:Le3/o;

    iget-object v7, p0, Lc3/c;->e:Lf3/a;

    iget-boolean v8, p0, Lc3/c;->f:Z

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v8}, Le3/h;->b(Le3/o;Ljava/lang/String;Le3/k;Ljava/lang/String;Lf3/a;Z)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid operation - Zip4j is in busy state"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "destination path is empty or null, cannot extract file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file header is null, cannot extract file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lc3/c;->u(Ljava/lang/String;Ljava/lang/String;Le3/k;)V

    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Le3/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lc3/c;->v(Ljava/lang/String;Ljava/lang/String;Le3/k;Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Le3/k;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p2}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0}, Lc3/c;->J()V

    .line 4
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-static {v0, p1}, Lnet/lingala/zip4j/util/h;->p(Le3/o;Ljava/lang/String;)Le3/h;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p1, p0, Lc3/c;->e:Lf3/a;

    invoke-virtual {p1}, Lf3/a;->j()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 6
    iget-object v2, p0, Lc3/c;->c:Le3/o;

    iget-object v6, p0, Lc3/c;->e:Lf3/a;

    iget-boolean v7, p0, Lc3/c;->f:Z

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Le3/h;->b(Le3/o;Ljava/lang/String;Le3/k;Ljava/lang/String;Lf3/a;Z)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid operation - Zip4j is in busy state"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file header not found for given file name, cannot extract file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "destination string path is empty or null, cannot extract file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file to extract is null or empty, cannot extract file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lc3/c;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const-string v0, "windows-1254"

    if-nez p1, :cond_1

    .line 1
    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->B(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lnet/lingala/zip4j/util/e;->D0:Ljava/lang/String;

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lnet/lingala/zip4j/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    invoke-direct {p0}, Lc3/c;->g()V

    .line 5
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {v0}, Le3/o;->e()Le3/f;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->e()Le3/f;

    move-result-object v0

    invoke-virtual {v0}, Le3/f;->b()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v0}, Le3/o;->e()Le3/f;

    move-result-object v0

    invoke-virtual {v0}, Le3/f;->b()[B

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lc3/c;->c:Le3/o;

    invoke-virtual {v1}, Le3/o;->e()Le3/f;

    move-result-object v1

    invoke-virtual {v1}, Le3/f;->b()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_4
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "end of central directory record is null, cannot read comment"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip model is null, cannot read comment"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip file does not exist, cannot read comment"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc3/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public z(Ljava/lang/String;)Le3/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lnet/lingala/zip4j/util/h;->A(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lc3/c;->J()V

    .line 3
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Le3/o;->b()Le3/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc3/c;->c:Le3/o;

    invoke-static {v0, p1}, Lnet/lingala/zip4j/util/h;->p(Le3/o;Ljava/lang/String;)Le3/h;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input file name is emtpy or null, cannot get FileHeader"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
