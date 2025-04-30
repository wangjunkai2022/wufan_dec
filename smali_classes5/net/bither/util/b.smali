.class public Lnet/bither/util/b;
.super Ljava/lang/Object;
.source "ImageCompressor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bither/util/b$f;,
        Lnet/bither/util/b$e;
    }
.end annotation


# static fields
.field private static e:I = 0x2

.field private static f:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static g:J

.field public static h:J

.field public static i:Landroid/graphics/Bitmap$CompressFormat;

.field private static j:Lnet/bither/util/b;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bither/util/b$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Lnet/bither/util/a;

    sget v2, Lnet/bither/util/b;->e:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x1f4

    move-object v0, v7

    move v1, v2

    invoke-direct/range {v0 .. v6}, Lnet/bither/util/a;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lnet/bither/util/b;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/32 v0, 0x4cccc

    .line 2
    sput-wide v0, Lnet/bither/util/b;->g:J

    const-wide/32 v0, 0x19999

    .line 3
    sput-wide v0, Lnet/bither/util/b;->h:J

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lnet/bither/util/b;->i:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    .line 3
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    return-void
.end method

.method private static B(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/bither/util/b$f;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "jpegoptim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 3
    invoke-static {p0, v3}, Lnet/bither/util/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    const/4 v8, 0x1

    const/4 v6, 0x1

    .line 4
    new-instance v1, Lnet/bither/util/c;

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    invoke-direct/range {v2 .. v8}, Lnet/bither/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 5
    new-instance v2, Lnet/bither/util/b$d;

    move-object v4, v2

    move v6, p3

    move-object v7, p0

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lnet/bither/util/b$d;-><init>(Ljava/lang/String;ILandroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V

    .line 6
    invoke-virtual {v1, v2}, Lnet/bither/util/c;->d(Lnet/bither/util/c$b;)V

    return-void
.end method

.method public static C(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, p2}, Lcom/join/mgps/Util/o1;->l(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 2
    invoke-static {p0, p1, p2}, Lnet/bither/util/b;->C(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    sget-object p1, Lnet/bither/util/b;->i:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x64

    invoke-virtual {v1, p1, p2, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 6
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 7
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_1

    .line 9
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :cond_1
    :goto_2
    throw p0

    :cond_2
    :goto_3
    return-void
.end method

.method static synthetic a(Lnet/bither/util/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/bither/util/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lnet/bither/util/b;->B(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V

    return-void
.end method

.method static synthetic c(Ljava/util/HashMap;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lnet/bither/util/b;->t(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Ljava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lnet/bither/util/b;->w(Ljava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V

    return-void
.end method

.method private static g(J)I
    .locals 2

    .line 1
    sget-wide v0, Lnet/bither/util/b;->g:J

    long-to-float v0, v0

    long-to-float p0, p0

    sub-float/2addr p0, v0

    const/high16 p1, 0x49800000    # 1048576.0f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/16 p0, 0x50

    goto :goto_0

    :cond_0
    const/16 p0, 0x14

    :goto_0
    const/4 p1, 0x1

    if-ge p0, p1, :cond_1

    const/4 p0, 0x5

    :cond_1
    return p0
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/bither/util/b;->o(Ljava/io/File;)J

    move-result-wide v0

    .line 3
    sget-wide v2, Lnet/bither/util/b;->g:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 4
    invoke-virtual {p0, p1, v4}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/Util/o1;->k(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/join/mgps/Util/o1;->n(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/bither/util/b;->o(Ljava/io/File;)J

    move-result-wide v0

    sget-wide v2, Lnet/bither/util/b;->g:J

    cmp-long p2, v0, v2

    if-gez p2, :cond_1

    .line 7
    invoke-virtual {p0, p1, v4}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 8
    invoke-virtual {p0, p1, p2}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static k(Ljava/io/File;)Z
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDir-->start delete dir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bither/util/b;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    new-array v5, v0, [Ljava/lang/String;

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteDir-->delete dir sub file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 6
    new-instance v5, Ljava/io/File;

    aget-object v6, v1, v2

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lnet/bither/util/b;->k(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDir-->finished delete dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static o(Ljava/io/File;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, p0

    .line 4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    move-wide v1, v0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v3

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 5
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 7
    :cond_0
    throw p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 10
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_3
    :goto_2
    return-wide v1
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    const-string v0, "forum_image"

    return-object v0
.end method

.method public static q()Lnet/bither/util/b;
    .locals 1

    .line 1
    sget-object v0, Lnet/bither/util/b;->j:Lnet/bither/util/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/bither/util/b;

    invoke-direct {v0}, Lnet/bither/util/b;-><init>()V

    sput-object v0, Lnet/bither/util/b;->j:Lnet/bither/util/b;

    .line 3
    :cond_0
    sget-object v0, Lnet/bither/util/b;->j:Lnet/bither/util/b;

    return-object v0
.end method

.method public static r()Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MG/.cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lnet/bither/util/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private static s(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/bither/util/b;->r()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static t(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private u(Ljava/lang/Boolean;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/bither/util/b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bither/util/b$e;

    .line 5
    invoke-interface {v1, p1, p2, p3}, Lnet/bither/util/b$e;->a(Ljava/lang/Boolean;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static w(Ljava/util/List;Ljava/util/HashMap;Lnet/bither/util/b$f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lnet/bither/util/b$f;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2, v0}, Lnet/bither/util/b$f;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    return-void
.end method

.method public e(Lnet/bither/util/b$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/bither/util/b;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bither/util/b;->d:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/bither/util/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lnet/bither/util/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    return-void
.end method

.method public h()Ljava/lang/Boolean;
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 6
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compressImage-->start notify task.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " addTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lnet/bither/util/b;->a:Landroid/content/Context;

    .line 3
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lnet/bither/util/b;->x(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    new-array p1, v0, [Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compressImage-->finish notify task.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    return-void
.end method

.method public l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "jpegoptim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1, v3}, Lnet/bither/util/c;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const/4 v8, 0x1

    const/4 v6, 0x1

    .line 6
    new-instance v1, Lnet/bither/util/c;

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lnet/bither/util/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 7
    new-instance v2, Lnet/bither/util/b$c;

    move-object v4, v2

    move-object v5, p0

    move-object v6, p3

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lnet/bither/util/b$c;-><init>(Lnet/bither/util/b;Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v2}, Lnet/bither/util/c;->d(Lnet/bither/util/c$b;)V

    return-void
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCompress1-->start compress.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v3, p0, Lnet/bither/util/b;->a:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    new-instance v8, Lnet/bither/util/b$b;

    invoke-direct {v8, p0, p2, p3}, Lnet/bither/util/b$b;-><init>(Lnet/bither/util/b;Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lnet/bither/util/NativeUtil;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLnet/bither/util/NativeUtil$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lnet/bither/util/b;->o(Ljava/io/File;)J

    move-result-wide v3

    const/16 v5, 0x64

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3
    :goto_0
    sget-wide v7, Lnet/bither/util/b;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "result=fail"

    const-string v10, " size="

    const-string v11, "notifyCompressSate-->system compress tool start.."

    const-string v12, "notifyCompressSate-->system compress tool =>"

    const-string v13, "quality="

    const/4 v14, 0x0

    const/4 v5, 0x1

    const/4 v15, 0x2

    cmp-long v16, v3, v7

    if-lez v16, :cond_1

    :try_start_1
    new-array v7, v15, [Ljava/lang/String;

    aput-object v11, v7, v14

    .line 4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 5
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0xa

    if-le v5, v7, :cond_0

    .line 6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 7
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/o1;->k(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/join/mgps/Util/o1;->o(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lnet/bither/util/b;->o(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_1

    .line 9
    :cond_0
    filled-new-array {v12, v9}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v0, v15}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    :goto_1
    const/16 v5, 0x64

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x64

    if-ne v3, v4, :cond_2

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/o1;->k(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/join/mgps/Util/o1;->o(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 13
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lnet/bither/util/b;->o(Ljava/io/File;)J

    move-result-wide v3

    .line 14
    :goto_2
    sget-wide v7, Lnet/bither/util/b;->g:J

    cmp-long v16, v3, v7

    if-lez v16, :cond_4

    new-array v7, v15, [Ljava/lang/String;

    aput-object v11, v7, v14

    .line 15
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v7}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_3

    .line 17
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/o1;->k(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/join/mgps/Util/o1;->o(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    .line 19
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lnet/bither/util/b;->o(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_2

    .line 20
    :cond_3
    filled-new-array {v12, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v0, v15}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v12, v2, v14

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "result=success"

    aput-object v3, v2, v15

    invoke-static {v2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v0, v5}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public v(Ljava/lang/String;I)V
    .locals 11

    const-string v0, " state="

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCompressSate-->start notifyCompressSate.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/4 v2, -0x1

    const-string v3, ""

    const-string v5, "notifyCompressSate-->put target to map.. destPath="

    const-string v6, ".jpg"

    const-string v7, "/"

    if-eq p2, v2, :cond_8

    const/4 v2, 0x3

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    :try_start_1
    iget-object v2, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 5
    iget-object v2, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lnet/bither/util/b;->k(Ljava/io/File;)Z

    .line 9
    :cond_2
    iget-object v2, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 11
    :cond_3
    iget-object v2, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 12
    invoke-virtual {p0}, Lnet/bither/util/b;->y()V

    goto/16 :goto_1

    .line 13
    :cond_4
    iget-object v8, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v8, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/bither/util/b;->r()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/String;

    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v6}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "content://"

    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 18
    iget-object v5, p0, Lnet/bither/util/b;->a:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/join/mgps/Util/f0;->o(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {v3}, Lnet/bither/util/b;->o(Ljava/io/File;)J

    move-result-wide v5

    goto :goto_0

    .line 21
    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lnet/bither/util/b;->o(Ljava/io/File;)J

    move-result-wide v5

    .line 22
    :goto_0
    iget-object v3, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v3, p0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/String;

    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyCompressSate-->src file size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v3}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 25
    sget-wide v7, Lnet/bither/util/b;->g:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    long-to-double v7, v7

    const-wide v9, 0x4126666666666666L    # 734003.2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    double-to-long v7, v7

    const/16 v3, 0x28

    cmp-long v9, v5, v7

    if-gez v9, :cond_6

    :try_start_3
    const-string v5, "notifyCompressSate-->use system compress tool.."

    .line 26
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lnet/bither/util/b;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_6
    const-string v5, "notifyCompressSate-->use jpegbither compress tool.."

    .line 28
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lnet/bither/util/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 30
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 31
    :cond_7
    invoke-virtual {p0, p1, v2}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {p0, p1, v4}, Lnet/bither/util/b;->v(Ljava/lang/String;I)V

    goto :goto_1

    .line 33
    :cond_8
    iget-object v2, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/bither/util/b;->r()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/String;

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v6}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 36
    iget-object v3, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v2, p0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_1
    new-array v1, v1, [Ljava/lang/String;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCompressSate-->finished notifyCompressSate.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v1}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public declared-synchronized x(Ljava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/bither/util/b;->f(Ljava/lang/String;)V

    .line 2
    sget-object p2, Lnet/bither/util/b;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lnet/bither/util/b$a;

    invoke-direct {v0, p0, p1}, Lnet/bither/util/b$a;-><init>(Lnet/bither/util/b;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lnet/bither/util/b;->A(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public y()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnet/bither/util/b;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lnet/bither/util/b;->c:Ljava/util/Hashtable;

    iget-object v2, p0, Lnet/bither/util/b;->b:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, v2}, Lnet/bither/util/b;->u(Ljava/lang/Boolean;Ljava/util/Map;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public z(Lnet/bither/util/b$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/bither/util/b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/bither/util/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
