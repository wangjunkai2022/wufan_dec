.class Lcom/tencent/stat/common/o;
.super Ljava/lang/Object;


# static fields
.field private static a:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 9

    sget v0, Lcom/tencent/stat/common/o;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x6

    const-string v3, "/bin"

    const-string v4, "/system/bin/"

    const-string v5, "/system/xbin/"

    const-string v6, "/system/sbin/"

    const-string v7, "/sbin/"

    const-string v8, "/vendor/bin/"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    sput v1, Lcom/tencent/stat/common/o;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    sput v2, Lcom/tencent/stat/common/o;->a:I

    return v2
.end method
