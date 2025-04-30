.class public Lcom/mob/commons/cc/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/commons/cc/t<",
        "Lcom/mob/commons/cc/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;I)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    invoke-static {p0, p1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/mob/tools/utils/BitmapHelper;->getBitmapByCompressSize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;IIIJ)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    invoke-static/range {p0 .. p5}, Lcom/mob/tools/utils/BitmapHelper;->getBitmapByCompressQuality(Ljava/lang/String;IIIJ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a([I[I)[I
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lcom/mob/tools/utils/BitmapHelper;->fixRect([I[I)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/mob/commons/cc/c;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/commons/cc/c;",
            "Ljava/lang/Class<",
            "Lcom/mob/commons/cc/c;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[Z[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "getBitmapByCompressSize"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    array-length v2, v1

    if-ne v2, v3, :cond_0

    .line 7
    :try_start_0
    aget-object v0, v1, v7

    check-cast v0, Ljava/lang/String;

    aget-object v2, v1, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/mob/commons/cc/c;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, p6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    aput-object v4, p6, v7

    .line 9
    aput-object v0, p7, v7

    :goto_0
    return v6

    :cond_0
    const-string v2, "getBitmapByCompressQuality"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    array-length v2, v1

    const/4 v8, 0x5

    if-ne v2, v8, :cond_1

    .line 11
    :try_start_1
    aget-object v0, v1, v7

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    aget-object v0, v1, v6

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v0, v1, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v0, v1, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v0, 0x4

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static/range {v8 .. v13}, Lcom/mob/commons/cc/c;->a(Ljava/lang/String;IIIJ)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, p6, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 12
    aput-object v4, p6, v7

    .line 13
    aput-object v0, p7, v7

    :goto_1
    return v6

    :cond_1
    const-string v2, "getBitmap"

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    array-length v2, v1

    if-ne v2, v5, :cond_2

    .line 15
    :try_start_2
    aget-object v0, v1, v7

    check-cast v0, Ljava/io/File;

    aget-object v1, v1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mob/commons/cc/c;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v0, p6, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 16
    aput-object v4, p6, v7

    .line 17
    aput-object v0, p7, v7

    :goto_2
    return v6

    :cond_2
    const-string v2, "fixRect"

    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, v1

    if-ne v0, v5, :cond_3

    .line 19
    :try_start_3
    aget-object v0, v1, v7

    check-cast v0, [I

    aget-object v1, v1, v6

    check-cast v1, [I

    invoke-static {v0, v1}, Lcom/mob/commons/cc/c;->a([I[I)[I

    move-result-object v0

    aput-object v0, p6, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 20
    aput-object v4, p6, v7

    .line 21
    aput-object v0, p7, v7

    :goto_3
    return v6

    :cond_3
    return v7
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/mob/commons/cc/c;

    invoke-virtual/range {p0 .. p7}, Lcom/mob/commons/cc/c;->a(Lcom/mob/commons/cc/c;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Z[Ljava/lang/Object;[Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
