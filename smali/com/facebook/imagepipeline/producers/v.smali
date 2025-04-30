.class public Lcom/facebook/imagepipeline/producers/v;
.super Lcom/facebook/imagepipeline/producers/x;
.source "LocalContentUriThumbnailFetchProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/x0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/producers/x;",
        "Lcom/facebook/imagepipeline/producers/x0<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final e:Ljava/lang/String; = "LocalContentUriThumbnailFetchProducer"

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:Landroid/graphics/Rect;

.field private static final i:Landroid/graphics/Rect;

.field private static final j:I


# instance fields
.field private final c:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/producers/v;

    sput-object v0, Lcom/facebook/imagepipeline/producers/v;->d:Ljava/lang/Class;

    const-string v0, "_id"

    const-string v1, "_data"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/producers/v;->f:[Ljava/lang/String;

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/producers/v;->g:[Ljava/lang/String;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0x200

    const/16 v3, 0x180

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/v;->h:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    const/16 v2, 0x60

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/facebook/imagepipeline/producers/v;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/x;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/common/memory/g;)V

    .line 2
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/v;->c:Landroid/content/ContentResolver;

    return-void
.end method

.method private g(Landroid/net/Uri;Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/image/e;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/v;->c:Landroid/content/ContentResolver;

    sget-object v2, Lcom/facebook/imagepipeline/producers/v;->f:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 4
    :cond_1
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_data"

    .line 5
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2

    const-string v2, "_id"

    .line 6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p0, p2, v2}, Lcom/facebook/imagepipeline/producers/v;->j(Lcom/facebook/imagepipeline/common/d;I)Lcom/facebook/imagepipeline/image/e;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 8
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/v;->i(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/facebook/imagepipeline/image/e;->H(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    throw p2
.end method

.method private static h(Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int p0, v0

    :goto_0
    return p0
.end method

.method private static i(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v3, "Orientation"

    .line 2
    invoke-virtual {v2, v3, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/facebook/imageutils/c;->a(I)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v2

    .line 3
    sget-object v3, Lcom/facebook/imagepipeline/producers/v;->d:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const-string p0, "Unable to retrieve thumbnail rotation for %s"

    invoke-static {v3, v2, p0, v1}, Lcom/facebook/common/logging/a;->t(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method private j(Lcom/facebook/imagepipeline/common/d;I)Lcom/facebook/imagepipeline/image/e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/imagepipeline/producers/v;->k(Lcom/facebook/imagepipeline/common/d;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/v;->c:Landroid/content/ContentResolver;

    int-to-long v2, p2

    sget-object p2, Lcom/facebook/imagepipeline/producers/v;->g:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p1, p2}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnail(Landroid/content/ContentResolver;JI[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    .line 4
    :cond_2
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_3

    const-string p2, "_data"

    .line 6
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 7
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/facebook/imagepipeline/producers/v;->h(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/facebook/imagepipeline/producers/x;->e(Ljava/io/InputStream;I)Lcom/facebook/imagepipeline/image/e;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 11
    :cond_4
    throw p2
.end method

.method private static k(Lcom/facebook/imagepipeline/common/d;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/producers/v;->i:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 4
    invoke-static {v1, v0, p0}, Lcom/facebook/imagepipeline/producers/y0;->b(IILcom/facebook/imagepipeline/common/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 5
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/producers/v;->h:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 8
    invoke-static {v1, v0, p0}, Lcom/facebook/imagepipeline/producers/y0;->b(IILcom/facebook/imagepipeline/common/d;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/common/d;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/producers/v;->h:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 4
    invoke-static {v1, v0, p1}, Lcom/facebook/imagepipeline/producers/y0;->b(IILcom/facebook/imagepipeline/common/d;)Z

    move-result p1

    return p1
.end method

.method protected d(Lcom/facebook/imagepipeline/request/ImageRequest;)Lcom/facebook/imagepipeline/image/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->t()Landroid/net/Uri;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/facebook/common/util/f;->h(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->p()Lcom/facebook/imagepipeline/common/d;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/v;->g(Landroid/net/Uri;Lcom/facebook/imagepipeline/common/d;)Lcom/facebook/imagepipeline/image/e;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalContentUriThumbnailFetchProducer"

    return-object v0
.end method
