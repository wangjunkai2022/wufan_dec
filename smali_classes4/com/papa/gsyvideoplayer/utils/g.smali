.class public Lcom/papa/gsyvideoplayer/utils/g;
.super Ljava/lang/Object;
.source "GifCreateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/gsyvideoplayer/utils/g$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

.field private c:Lcom/papa/gsyvideoplayer/utils/g$c;

.field private d:Ljava/util/Timer;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/io/File;

.field private g:Lc2/c;

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;Lc2/c;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/16 v6, 0x32

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/papa/gsyvideoplayer/utils/g;-><init>(Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;Lc2/c;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;Lc2/c;IIII)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/g;->a:Z

    .line 4
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/papa/gsyvideoplayer/utils/g;->d:Ljava/util/Timer;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/papa/gsyvideoplayer/utils/g;->e:Ljava/util/List;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/g;->h:I

    .line 7
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/g;->i:I

    const/4 v0, 0x5

    .line 8
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/g;->j:I

    const/16 v0, 0x32

    .line 9
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/g;->k:I

    .line 10
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/g;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 11
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/g;->g:Lc2/c;

    .line 12
    iput p3, p0, Lcom/papa/gsyvideoplayer/utils/g;->h:I

    .line 13
    iput p4, p0, Lcom/papa/gsyvideoplayer/utils/g;->i:I

    .line 14
    iput p5, p0, Lcom/papa/gsyvideoplayer/utils/g;->j:I

    .line 15
    iput p6, p0, Lcom/papa/gsyvideoplayer/utils/g;->k:I

    return-void
.end method

.method static synthetic a(Lcom/papa/gsyvideoplayer/utils/g;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/g;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/papa/gsyvideoplayer/utils/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/utils/g;->h:I

    return p0
.end method

.method static synthetic c(Lcom/papa/gsyvideoplayer/utils/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/utils/g;->i:I

    return p0
.end method

.method static synthetic d(Lcom/papa/gsyvideoplayer/utils/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/utils/g;->j:I

    return p0
.end method

.method static synthetic e(Lcom/papa/gsyvideoplayer/utils/g;)Lc2/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/g;->g:Lc2/c;

    return-object p0
.end method

.method static synthetic f(Lcom/papa/gsyvideoplayer/utils/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/g;->a:Z

    return p0
.end method

.method static synthetic g(Lcom/papa/gsyvideoplayer/utils/g;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/g;->a:Z

    return p1
.end method

.method static synthetic h(Lcom/papa/gsyvideoplayer/utils/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/g;->l()V

    return-void
.end method

.method private l()V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/g;->f:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GSY-TMP-FRAME"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/g;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    new-instance v2, Lcom/papa/gsyvideoplayer/utils/g$b;

    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/utils/g$b;-><init>(Lcom/papa/gsyvideoplayer/utils/g;)V

    invoke-virtual {v1, v0, v2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->saveFrame(Ljava/io/File;Lc2/f;)V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g;->c:Lcom/papa/gsyvideoplayer/utils/g$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g;->c:Lcom/papa/gsyvideoplayer/utils/g$c;

    :cond_0
    return-void
.end method

.method public j(Ljava/io/File;Ljava/util/List;IIILc2/c;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;III",
            "Lc2/c;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p6

    .line 1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v4, Lcom/papa/gsyvideoplayer/utils/a;

    invoke-direct {v4}, Lcom/papa/gsyvideoplayer/utils/a;-><init>()V

    .line 3
    invoke-virtual {v4, v3}, Lcom/papa/gsyvideoplayer/utils/a;->o(Ljava/io/OutputStream;)Z

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v4, v5}, Lcom/papa/gsyvideoplayer/utils/a;->l(I)V

    move/from16 v6, p3

    .line 5
    invoke-virtual {v4, v6}, Lcom/papa/gsyvideoplayer/utils/a;->g(I)V

    const/4 v6, 0x0

    .line 6
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_0

    .line 7
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move/from16 v9, p4

    .line 8
    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 9
    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 10
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 11
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v10, v8

    move/from16 v12, p5

    int-to-double v13, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v13

    .line 12
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 p3, v6

    int-to-double v5, v8

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v13

    const/4 v8, 0x0

    .line 13
    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move/from16 v8, p3

    .line 14
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    double-to-int v10, v10

    double-to-int v5, v5

    .line 15
    invoke-static {v7, v10, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 16
    invoke-virtual {v4, v5}, Lcom/papa/gsyvideoplayer/utils/a;->a(Landroid/graphics/Bitmap;)Z

    .line 17
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 18
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v6, v8, 0x1

    .line 19
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v6, v5}, Lc2/c;->b(II)V

    const/4 v5, 0x0

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/utils/a;->d()Z

    .line 21
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 23
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 24
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 25
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 26
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-interface {v2, v8, v1}, Lc2/c;->a(ZLjava/io/File;)V

    return-void

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    .line 29
    invoke-interface {v2, v3, v1}, Lc2/c;->a(ZLjava/io/File;)V

    return-void
.end method

.method public k(Ljava/io/File;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/g;->f:Ljava/io/File;

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/g;->i()V

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/g;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    new-instance v1, Lcom/papa/gsyvideoplayer/utils/g$c;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lcom/papa/gsyvideoplayer/utils/g$c;-><init>(Lcom/papa/gsyvideoplayer/utils/g;Lcom/papa/gsyvideoplayer/utils/g$a;)V

    iput-object v1, p0, Lcom/papa/gsyvideoplayer/utils/g;->c:Lcom/papa/gsyvideoplayer/utils/g$c;

    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/g;->d:Ljava/util/Timer;

    iget p1, p0, Lcom/papa/gsyvideoplayer/utils/g;->k:I

    int-to-long v4, p1

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public m(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/g;->i()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/g;->a:Z

    .line 3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/papa/gsyvideoplayer/utils/g$a;

    invoke-direct {v1, p0, p1}, Lcom/papa/gsyvideoplayer/utils/g$a;-><init>(Lcom/papa/gsyvideoplayer/utils/g;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
