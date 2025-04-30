.class public final Lcom/tencent/bugly/crashreport/crash/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/bugly/proguard/u;

.field private d:Lcom/tencent/bugly/proguard/p;

.field private e:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private f:Lcom/tencent/bugly/proguard/o;

.field private g:Lcom/tencent/bugly/BuglyStrategy$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/tencent/bugly/proguard/u;Lcom/tencent/bugly/proguard/p;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/BuglyStrategy$a;Lcom/tencent/bugly/proguard/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sput p1, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    .line 3
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    .line 5
    iput-object p4, p0, Lcom/tencent/bugly/crashreport/crash/b;->d:Lcom/tencent/bugly/proguard/p;

    .line 6
    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 7
    iput-object p6, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    .line 8
    iput-object p7, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    return-void
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "_dt"

    .line 123
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v2, "_id"

    .line 124
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 125
    sget-object p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, p0}, Lcom/tencent/bugly/proguard/z;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    if-eqz p0, :cond_2

    .line 126
    iput-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    .line 127
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 128
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private a(Ljava/util/List;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ")",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/crash/a;

    .line 12
    iget-boolean v4, v3, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-eqz v4, :cond_1

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "\n"

    const/4 v5, 0x1

    if-lez v2, :cond_6

    .line 15
    invoke-direct {p0, v1}, Lcom/tencent/bugly/crashreport/crash/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 17
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 18
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    if-nez v2, :cond_3

    move-object v0, v6

    goto :goto_3

    .line 20
    :cond_3
    iget-object v6, v6, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 21
    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 22
    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 23
    iget-object v10, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 24
    iget v10, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/2addr v10, v5

    iput v10, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 25
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    .line 26
    iput-boolean v5, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    .line 27
    iput v3, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    const-string v0, ""

    .line 28
    iput-object v0, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    move-object v0, p2

    .line 29
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/crash/a;

    .line 30
    iget-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-nez v2, :cond_8

    iget-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v1, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 31
    iget v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    goto :goto_4

    .line 33
    :cond_9
    iget-wide v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v6, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    cmp-long p1, v1, v6

    if-eqz p1, :cond_a

    iget-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 34
    iget p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    add-int/2addr p1, v5

    iput p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    :cond_a
    return-object v0

    :cond_b
    :goto_5
    return-object p2
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/aj;
    .locals 6

    const-string v0, "del tmp"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p2, v4, v2

    const-string v5, "zip %s"

    .line 289
    invoke-static {v5, v4}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 290
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 p0, 0x1388

    .line 292
    invoke-static {v4, p2, p0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/io/File;I)Z

    move-result p0

    if-nez p0, :cond_1

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "zip fail!"

    .line 293
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1

    .line 294
    :cond_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 295
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v4, 0x1000

    :try_start_1
    new-array v4, v4, [B

    .line 296
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    .line 297
    invoke-virtual {p0, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 298
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    goto :goto_0

    .line 299
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v4, "read bytes :%d"

    new-array v3, v3, [Ljava/lang/Object;

    .line 300
    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 301
    new-instance v3, Lcom/tencent/bugly/proguard/aj;

    const/4 v4, 0x2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, p0}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 303
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 304
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 305
    :cond_3
    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    new-array p0, v2, [Ljava/lang/Object;

    .line 306
    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_4
    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object p1, v1

    .line 308
    :goto_2
    :try_start_3
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 309
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_5
    if-eqz p1, :cond_6

    .line 310
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 311
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 312
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 313
    :cond_6
    :goto_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_7

    new-array p0, v2, [Ljava/lang/Object;

    .line 314
    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_7
    return-object v1

    :catchall_2
    move-exception p0

    if-eqz p1, :cond_8

    .line 316
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 317
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 318
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 319
    :cond_8
    :goto_4
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    new-array p1, v2, [Ljava/lang/Object;

    .line 320
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_9
    throw p0

    :cond_a
    :goto_5
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}"

    .line 322
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/crashreport/common/info/a;)Lcom/tencent/bugly/proguard/ak;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_2b

    if-eqz p1, :cond_2b

    if-nez p2, :cond_0

    goto/16 :goto_15

    .line 129
    :cond_0
    new-instance v2, Lcom/tencent/bugly/proguard/ak;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/ak;-><init>()V

    .line 130
    iget v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    new-array v5, v4, [Ljava/lang/Object;

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v1

    const-string v3, "crash type error! %d"

    invoke-static {v3, v5}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 132
    :pswitch_0
    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v3, :cond_1

    const-string v3, "208"

    goto :goto_0

    :cond_1
    const-string v3, "108"

    :goto_0
    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto :goto_8

    .line 133
    :pswitch_1
    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v3, :cond_2

    const-string v3, "206"

    goto :goto_1

    :cond_2
    const-string v3, "106"

    :goto_1
    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto :goto_8

    .line 134
    :pswitch_2
    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v3, :cond_3

    const-string v3, "207"

    goto :goto_2

    :cond_3
    const-string v3, "107"

    :goto_2
    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto :goto_8

    .line 135
    :pswitch_3
    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v3, :cond_4

    const-string v3, "204"

    goto :goto_3

    :cond_4
    const-string v3, "104"

    :goto_3
    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto :goto_8

    .line 136
    :pswitch_4
    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v3, :cond_5

    const-string v3, "203"

    goto :goto_4

    :cond_5
    const-string v3, "103"

    :goto_4
    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto :goto_8

    .line 137
    :pswitch_5
    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v3, :cond_6

    const-string v3, "202"

    goto :goto_5

    :cond_6
    const-string v3, "102"

    :goto_5
    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto :goto_8

    .line 138
    :pswitch_6
    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v3, :cond_7

    const-string v3, "201"

    goto :goto_6

    :cond_7
    const-string v3, "101"

    :goto_6
    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    goto :goto_8

    .line 139
    :pswitch_7
    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v3, :cond_8

    const-string v3, "200"

    goto :goto_7

    :cond_8
    const-string v3, "100"

    :goto_7
    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->a:Ljava/lang/String;

    .line 140
    :goto_8
    iget-wide v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v5, v2, Lcom/tencent/bugly/proguard/ak;->b:J

    .line 141
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->c:Ljava/lang/String;

    .line 142
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->d:Ljava/lang/String;

    .line 143
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->e:Ljava/lang/String;

    .line 144
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->g:Ljava/lang/String;

    .line 145
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->z:Ljava/util/Map;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->h:Ljava/util/Map;

    .line 146
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->i:Ljava/lang/String;

    .line 147
    iput-object v0, v2, Lcom/tencent/bugly/proguard/ak;->j:Lcom/tencent/bugly/proguard/ai;

    .line 148
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->l:Ljava/lang/String;

    .line 149
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->m:Ljava/lang/String;

    .line 150
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->f:Ljava/lang/String;

    .line 151
    iput-object v0, v2, Lcom/tencent/bugly/proguard/ak;->n:Lcom/tencent/bugly/proguard/ah;

    new-array v3, v4, [Ljava/lang/Object;

    .line 152
    iget-object v5, v2, Lcom/tencent/bugly/proguard/ak;->o:Ljava/util/ArrayList;

    aput-object v5, v3, v1

    const-string v5, "libInfo %s"

    invoke-static {v5, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 153
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->p:Ljava/util/ArrayList;

    .line 155
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 156
    new-instance v6, Lcom/tencent/bugly/proguard/ah;

    invoke-direct {v6}, Lcom/tencent/bugly/proguard/ah;-><init>()V

    .line 157
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v7, v7, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->a:Ljava/lang/String;

    iput-object v7, v6, Lcom/tencent/bugly/proguard/ah;->a:Ljava/lang/String;

    .line 158
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v7, v7, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->c:Ljava/lang/String;

    iput-object v7, v6, Lcom/tencent/bugly/proguard/ah;->b:Ljava/lang/String;

    .line 159
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;

    iget-object v5, v5, Lcom/tencent/bugly/crashreport/common/info/PlugInBean;->b:Ljava/lang/String;

    iput-object v5, v6, Lcom/tencent/bugly/proguard/ah;->c:Ljava/lang/String;

    .line 160
    iget-object v5, v2, Lcom/tencent/bugly/proguard/ak;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 161
    :cond_9
    iget-boolean v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    const/4 v5, 0x2

    const-string v6, "utf-8"

    if-eqz v3, :cond_d

    .line 162
    iget v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    iput v3, v2, Lcom/tencent/bugly/proguard/ak;->k:I

    .line 163
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 164
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v3, :cond_a

    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 166
    :cond_a
    :try_start_0
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v7, Lcom/tencent/bugly/proguard/aj;

    const-string v8, "alltimes.txt"

    iget-object v9, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v7, v4, v8, v9}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v3

    .line 167
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 168
    iput-object v0, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    :cond_b
    :goto_a
    new-array v3, v5, [Ljava/lang/Object;

    .line 169
    iget v7, v2, Lcom/tencent/bugly/proguard/ak;->k:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v1

    iget-object v7, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_b

    :cond_c
    const/4 v7, 0x0

    :goto_b
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    const-string v7, "crashcount:%d sz:%d"

    invoke-static {v7, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 170
    :cond_d
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 171
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v3, :cond_e

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 173
    :cond_e
    :try_start_1
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v7, Lcom/tencent/bugly/proguard/aj;

    const-string v8, "log.txt"

    iget-object v9, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v7, v4, v8, v9}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v3

    .line 174
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 175
    iput-object v0, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 176
    :cond_f
    :goto_c
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 177
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v3, :cond_10

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 179
    :cond_10
    :try_start_2
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v7, Lcom/tencent/bugly/proguard/aj;

    const-string v8, "jniLog.txt"

    iget-object v9, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->x:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v7, v4, v8, v9}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    :catch_2
    move-exception v3

    .line 180
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 181
    iput-object v0, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 182
    :cond_11
    :goto_d
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 183
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v3, :cond_12

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 185
    :cond_12
    :try_start_3
    new-instance v3, Lcom/tencent/bugly/proguard/aj;

    const-string v7, "crashInfos.txt"

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v3, v4, v7, v8}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_e

    :catch_3
    move-exception v3

    .line 186
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v3, v0

    :goto_e
    if-eqz v3, :cond_13

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "attach crash infos"

    .line 187
    invoke-static {v8, v7}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 188
    iget-object v7, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_13
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/lang/String;

    if-eqz v3, :cond_15

    .line 190
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v3, :cond_14

    .line 191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 192
    :cond_14
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->W:Ljava/lang/String;

    const-string v7, "backupRecord.zip"

    invoke-static {v7, p0, v3}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/aj;

    move-result-object v3

    if-eqz v3, :cond_15

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "attach backup record"

    .line 193
    invoke-static {v8, v7}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 194
    iget-object v7, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_15
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->y:[B

    if-eqz v3, :cond_17

    array-length v7, v3

    if-lez v7, :cond_17

    .line 196
    new-instance v7, Lcom/tencent/bugly/proguard/aj;

    const-string v8, "buglylog.zip"

    invoke-direct {v7, v5, v8, v3}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    new-array v3, v1, [Ljava/lang/Object;

    const-string v8, "attach user log"

    .line 197
    invoke-static {v8, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 198
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v3, :cond_16

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 200
    :cond_16
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_17
    iget v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1b

    .line 202
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v3, :cond_18

    .line 203
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    :cond_18
    new-array v3, v4, [Ljava/lang/Object;

    .line 204
    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:Ljava/util/Map;

    aput-object v8, v3, v1

    const-string v8, "crashBean.anrMessages:%s"

    invoke-static {v8, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 205
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:Ljava/util/Map;

    if-eqz v3, :cond_1a

    const-string v8, "BUGLY_CR_01"

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 206
    :try_start_4
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:Ljava/util/Map;

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 207
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v9, Lcom/tencent/bugly/proguard/aj;

    const-string v10, "anrMessage.txt"

    iget-object v11, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v9, v4, v10, v11}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "attach anr message"

    new-array v9, v1, [Ljava/lang/Object;

    .line 208
    invoke-static {v3, v9}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_f

    :catch_4
    move-exception v3

    .line 209
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 210
    iput-object v0, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 211
    :cond_19
    :goto_f
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:Ljava/util/Map;

    invoke-interface {v3, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1a
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz v3, :cond_1b

    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->isEnableCatchAnrTrace()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 213
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    const-string v8, "trace.zip"

    invoke-static {v8, p0, v3}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/aj;

    move-result-object v3

    if-eqz v3, :cond_1b

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "attach traces"

    .line 214
    invoke-static {v9, v8}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 215
    iget-object v8, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1b
    iget v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v3, v4, :cond_1d

    .line 217
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez v3, :cond_1c

    .line 218
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 219
    :cond_1c
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    if-eqz v3, :cond_1d

    const-string v8, "tomb.zip"

    .line 220
    invoke-static {v8, p0, v3}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/bugly/proguard/aj;

    move-result-object p0

    if-eqz p0, :cond_1d

    new-array v3, v1, [Ljava/lang/Object;

    const-string v8, "attach tombs"

    .line 221
    invoke-static {v8, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 222
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_1d
    iget-object p0, p2, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    if-eqz p0, :cond_20

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_20

    .line 224
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez p0, :cond_1e

    .line 225
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 226
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    iget-object v3, p2, Lcom/tencent/bugly/crashreport/common/info/a;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 228
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 229
    :cond_1f
    :try_start_5
    iget-object v3, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v8, Lcom/tencent/bugly/proguard/aj;

    const-string v9, "martianlog.txt"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v8, v4, v9, p0}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "attach pageTracingList"

    new-array v3, v1, [Ljava/lang/Object;

    .line 230
    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_11

    :catch_5
    move-exception p0

    .line 231
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 232
    :cond_20
    :goto_11
    iget-object p0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:[B

    if-eqz p0, :cond_22

    array-length p0, p0

    if-lez p0, :cond_22

    .line 233
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    if-nez p0, :cond_21

    .line 234
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    .line 235
    :cond_21
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->q:Ljava/util/ArrayList;

    new-instance v3, Lcom/tencent/bugly/proguard/aj;

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:[B

    const-string v9, "userExtraByteData"

    invoke-direct {v3, v4, v9, v8}, Lcom/tencent/bugly/proguard/aj;-><init>(BLjava/lang/String;[B)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p0, v1, [Ljava/lang/Object;

    const-string v3, "attach extraData"

    .line 236
    invoke-static {v3, p0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 237
    :cond_22
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A9"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A11"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A10"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A23"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A7"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A6"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A5"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A22"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A2"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A1"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->h:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A24"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A17"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A25"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->r()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A15"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A13"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "A34"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object p0, p2, Lcom/tencent/bugly/crashreport/common/info/a;->x:Ljava/lang/String;

    if-eqz p0, :cond_23

    .line 255
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->x:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "productIdentify"

    invoke-interface {p0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_23
    :try_start_6
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    const-string v3, "A26"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    invoke-static {v9, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_12

    :catch_6
    move-exception p0

    .line 257
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 258
    :goto_12
    iget p0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne p0, v4, :cond_24

    .line 259
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "A27"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "A28"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "A29"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_24
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->L:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "A30"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "A18"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    xor-int/2addr v6, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "A36"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->q:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "F02"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->r:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "F03"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "F04"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->s:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "F05"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/tencent/bugly/crashreport/common/info/a;->p:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "F06"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/tencent/bugly/crashreport/common/info/a;->v:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "F08"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/tencent/bugly/crashreport/common/info/a;->w:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "F09"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p2, Lcom/tencent/bugly/crashreport/common/info/a;->t:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "F10"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget p0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    if-ltz p0, :cond_25

    .line 274
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->Q:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "C01"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_25
    iget p0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:I

    if-ltz p0, :cond_26

    .line 276
    iget-object p0, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->R:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "C02"

    invoke-interface {p0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_26
    iget-object p0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    if-eqz p0, :cond_27

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_27

    .line 278
    iget-object p0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->S:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 279
    iget-object v6, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "C03_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 280
    :cond_27
    iget-object p0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    if-eqz p0, :cond_28

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_28

    .line 281
    iget-object p0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->T:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 282
    iget-object v6, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "C04_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v6, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 283
    :cond_28
    iput-object v0, v2, Lcom/tencent/bugly/proguard/ak;->s:Ljava/util/Map;

    .line 284
    iget-object p0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    if-eqz p0, :cond_29

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_29

    .line 285
    iget-object p0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    iput-object p0, v2, Lcom/tencent/bugly/proguard/ak;->s:Ljava/util/Map;

    new-array v0, v4, [Ljava/lang/Object;

    .line 286
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "setted message size %d"

    invoke-static {p0, v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_29
    const/16 p0, 0xc

    new-array p0, p0, [Ljava/lang/Object;

    .line 287
    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    aput-object v0, p0, v1

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v0, p0, v4

    invoke-virtual {p2}, Lcom/tencent/bugly/crashreport/common/info/a;->e()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v5

    iget-wide v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->M:J

    sub-long/2addr v5, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p0, v7

    const/4 p2, 0x4

    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->k:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p0, p2

    const/4 p2, 0x5

    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->N:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p0, p2

    const/4 p2, 0x6

    iget-boolean v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p0, p2

    const/4 p2, 0x7

    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne v0, v4, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p0, p2

    const/16 p2, 0x8

    iget v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, p2

    const/16 p2, 0x9

    iget-object v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    aput-object v0, p0, p2

    const/16 p2, 0xa

    iget-boolean p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, p2

    const/16 p1, 0xb

    iget-object p2, v2, Lcom/tencent/bugly/proguard/ak;->r:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v2

    :cond_2b
    :goto_15
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "enExp args == null"

    .line 288
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/crash/a;

    .line 7
    iget-boolean v4, v3, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    if-eqz v4, :cond_1

    iget-wide v4, v3, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    const-wide/32 v6, 0x5265c00

    sub-long v6, v0, v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    .line 8
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 7

    .line 323
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "#++++++++++Record By Bugly++++++++++#"

    .line 324
    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!"

    .line 325
    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 326
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "# PKG NAME: %s"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v3, v2, [Ljava/lang/Object;

    .line 327
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "# APP VER: %s"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v3, v2, [Ljava/lang/Object;

    .line 328
    iget-object v4, v0, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "# SDK VER: %s"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v3, v2, [Ljava/lang/Object;

    .line 329
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v5

    iget-wide v5, v5, Lcom/tencent/bugly/crashreport/common/info/a;->a:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/tencent/bugly/proguard/z;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "# LAUNCH TIME: %s"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const-string p0, "# CRASH TYPE: %s"

    .line 330
    invoke-static {p0, v3}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string p1, "# CRASH TIME: %s"

    .line 331
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p2, p0, v1

    const-string p1, "# CRASH PROCESS: %s"

    .line 332
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p3, p0, v1

    const-string p1, "# CRASH THREAD: %s"

    .line 333
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p5, :cond_4

    new-array p0, v2, [Ljava/lang/Object;

    .line 334
    iget-object p1, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object p1, p0, v1

    const-string p1, "# REPORT ID: %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p0, 0x2

    new-array p1, p0, [Ljava/lang/Object;

    .line 335
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->i()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->s()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ROOTED"

    goto :goto_0

    :cond_1
    const-string p2, "UNROOT"

    :goto_0
    aput-object p2, p1, v2

    const-string p2, "# CRASH DEVICE: %s %s"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x3

    new-array p2, p1, [Ljava/lang/Object;

    .line 336
    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->C:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v1

    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->D:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v2

    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->E:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, p0

    const-string p3, "# RUNTIME AVAIL RAM:%d ROM:%d SD:%d"

    invoke-static {p3, p2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p2, p1, [Ljava/lang/Object;

    .line 337
    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->F:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v1

    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->G:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v2

    iget-wide v3, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->H:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, p0

    const-string p3, "# RUNTIME TOTAL RAM:%d ROM:%d SD:%d"

    invoke-static {p3, p2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 338
    iget-object p2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    new-array p0, p0, [Ljava/lang/Object;

    .line 339
    iget-object p1, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    aput-object p1, p0, v1

    iget-object p1, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    aput-object p1, p0, v2

    const-string p1, "# EXCEPTION FIRED BY %s %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 340
    :cond_2
    iget p0, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-ne p0, p1, :cond_4

    new-array p0, v2, [Ljava/lang/Object;

    .line 341
    iget-object p1, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:Ljava/util/Map;

    if-nez p1, :cond_3

    const-string p1, "null"

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->P:Ljava/util/Map;

    const-string p3, "BUGLY_CR_01"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, p0, v1

    const-string p1, "# EXCEPTION ANR MESSAGE:\n %s"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 342
    :cond_4
    :goto_2
    invoke-static {p4}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "# CRASH STACK: "

    .line 343
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array p0, v1, [Ljava/lang/Object;

    .line 344
    invoke-static {p4, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "#++++++++++++++++++++++++++++++++++++++++++#"

    .line 345
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(ZLjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 110
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 111
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "up finish update state %b"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 113
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    .line 115
    iget-object v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v6, v5, v0

    iget v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-boolean v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget-boolean v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v5, v8

    const-string v6, "pre uid:%s uc:%d re:%b me:%b"

    invoke-static {v6, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 116
    iget v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    add-int/2addr v5, v1

    iput v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    .line 117
    iput-boolean p0, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    new-array v4, v4, [Ljava/lang/Object;

    .line 118
    iget-object v6, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    aput-object v6, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-boolean v5, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    iget-boolean v3, v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v8

    const-string v3, "set uid:%s uc:%d re:%b me:%b"

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 120
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/bugly/crashreport/crash/c;->a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    goto :goto_1

    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "update state size %d"

    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_2
    if-nez p0, :cond_3

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "[crash] upload fail."

    .line 122
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/a;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 76
    :cond_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/crashreport/crash/a;

    invoke-direct {v1}, Lcom/tencent/bugly/crashreport/crash/a;-><init>()V

    const-string v2, "_id"

    .line 77
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    const-string v2, "_tm"

    .line 78
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    const-string v2, "_s1"

    .line 79
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->c:Ljava/lang/String;

    const-string v2, "_up"

    .line 80
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    const-string v2, "_me"

    .line 81
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, v1, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    const-string v2, "_uc"

    .line 82
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    iput p0, v1, Lcom/tencent/bugly/crashreport/crash/a;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 83
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 84
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "_id"

    const-string v4, "_tm"

    const-string v5, "_s1"

    const-string v6, "_up"

    const-string v7, "_me"

    const-string v8, "_uc"

    .line 86
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v11

    .line 87
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v9

    const-string v10, "t_cr"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual/range {v9 .. v15}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_1

    if-eqz v3, :cond_0

    .line 88
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    .line 89
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v0, :cond_2

    .line 90
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 91
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in "

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 93
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v6, ","

    if-eqz v5, :cond_4

    .line 94
    :try_start_3
    invoke-static {v3}, Lcom/tencent/bugly/crashreport/crash/b;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/a;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 95
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :cond_3
    :try_start_4
    const-string v5, "_id"

    .line 96
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 97
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    :try_start_5
    const-string v5, "unknown id!"

    new-array v6, v2, [Ljava/lang/Object;

    .line 98
    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    :cond_5
    const-string v5, ")"

    .line 101
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v4, :cond_6

    .line 104
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v6

    const-string v7, "t_cr"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I

    move-result v0

    const-string v4, "deleted %s illegal data %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "t_cr"

    aput-object v6, v5, v2

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 106
    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    .line 107
    :goto_1
    :try_start_6
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_7
    if-eqz v2, :cond_8

    .line 109
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v1

    :catchall_3
    move-exception v0

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id in "

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ","

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/crashreport/crash/a;

    .line 50
    iget-wide v6, v4, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    :cond_2
    const-string p1, ")"

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 55
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 56
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v6

    const-string v7, "t_cr"

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v6, :cond_4

    if-eqz v6, :cond_3

    .line 57
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    .line 58
    :cond_4
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 60
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 61
    invoke-static {v6}, Lcom/tencent/bugly/crashreport/crash/b;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 62
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :try_start_2
    const-string v3, "_id"

    .line 63
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 64
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    :try_start_3
    const-string v3, "unknown id!"

    new-array v8, v4, [Ljava/lang/Object;

    .line 65
    invoke-static {v3, v8}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 68
    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-lez v2, :cond_8

    .line 70
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v8

    const-string v9, "t_cr"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I

    move-result p1

    const-string v1, "deleted %s illegal data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t_cr"

    aput-object v3, v2, v4

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v7

    :catchall_1
    move-exception p1

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v6, v0

    .line 73
    :goto_2
    :try_start_4
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_9
    if-eqz v6, :cond_a

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v0

    :catchall_3
    move-exception p1

    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b
    throw p1

    :cond_c
    :goto_3
    return-object v0
.end method

.method private static c(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/crash/a;

    .line 11
    iget-wide v3, v1, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ")"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 16
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v3

    const-string v4, "t_cr"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I

    move-result p0

    const-string v0, "deleted %s data %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "t_cr"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 18
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 51
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    const-string v2, " or _id"

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x4

    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    move-object v2, p0

    const/4 p0, 0x0

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 59
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v0

    const-string v1, "t_cr"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I

    move-result v0

    const-string v1, "deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t_cr"

    aput-object v3, v2, p0

    const/4 p0, 0x1

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p0

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 61
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private static f(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget-wide v2, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const-string v4, "_id"

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string v2, "_tm"

    .line 4
    iget-wide v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_s1"

    .line 5
    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_up"

    .line 6
    iget-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->d:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_me"

    .line 7
    iget-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_uc"

    .line 8
    iget v3, p0, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->l:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_dt"

    .line 9
    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a(Landroid/os/Parcelable;)[B

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 10
    invoke-static {p0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "have not synced remote!"

    .line 38
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1

    .line 39
    :cond_0
    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:Z

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    .line 40
    invoke-static {v3, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app."

    .line 41
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-object v1

    .line 42
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 43
    invoke-static {}, Lcom/tencent/bugly/proguard/z;->b()J

    move-result-wide v5

    .line 44
    invoke-direct/range {p0 .. p0}, Lcom/tencent/bugly/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v2, "Size of crash list loaded from DB: %s"

    invoke-static {v2, v7}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    return-object v1

    .line 47
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 51
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/crashreport/crash/a;

    .line 53
    iget-wide v8, v7, Lcom/tencent/bugly/crashreport/crash/a;->b:J

    sget-wide v10, Lcom/tencent/bugly/crashreport/crash/c;->g:J

    sub-long v10, v5, v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_4

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 55
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_4
    iget-boolean v10, v7, Lcom/tencent/bugly/crashreport/crash/a;->d:Z

    const-wide/32 v11, 0x5265c00

    if-eqz v10, :cond_6

    sub-long v11, v3, v11

    cmp-long v10, v8, v11

    if-ltz v10, :cond_5

    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 58
    :cond_5
    iget-boolean v8, v7, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-nez v8, :cond_3

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 60
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_6
    iget v10, v7, Lcom/tencent/bugly/crashreport/crash/a;->f:I

    int-to-long v13, v10

    const-wide/16 v15, 0x3

    cmp-long v10, v13, v15

    if-ltz v10, :cond_3

    sub-long v11, v3, v11

    cmp-long v10, v8, v11

    if-gez v10, :cond_3

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 63
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 65
    invoke-static {v1}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)V

    .line 66
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p0

    .line 67
    invoke-direct {v2, v0}, Lcom/tencent/bugly/crashreport/crash/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 69
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/bugly/crashreport/common/info/a;->j:Ljava/lang/String;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 71
    :cond_9
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 72
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 73
    iget-object v6, v5, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 74
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 75
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 77
    invoke-static {v1}, Lcom/tencent/bugly/crashreport/crash/b;->d(Ljava/util/List;)V

    :cond_b
    return-object v0
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V
    .locals 8

    .line 78
    sget-boolean p2, Lcom/tencent/bugly/crashreport/crash/c;->l:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    new-array p2, p3, [Ljava/lang/Object;

    const-string v0, "try to upload right now"

    .line 79
    invoke-static {v0, p2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0xbb8

    .line 82
    iget p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    const/4 p3, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v1, p0

    move v5, p4

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;JZZZ)V

    return-void

    :cond_1
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "do not upload spot crash right now, crash would be uploaded when app next start"

    .line 83
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/List;JZZZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;",
            ">;JZZZ)V"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    .line 84
    iget-object v2, v1, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/bugly/crashreport/common/info/a;->e:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "warn: not upload process"

    .line 85
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 86
    :cond_0
    iget-object v2, v1, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    if-nez v2, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "warn: upload manager is null"

    .line 87
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-nez p6, :cond_2

    .line 88
    sget v4, Lcom/tencent/bugly/crashreport/crash/c;->a:I

    invoke-virtual {v2, v4}, Lcom/tencent/bugly/proguard/u;->b(I)Z

    move-result v2

    if-nez v2, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "warn: not crashHappen or not should upload"

    .line 89
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 90
    :cond_2
    iget-object v2, v1, Lcom/tencent/bugly/crashreport/crash/b;->e:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v2

    .line 91
    iget-boolean v4, v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->e:Z

    if-nez v4, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "remote report is disable!"

    .line 92
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "[crash] server closed bugly in this app. please check your appid if is correct, and re-install it"

    .line 93
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :cond_3
    if-eqz v0, :cond_d

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_3

    .line 95
    :cond_4
    :try_start_0
    iget-object v8, v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->q:Ljava/lang/String;

    .line 96
    sget-object v9, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    .line 97
    iget-object v2, v1, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v4

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_6

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v5, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v5}, Lcom/tencent/bugly/proguard/al;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/tencent/bugly/proguard/al;->a:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    iget-object v10, v5, Lcom/tencent/bugly/proguard/al;->a:Ljava/util/ArrayList;

    invoke-static {v2, v7, v4}, Lcom/tencent/bugly/crashreport/crash/b;->a(Landroid/content/Context;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;Lcom/tencent/bugly/crashreport/common/info/a;)Lcom/tencent/bugly/proguard/ak;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_1
    const-string v2, "enEXPPkg args == null!"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v5, 0x0

    :cond_7
    if-nez v5, :cond_8

    const-string v0, "create eupPkg fail!"

    new-array v2, v3, [Ljava/lang/Object;

    .line 98
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 99
    :cond_8
    invoke-static {v5}, Lcom/tencent/bugly/proguard/a;->a(Lcom/tencent/bugly/proguard/k;)[B

    move-result-object v2

    if-nez v2, :cond_9

    const-string v0, "send encode fail!"

    new-array v2, v3, [Ljava/lang/Object;

    .line 100
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 101
    :cond_9
    iget-object v4, v1, Lcom/tencent/bugly/crashreport/crash/b;->b:Landroid/content/Context;

    const/16 v5, 0x33e

    invoke-static {v4, v5, v2}, Lcom/tencent/bugly/proguard/a;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/proguard/am;

    move-result-object v7

    if-nez v7, :cond_a

    const-string v0, "request package is null."

    new-array v2, v3, [Ljava/lang/Object;

    .line 102
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 103
    :cond_a
    new-instance v10, Lcom/tencent/bugly/crashreport/crash/b$1;

    invoke-direct {v10, p0, p1}, Lcom/tencent/bugly/crashreport/crash/b$1;-><init>(Lcom/tencent/bugly/crashreport/crash/b;Ljava/util/List;)V

    if-eqz p4, :cond_b

    .line 104
    iget-object v5, v1, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    sget v6, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    move-wide/from16 v11, p2

    move/from16 v13, p5

    invoke-virtual/range {v5 .. v13}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;JZ)V

    goto :goto_2

    .line 105
    :cond_b
    iget-object v5, v1, Lcom/tencent/bugly/crashreport/crash/b;->c:Lcom/tencent/bugly/proguard/u;

    sget v6, Lcom/tencent/bugly/crashreport/crash/b;->a:I

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/tencent/bugly/proguard/u;->a(ILcom/tencent/bugly/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/t;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "req cr error %s"

    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 107
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_2
    return-void

    :cond_d
    :goto_3
    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "warn: crashList is null or crashList num is 0"

    .line 109
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z
    .locals 14

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    .line 2
    sget-object v3, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Crash filter for crash stack is: %s"

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    sget-object v3, Lcom/tencent/bugly/crashreport/crash/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "This crash contains the filter string set. It will not be record and upload."

    .line 4
    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 5
    :cond_1
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/c;->o:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    sget-object v3, Lcom/tencent/bugly/crashreport/crash/c;->o:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Crash regular filter for crash stack is: %s"

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 7
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/c;->o:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 8
    iget-object v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "This crash matches the regular filter string set. It will not be record and upload."

    .line 9
    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 10
    :cond_2
    iget v1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    .line 11
    new-instance v1, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/r;-><init>()V

    .line 12
    iput v0, v1, Lcom/tencent/bugly/proguard/r;->b:I

    .line 13
    iget-object v4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iput-object v4, v1, Lcom/tencent/bugly/proguard/r;->c:Ljava/lang/String;

    .line 14
    iget-object v4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->B:Ljava/lang/String;

    iput-object v4, v1, Lcom/tencent/bugly/proguard/r;->d:Ljava/lang/String;

    .line 15
    iget-wide v4, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->r:J

    iput-wide v4, v1, Lcom/tencent/bugly/proguard/r;->e:J

    .line 16
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/b;->d:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v4, v0}, Lcom/tencent/bugly/proguard/p;->b(I)V

    .line 17
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/b;->d:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v4, v1}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/r;)Z

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "[crash] a crash occur, handling..."

    .line 18
    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "[crash] a caught exception occur, handling..."

    .line 19
    invoke-static {v4, v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 20
    :goto_0
    invoke-direct {p0}, Lcom/tencent/bugly/crashreport/crash/b;->b()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_10

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    invoke-static {v1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    invoke-interface {v1, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v7, v5

    const-wide/16 v9, 0x14

    cmp-long v5, v7, v9

    if-lez v5, :cond_4

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "SELECT _id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " FROM t_cr"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " order by _id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " limit 5"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v8

    const-string v9, "t_cr"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I

    move-result v5

    const-string v7, "deleted first record %s data %d"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "t_cr"

    aput-object v8, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-static {v7, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    :cond_4
    :goto_1
    iget v3, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-eqz v3, :cond_6

    if-ne v3, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x1

    :goto_3
    const/4 v7, 0x3

    if-ne v3, v7, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    sget-boolean v7, Lcom/tencent/bugly/b;->c:Z

    if-nez v7, :cond_9

    if-nez v3, :cond_8

    if-nez v5, :cond_8

    goto :goto_5

    :cond_8
    sget-boolean v3, Lcom/tencent/bugly/crashreport/crash/c;->d:Z

    if-eqz v3, :cond_9

    :goto_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_10

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_a
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/crashreport/crash/a;

    .line 30
    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    iget-object v8, v5, Lcom/tencent/bugly/crashreport/crash/a;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 31
    iget-boolean v7, v5, Lcom/tencent/bugly/crashreport/crash/a;->e:Z

    if-eqz v7, :cond_b

    const/4 v3, 0x1

    .line 32
    :cond_b
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    if-nez v3, :cond_d

    .line 33
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/tencent/bugly/crashreport/crash/c;->c:I

    if-lt v1, v3, :cond_10

    :cond_d
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "same crash occur too much do merged!"

    .line 34
    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 35
    invoke-direct {p0, v6, p1}, Lcom/tencent/bugly/crashreport/crash/b;->a(Ljava/util/List;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    move-result-object p1

    .line 36
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/crash/a;

    .line 37
    iget-wide v5, v3, Lcom/tencent/bugly/crashreport/crash/a;->a:J

    iget-wide v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_e

    .line 38
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 39
    :cond_f
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    .line 40
    invoke-static {v4}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)V

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "[crash] save crash success. For this device crash many times, it will not upload crashes immediately"

    .line 41
    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 42
    :cond_10
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/crashreport/crash/b;->e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V

    if-eqz v4, :cond_11

    .line 43
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_11

    .line 44
    invoke-static {v4}, Lcom/tencent/bugly/crashreport/crash/b;->c(Ljava/util/List;)V

    :cond_11
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "[crash] save crash success"

    .line 45
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v2
.end method

.method public final c(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 1

    .line 1
    iget p1, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/crash/c;->r()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/crash/c;->q()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/bugly/crashreport/crash/c;->q()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Calling \'onCrashHandleEnd\' of RQD crash listener."

    .line 6
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final d(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget v2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->b:I

    const/4 v3, 0x2

    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v2, 0x7

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x6

    .line 3
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/crash/c;->u()Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :pswitch_2
    const/4 v2, 0x5

    .line 4
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/crash/c;->t()Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :pswitch_3
    const/4 v2, 0x3

    .line 5
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/crash/c;->s()Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :pswitch_4
    const/4 v2, 0x4

    .line 6
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/bugly/crashreport/crash/c;->r()Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    :pswitch_5
    const/4 v2, 0x1

    goto :goto_0

    .line 7
    :pswitch_6
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/crash/c;->q()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 8
    :pswitch_7
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/c;->a()Lcom/tencent/bugly/crashreport/crash/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/crash/c;->q()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 9
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    const-string v4, "Calling \'onCrashHandleStart\' of RQD crash listener."

    new-array v6, v1, [Ljava/lang/Object;

    .line 10
    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v4, "Calling \'getCrashExtraMessage\' of RQD crash listener."

    new-array v6, v1, [Ljava/lang/Object;

    .line 11
    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 12
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    invoke-interface {v4}, Lcom/tencent/bugly/proguard/o;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 13
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v7, "userData"

    .line 14
    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_5
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    if-eqz v4, :cond_6

    const-string v4, "Calling \'onCrashHandleStart\' of Bugly crash listener."

    new-array v6, v1, [Ljava/lang/Object;

    .line 16
    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 17
    iget-object v4, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    iget-object v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v4, v2, v6, v7, v8}, Lcom/tencent/bugly/BuglyStrategy$a;->onCrashHandleStart(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    goto :goto_1

    :cond_6
    move-object v6, v5

    :goto_1
    const v4, 0x186a0

    if-eqz v6, :cond_a

    .line 18
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 19
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    .line 20
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 21
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 22
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 23
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x64

    if-le v9, v10, :cond_8

    .line 24
    invoke-virtual {v8, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "setted key length is over limit %d substring to %s"

    new-array v11, v3, [Ljava/lang/Object;

    .line 25
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v1

    aput-object v8, v11, v0

    invoke-static {v9, v11}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 26
    :cond_8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v4, :cond_9

    .line 27
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "setted %s value length is over limit %d substring"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v8, v10, v1

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-static {v9, v10}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 30
    :goto_3
    iget-object v9, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->O:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "add setted key %s value size:%d"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v8, v10, v1

    .line 31
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v0

    invoke-static {v9, v10}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    const-string v6, "[crash callback] start user\'s callback:onCrashHandleStart2GetExtraDatas()"

    new-array v7, v1, [Ljava/lang/Object;

    .line 32
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 33
    iget-object v6, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    if-eqz v6, :cond_b

    const-string v2, "Calling \'getCrashExtraData\' of RQD crash listener."

    new-array v5, v1, [Ljava/lang/Object;

    .line 34
    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 35
    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    invoke-interface {v2}, Lcom/tencent/bugly/proguard/o;->a()[B

    move-result-object v5

    goto :goto_4

    .line 36
    :cond_b
    iget-object v6, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    if-eqz v6, :cond_c

    const-string v5, "Calling \'onCrashHandleStart2GetExtraDatas\' of Bugly crash listener."

    new-array v6, v1, [Ljava/lang/Object;

    .line 37
    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 38
    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/b;->g:Lcom/tencent/bugly/BuglyStrategy$a;

    iget-object v6, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    iget-object v7, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    iget-object v8, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/tencent/bugly/BuglyStrategy$a;->onCrashHandleStart2GetExtraDatas(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    .line 39
    :cond_c
    :goto_4
    iput-object v5, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:[B

    if-eqz v5, :cond_e

    .line 40
    array-length v2, v5

    if-le v2, v4, :cond_d

    const-string v2, "extra bytes size %d is over limit %d will drop over part"

    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    array-length v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 42
    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->U:[B

    :cond_d
    const-string p1, "add extra bytes %d "

    new-array v2, v0, [Ljava/lang/Object;

    .line 43
    array-length v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 44
    :cond_e
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    if-eqz p1, :cond_f

    const-string p1, "Calling \'onCrashSaving\' of RQD crash listener."

    new-array v2, v1, [Ljava/lang/Object;

    .line 45
    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lcom/tencent/bugly/crashreport/crash/b;->f:Lcom/tencent/bugly/proguard/o;

    invoke-interface {p1}, Lcom/tencent/bugly/proguard/o;->c()Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "Crash listener \'onCrashSaving\' return \'false\' thus will not handle this crash."

    new-array v2, v1, [Ljava/lang/Object;

    .line 47
    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    return-void

    :catchall_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "crash handle callback something wrong! %s"

    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 49
    invoke-static {p1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/crash/b;->f(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/tencent/bugly/proguard/p;->a()Lcom/tencent/bugly/proguard/p;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "t_cr"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;Z)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "insert %s success!"

    .line 3
    invoke-static {v3, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 4
    iput-wide v0, p1, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;->a:J

    :cond_1
    return-void
.end method
