.class public Lcom/mob/tools/utils/ResHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# static fields
.field private static a:F

.field private static b:I

.field private static c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 1
    sput-object p0, Lcom/mob/tools/utils/ResHelper;->c:Landroid/net/Uri;

    return-object p0
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    return-void
.end method

.method public static varargs closeIOs([Ljava/io/Closeable;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-lez v0, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static copyFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 6
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 8
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 10
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v0, p0}, Lcom/mob/tools/utils/ResHelper;->copyFile(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_2
    :goto_0
    return v1
.end method

.method public static dateStrToLong(Ljava/lang/String;)J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static dateToLong(Ljava/lang/String;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_2

    const-string v1, "&"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    const-string v5, "="

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    aget-object v6, v4, v5

    if-nez v6, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    aget-object v6, v4, v2

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_1
    :goto_1
    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static deleteFileAndFolder(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5
    array-length v1, v0

    if-gtz v1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->deleteFileAndFolder(Ljava/io/File;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    .line 12
    :cond_5
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_3
    return-void
.end method

.method public static designToDevice(Landroid/content/Context;FI)I
    .locals 2

    .line 5
    sget v0, Lcom/mob/tools/utils/ResHelper;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/mob/tools/utils/ResHelper;->a:F

    :cond_0
    int-to-float p0, p2

    .line 7
    sget p2, Lcom/mob/tools/utils/ResHelper;->a:F

    mul-float p0, p0, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static designToDevice(Landroid/content/Context;II)I
    .locals 4

    .line 1
    sget v0, Lcom/mob/tools/utils/ResHelper;->b:I

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    if-ge v1, v3, :cond_0

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    aget p0, p0, v2

    :goto_0
    sput p0, Lcom/mob/tools/utils/ResHelper;->b:I

    :cond_1
    int-to-float p0, p2

    .line 4
    sget p2, Lcom/mob/tools/utils/ResHelper;->b:I

    int-to-float p2, p2

    mul-float p0, p0, p2

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static dipToPx(Landroid/content/Context;I)I
    .locals 2

    .line 1
    sget v0, Lcom/mob/tools/utils/ResHelper;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/mob/tools/utils/ResHelper;->a:F

    :cond_0
    int-to-float p0, p1

    .line 3
    sget p1, Lcom/mob/tools/utils/ResHelper;->a:F

    mul-float p0, p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, v0

    :cond_1
    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v6, "&"

    .line 4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrl(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mob/tools/network/KVPair<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mob/tools/network/KVPair;

    if-lez v1, :cond_1

    const/16 v3, 0x26

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_1
    iget-object v3, v2, Lcom/mob/tools/network/KVPair;->name:Ljava/lang/String;

    .line 11
    iget-object v2, v2, Lcom/mob/tools/network/KVPair;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const-string v2, ""

    .line 12
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/mob/tools/utils/Data;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static forceCast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static forceCast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 2
    :try_start_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    int-to-long v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object p0

    :catchall_0
    :cond_1
    return-object p1
.end method

.method public static getAnimRes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "anim"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "drawable"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "mipmap"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "001g"

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MobSDK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "007g4dgdfdg-cig"

    invoke-static {v3}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "007g-dgdfdgScig"

    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 6
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    return-object v0
.end method

.method public static getCacheRoot(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCacheRoot(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->getDataCache(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/mob/tools/utils/DeviceHelper;->getSdcardPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "001g"

    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MobSDK"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 7
    :cond_2
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-object p1

    :catchall_0
    move-exception p0

    .line 11
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getCacheRootFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->getCacheRoot(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getColorRes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "color"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDataCache(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "001g"

    invoke-static {p0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MobSDK"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object p0
.end method

.method public static getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->getDataCache(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 2

    .line 1
    sget v0, Lcom/mob/tools/utils/ResHelper;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/mob/tools/utils/ResHelper;->a:F

    .line 3
    :cond_0
    sget p0, Lcom/mob/tools/utils/ResHelper;->a:F

    return p0
.end method

.method public static getDensityDpi(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method public static getDensityXYDpi(Landroid/content/Context;)[F
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 8
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    int-to-long v4, v2

    .line 9
    invoke-static {v3}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr v4, v2

    long-to-int v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-long v0, v2

    return-wide v0

    .line 10
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getFileSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIdRes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "002Zde4h"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getImageCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "images"

    .line 1
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "006[eddfdiecdc:d"

    .line 1
    invoke-static {v0}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getMediaUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/mob/tools/utils/ResHelper;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 2
    sput-object v2, Lcom/mob/tools/utils/ResHelper;->c:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    new-array p1, v3, [Ljava/lang/String;

    aput-object p2, p1, v5

    .line 3
    new-instance p2, Lcom/mob/tools/utils/ResHelper$1;

    invoke-direct {p2, v1}, Lcom/mob/tools/utils/ResHelper$1;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v4, p1, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    sget-object p0, Lcom/mob/tools/utils/ResHelper;->c:Landroid/net/Uri;

    if-nez p0, :cond_0

    .line 5
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 p0, 0x2710

    .line 6
    :try_start_2
    invoke-virtual {v1, p0, p1}, Ljava/lang/Object;->wait(J)V

    .line 7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8
    :catchall_1
    :cond_0
    :goto_0
    :try_start_4
    sget-object p0, Lcom/mob/tools/utils/ResHelper;->c:Landroid/net/Uri;

    .line 9
    sput-object v2, Lcom/mob/tools/utils/ResHelper;->c:Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 10
    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getRawRes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "raw"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-gtz v0, :cond_3

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " resource \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->getSystemServiceSafe(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    move-object v1, v0

    :goto_0
    const/4 v2, 0x2

    if-nez v1, :cond_0

    new-array p0, v2, [I

    .line 3
    fill-array-data p0, :array_0

    return-object p0

    .line 4
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    new-array v0, v2, [I

    .line 7
    iget v4, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v4, v0, v1

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput p0, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    :catchall_2
    move-exception p0

    .line 8
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    new-array p0, v2, [I

    .line 9
    fill-array-data p0, :array_1

    return-object p0

    .line 10
    :cond_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-ge p0, v4, :cond_2

    .line 11
    :try_start_3
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 12
    invoke-virtual {v0, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-array v0, v2, [I

    .line 13
    iget v4, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v4, v0, v1

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput p0, v0, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-object v0

    :catchall_3
    move-exception p0

    .line 14
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    new-array p0, v2, [I

    .line 15
    fill-array-data p0, :array_2

    return-object p0

    .line 16
    :cond_2
    :try_start_4
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "011Xff\'id^geNi5dfedehdegc:i"

    invoke-static {v5}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/Point;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 18
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v1

    .line 19
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v2, [I

    .line 20
    iget v4, p0, Landroid/graphics/Point;->x:I

    aput v4, v0, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    aput p0, v0, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    return-object v0

    :catchall_4
    move-exception p0

    .line 21
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    new-array p0, v2, [I

    .line 22
    fill-array-data p0, :array_3

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public static getStringArrayRes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "array"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStringRes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleRes(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "style"

    .line 1
    invoke-static {p0, v0, p1}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleableRes(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".R$styleable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Lcom/mob/tools/utils/ReflectHelper;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    new-array p0, v0, [I

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    check-cast p0, [I

    return-object p0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 5
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aput p0, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    new-array p0, v0, [I

    return-object p0
.end method

.method public static isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static pathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "_id"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "040)dfdk!hJdhecde:h<el2ei7dh8l5defgfgdeecdkelgegdejfiddgdhgeigdgeefejekddeheiflgeejhkgd"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "_data=? "

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 5
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const-string p1, "content://media/external/images/media"

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 14
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static pxToDip(Landroid/content/Context;I)I
    .locals 2

    .line 1
    sget v0, Lcom/mob/tools/utils/ResHelper;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/mob/tools/utils/ResHelper;->a:F

    :cond_0
    int-to-float p0, p1

    .line 3
    sget p1, Lcom/mob/tools/utils/ResHelper;->a:F

    div-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static readArrayListFromFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/mob/tools/utils/ResHelper;->readArrayListFromFile(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static readArrayListFromFile(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "utf-8"

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 6
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 7
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 8
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 10
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v5, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v1, v5

    .line 11
    :cond_0
    invoke-static {v1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 12
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    new-array p1, v3, [Ljava/io/Closeable;

    aput-object p0, p1, v2

    .line 14
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    return-object v4

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 15
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array p0, v3, [Ljava/io/Closeable;

    aput-object v1, p0, v2

    .line 16
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_2
    move-exception p0

    new-array p1, v3, [Ljava/io/Closeable;

    aput-object v1, p1, v2

    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 17
    throw p0

    .line 18
    :cond_2
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static readEncodedData(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->readObjectFromFile(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static readLongFromFile(Ljava/lang/String;)J
    .locals 6

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object p0, v0, v1

    .line 6
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return-wide v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    .line 7
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array v0, v2, [Ljava/io/Closeable;

    aput-object p0, v0, v1

    .line 8
    invoke-static {v0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_2
    move-exception v0

    new-array v2, v2, [Ljava/io/Closeable;

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 9
    throw v0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static readObjectFromFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :goto_0
    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 5
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 6
    :try_start_2
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 7
    :try_start_3
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    .line 9
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-array v1, v4, [Ljava/io/Closeable;

    aput-object v6, v1, v3

    aput-object v0, v1, v2

    aput-object v5, v1, p0

    .line 10
    invoke-static {v1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    return-object v7

    :catchall_1
    move-exception v7

    goto :goto_1

    :catchall_2
    move-exception v7

    move-object v6, v1

    goto :goto_1

    :catchall_3
    move-exception v7

    move-object v0, v1

    move-object v6, v0

    goto :goto_1

    :catchall_4
    move-exception v7

    move-object v0, v1

    move-object v5, v0

    move-object v6, v5

    .line 11
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v6, v4, v3

    aput-object v0, v4, v2

    aput-object v5, v4, p0

    .line 12
    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_5
    move-exception v1

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v6, v4, v3

    aput-object v0, v4, v2

    aput-object v5, v4, p0

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 13
    throw v1

    :cond_1
    :goto_2
    return-object v1
.end method

.method public static saveAndEncodeData(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/mob/tools/utils/ResHelper;->saveObjectToFile(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static saveArrayListToFile(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/mob/tools/utils/ResHelper;->saveArrayListToFile(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    return-void
.end method

.method public static saveArrayListToFile(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "utf-8"

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4
    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p1, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 5
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 7
    invoke-static {p1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 8
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v5, 0x2

    invoke-static {p1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v3, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object p1, v3

    .line 9
    :cond_0
    invoke-virtual {v4, p1}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v4, p0, v1

    .line 10
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 11
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array p0, v2, [Ljava/io/Closeable;

    aput-object v3, p0, v1

    .line 12
    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    :goto_2
    return-void

    :catchall_2
    move-exception p0

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object v3, p1, v1

    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 13
    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static saveLongToFile(JLjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/mob/tools/utils/ResHelper;->getDataCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-direct {p2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {p2, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 5
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object p2, p0, v0

    .line 6
    invoke-static {p0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception p0

    move-object v2, p2

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 7
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    .line 8
    invoke-static {p0}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    return v0

    :catchall_2
    move-exception p0

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/mob/commons/r;->a([Ljava/io/Closeable;)V

    .line 9
    throw p0
.end method

.method public static saveObjectToFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    if-nez p1, :cond_1

    return v2

    .line 5
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_3

    .line 6
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_4

    const/4 p0, 0x2

    const/4 v4, 0x3

    .line 10
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 11
    :try_start_2
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 12
    :try_start_3
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 13
    :try_start_4
    invoke-virtual {v6, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    .line 15
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-array p1, v4, [Ljava/io/Closeable;

    aput-object v6, p1, v1

    aput-object v3, p1, v2

    aput-object v5, p1, p0

    .line 16
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    return v2

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v6, v0

    goto :goto_1

    :catchall_3
    move-exception p1

    move-object v3, v0

    move-object v6, v3

    :goto_1
    move-object v0, v5

    goto :goto_2

    :catchall_4
    move-exception p1

    move-object v3, v0

    move-object v6, v3

    .line 17
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    new-array p1, v4, [Ljava/io/Closeable;

    aput-object v6, p1, v1

    aput-object v3, p1, v2

    aput-object v0, p1, p0

    .line 18
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_5
    move-exception p1

    new-array v4, v4, [Ljava/io/Closeable;

    aput-object v6, v4, v1

    aput-object v3, v4, v2

    aput-object v0, v4, p0

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->closeIOs([Ljava/io/Closeable;)V

    .line 19
    throw p1

    :cond_4
    :goto_3
    return v1
.end method

.method public static strToDate(Ljava/lang/String;)J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static urlToBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "://"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "007cddefgg"

    if-ltz v0, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mob/tools/utils/ResHelper;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 8
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public static videoPathToContentUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "_id"

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    const-string v2, "040Ydfdk5h3dhecdeHhLel(ei?dh>l%defgfgdeecdkelgegdejfiddgdhgeigdgeefejekddeheiflgeejhkgd"

    invoke-static {v2}, Lcom/mob/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/DeviceHelper;->checkPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "_data=? "

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 5
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const-string p1, "content://media/external/video/media"

    .line 6
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 14
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
