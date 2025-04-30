.class public Lcom/join/mgps/Util/n1;
.super Ljava/lang/Object;
.source "PhotoSelectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/n1$a;
    }
.end annotation


# static fields
.field public static final m:I = 0x2711

.field public static final n:I = 0x2712

.field public static final o:I = 0x2713


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/net/Uri;

.field private f:Ljava/io/File;

.field private g:Ljava/io/File;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field l:Lcom/join/mgps/Util/n1$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/Util/n1$a;IIII)V
    .locals 1

    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/Util/n1;-><init>(Landroid/app/Activity;Lcom/join/mgps/Util/n1$a;Z)V

    .line 17
    iput p3, p0, Lcom/join/mgps/Util/n1;->h:I

    .line 18
    iput p4, p0, Lcom/join/mgps/Util/n1;->i:I

    .line 19
    iput p5, p0, Lcom/join/mgps/Util/n1;->j:I

    .line 20
    iput p6, p0, Lcom/join/mgps/Util/n1;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/Util/n1$a;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/Util/n1;->b:Ljava/lang/String;

    const-string v0, "packageName.fileprovider"

    .line 3
    iput-object v0, p0, Lcom/join/mgps/Util/n1;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/Util/n1;->d:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/Util/n1;->e:Landroid/net/Uri;

    .line 6
    iput-object v0, p0, Lcom/join/mgps/Util/n1;->g:Ljava/io/File;

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/join/mgps/Util/n1;->h:I

    .line 8
    iput v0, p0, Lcom/join/mgps/Util/n1;->i:I

    const/16 v0, 0x320

    .line 9
    iput v0, p0, Lcom/join/mgps/Util/n1;->j:I

    const/16 v0, 0x1e0

    .line 10
    iput v0, p0, Lcom/join/mgps/Util/n1;->k:I

    .line 11
    iput-object p1, p0, Lcom/join/mgps/Util/n1;->a:Landroid/app/Activity;

    .line 12
    iput-object p2, p0, Lcom/join/mgps/Util/n1;->l:Lcom/join/mgps/Util/n1$a;

    .line 13
    iput-boolean p3, p0, Lcom/join/mgps/Util/n1;->d:Z

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".fileprovider"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/Util/n1;->c:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/Util/n1;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/Util/n1;->b:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/join/mgps/Util/n1;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/join/mgps/Util/n1;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 8

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    const-string v4, "_data=? "

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string p2, "content://media/external/images/media"

    .line 6
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 10
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private i(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, "image/*"

    if-lt v1, v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/join/mgps/Util/n1;->a:Landroid/app/Activity;

    invoke-direct {p0, v1, p1}, Lcom/join/mgps/Util/n1;->d(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string p1, "crop"

    const-string v1, "true"

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget p1, p0, Lcom/join/mgps/Util/n1;->h:I

    const-string v1, "mAspectX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    iget p1, p0, Lcom/join/mgps/Util/n1;->i:I

    const-string v1, "mAspectY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    iget p1, p0, Lcom/join/mgps/Util/n1;->j:I

    const-string v1, "mOutputX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    iget p1, p0, Lcom/join/mgps/Util/n1;->k:I

    const-string v1, "mOutputY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v1, "return-data"

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "output"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "outputFormat"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object p1, p0, Lcom/join/mgps/Util/n1;->a:Landroid/app/Activity;

    const/16 p2, 0x2713

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eqz p3, :cond_3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/n1;->e:Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 2
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/join/mgps/Util/n1;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/Util/n1;->l:Lcom/join/mgps/Util/n1$a;

    if-eqz p1, :cond_3

    .line 6
    iget-object p2, p0, Lcom/join/mgps/Util/n1;->g:Ljava/io/File;

    iget-object p3, p0, Lcom/join/mgps/Util/n1;->e:Landroid/net/Uri;

    invoke-interface {p1, p2, p3}, Lcom/join/mgps/Util/n1$a;->onFinish(Ljava/io/File;Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string p1, "_data"

    .line 8
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v0, p0, Lcom/join/mgps/Util/n1;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 10
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 11
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 12
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/join/mgps/Util/n1;->f:Ljava/io/File;

    .line 14
    iget-boolean p1, p0, Lcom/join/mgps/Util/n1;->d:Z

    if-eqz p1, :cond_1

    .line 15
    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/join/mgps/Util/n1;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/mgps/Util/n1;->g:Ljava/io/File;

    .line 16
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/Util/n1;->e:Landroid/net/Uri;

    .line 17
    iget-object p1, p0, Lcom/join/mgps/Util/n1;->f:Ljava/io/File;

    iget-object p2, p0, Lcom/join/mgps/Util/n1;->g:Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/Util/n1;->i(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/Util/n1;->e:Landroid/net/Uri;

    .line 19
    iget-object p2, p0, Lcom/join/mgps/Util/n1;->l:Lcom/join/mgps/Util/n1$a;

    if-eqz p2, :cond_3

    .line 20
    iget-object p3, p0, Lcom/join/mgps/Util/n1;->f:Ljava/io/File;

    invoke-interface {p2, p3, p1}, Lcom/join/mgps/Util/n1$a;->onFinish(Ljava/io/File;Landroid/net/Uri;)V

    goto :goto_0

    .line 21
    :pswitch_2
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/join/mgps/Util/n1;->b:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/mgps/Util/n1;->f:Ljava/io/File;

    .line 22
    iget-boolean p2, p0, Lcom/join/mgps/Util/n1;->d:Z

    if-eqz p2, :cond_2

    .line 23
    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/join/mgps/Util/n1;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/join/mgps/Util/n1;->g:Ljava/io/File;

    .line 24
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/Util/n1;->e:Landroid/net/Uri;

    .line 25
    iget-object p1, p0, Lcom/join/mgps/Util/n1;->f:Ljava/io/File;

    iget-object p2, p0, Lcom/join/mgps/Util/n1;->g:Ljava/io/File;

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/Util/n1;->i(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/Util/n1;->e:Landroid/net/Uri;

    .line 27
    iget-object p2, p0, Lcom/join/mgps/Util/n1;->l:Lcom/join/mgps/Util/n1$a;

    if-eqz p2, :cond_3

    .line 28
    iget-object p3, p0, Lcom/join/mgps/Util/n1;->f:Ljava/io/File;

    invoke-interface {p2, p3, p1}, Lcom/join/mgps/Util/n1$a;->onFinish(Ljava/io/File;Landroid/net/Uri;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/Util/n1;->a:Landroid/app/Activity;

    const/16 v2, 0x2712

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/n1;->c:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/n1;->b:Ljava/lang/String;

    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/join/mgps/Util/n1;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 5
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/join/mgps/Util/n1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 9
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "output"

    .line 10
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/Util/n1;->a:Landroid/app/Activity;

    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
