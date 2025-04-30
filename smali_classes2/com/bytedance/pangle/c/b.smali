.class public final Lcom/bytedance/pangle/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/pangle/c/b;->c:Ljava/util/Map;

    .line 2
    invoke-static {}, Lcom/bytedance/pangle/util/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sput-object v0, Lcom/bytedance/pangle/c/b;->b:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/pangle/c/b;->b:Ljava/lang/String;

    .line 5
    :goto_0
    sget-object v0, Lcom/bytedance/pangle/c/b;->c:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "arm64-v8a"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/bytedance/pangle/c/b;->c:Ljava/util/Map;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "armeabi-v7a"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/bytedance/pangle/c/b;->c:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "armeabi"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/bytedance/pangle/c/b;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "x86_64"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/bytedance/pangle/c/b;->c:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "x86"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/bytedance/pangle/c/b;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "mips64"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/bytedance/pangle/c/b;->c:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mips"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/bytedance/pangle/c/b;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/pangle/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Lcom/bytedance/pangle/c/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/bytedance/pangle/c/b;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/pangle/c/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    const-string v0, "primaryCpuAbi"

    const-string v1, "Zeus/so"

    .line 62
    invoke-static {}, Lcom/bytedance/pangle/util/h;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 64
    invoke-static {v2, v0}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "NativeLibHelper inferHostAbiAuto, primaryCpuAbi="

    .line 65
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p0, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 68
    :try_start_1
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    const/16 v4, 0x40

    goto :goto_1

    :cond_1
    const/16 v0, 0x20

    const/16 v4, 0x20

    :goto_1
    const-string v0, "NativeLibHelper inferHostAbiAuto, processMode="

    .line 69
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v0, "NativeLibHelper inferHostAbiAuto, processMode exception default="

    .line 70
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "NativeLibHelper inferHostAbiAuto, processMode default=0"

    .line 71
    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v0, "processMode"

    .line 72
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/bytedance/pangle/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_3

    .line 73
    sget-object v0, Lcom/bytedance/pangle/c/b;->c:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    const-string v0, "NativeLibHelper inferHostAbiAuto2, sHostAbi="

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    const-string v0, "NativeLibHelper inferHostAbiAuto1, sHostAbi="

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    const-string v2, "NativeLibHelper inferHostAbiAuto failed!"

    .line 76
    invoke-static {v1, v2, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "autoError"

    const-string v1, "1"

    .line 77
    invoke-static {p0, v0, v1}, Lcom/bytedance/pangle/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/util/zip/ZipFile;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    const-string v2, "^lib/[^/]+/lib[^/]+.so$"

    .line 33
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 34
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 36
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "../"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 39
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 40
    array-length v5, v4

    sub-int/2addr v5, v6

    aget-object v4, v4, v5

    .line 41
    sget-object v5, Lcom/bytedance/pangle/c/b;->c:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 43
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NativeLibHelper getAllSoZipEntries, zipFile="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", soEntries="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Zeus/so"

    invoke-static {v1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {v1}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    move-result-object p0

    .line 3
    sget-object v2, Lcom/bytedance/pangle/c/b;->a:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Zeus/so"

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NativeLibHelper copyNativeLib pre-verify-matchHostAbi["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "], pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    .line 5
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8
    sget-object v3, Lcom/bytedance/pangle/c/b;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/bytedance/pangle/c/b;->b:Ljava/lang/String;

    :goto_0
    const/4 v4, -0x1

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "mips"

    const-string/jumbo v7, "x86"

    const-string/jumbo v8, "x86_64"

    const-string v9, "mips64"

    const-string v10, "arm64-v8a"

    const-string v11, "armeabi-v7a"

    const-string v12, "armeabi"

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    :try_start_2
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_3
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_4
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_6
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x5

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 10
    :pswitch_0
    invoke-static {p0, v6, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_2

    .line 11
    :pswitch_1
    invoke-static {p0, v9, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_2

    .line 12
    :pswitch_2
    invoke-static {p0, v7, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 14
    invoke-static {p0, v11, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    .line 15
    invoke-static {p0, v12, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_2

    .line 16
    :pswitch_3
    invoke-static {p0, v8, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 18
    invoke-static {p0, v10, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_2

    .line 19
    :pswitch_4
    invoke-static {p0, v12, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_2

    .line 20
    :pswitch_5
    invoke-static {p0, v11, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    .line 21
    invoke-static {p0, v12, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    goto :goto_2

    .line 22
    :pswitch_6
    invoke-static {p0, v10, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    :cond_3
    :goto_2
    if-eqz v0, :cond_6

    .line 23
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_4

    .line 24
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5

    .line 25
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 26
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/zip/ZipEntry;

    .line 27
    invoke-static {v1, p2, p1}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    goto :goto_3

    :cond_6
    :goto_4
    const-string p0, "Zeus/install"

    const-string p1, "NativeLibHelper copyNativeLib, supportedSoEntries empty, pkg="

    .line 28
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-void

    :cond_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    return-void

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 30
    :cond_8
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        -0x40038063 -> :sswitch_6
        -0x300b59d9 -> :sswitch_5
        -0x2c0bb1c1 -> :sswitch_4
        0x1c976 -> :sswitch_3
        0x33249f -> :sswitch_2
        0x8ab4d72 -> :sswitch_1
        0x5553f3ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    .line 47
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/zip/ZipEntry;

    .line 49
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .locals 6

    .line 53
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 55
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    :try_start_0
    const-string v3, "Zeus/install"

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NativeLibHelper copySoZipEntry, soZipEntry="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", targetSoFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v4}, Lcom/bytedance/pangle/util/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x3

    if-ge p2, v4, :cond_2

    add-int/lit8 p2, p2, 0x1

    :goto_0
    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_2
    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-void
.end method

.method public static a(Ljava/io/File;)Z
    .locals 7

    const-string v0, "NativeLibHelper isPluginApkMatchHostAbi, close sourceApkZipFile error!"

    const-string v1, "Zeus/so"

    const/4 v2, 0x0

    .line 78
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    invoke-static {v3}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    move-result-object v2

    .line 80
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    const-string v4, "NativeLibHelper isPluginApkMatchHostAbi [true] soEntries empty, "

    .line 81
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    sget-object v4, Lcom/bytedance/pangle/c/b;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "], "

    const-string v5, "NativeLibHelper isPluginApkMatchHostAbi ["

    if-eqz v2, :cond_1

    .line 83
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_2
    :try_start_4
    const-string v3, "NativeLibHelper isPluginApkMatchHostAbi, get sourceApk ZipFile failed!"

    .line 87
    invoke-static {v1, v3, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 88
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 89
    :catch_3
    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    const/4 p0, 0x0

    return p0

    :goto_4
    if-eqz v2, :cond_3

    .line 90
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    .line 91
    :catch_4
    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3
    :goto_5
    throw p0
.end method

.method public static b()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/c/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/bytedance/pangle/c/b;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static b(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8

    const-string v0, "Zeus/so"

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 4
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/util/zip/ZipFile;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 6
    invoke-static {v3}, Lcom/bytedance/pangle/c/b;->a(Ljava/util/zip/ZipFile;)Ljava/util/Map;

    move-result-object v2

    .line 7
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v2, "NativeLibHelper inferHostAbiManual, close sourceApkZipFile error!"

    .line 9
    invoke-static {v0, v2}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-static {}, Lcom/bytedance/pangle/util/h;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 12
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v3, v2, v1

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 13
    :goto_1
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NativeLibHelper inferHostAbiManual, host source apk .so is empty, use supportedABIs[0]="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "supportedABI0"

    .line 15
    aget-object v4, v2, v1

    invoke-static {p0, v3, v4}, Lcom/bytedance/pangle/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    aget-object p0, v2, v1

    return-object p0

    .line 17
    :cond_1
    array-length v3, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 18
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v2, "NativeLibHelper inferHostAbiManual, match cpuAbi="

    .line 19
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "matchCpuAbi"

    .line 20
    invoke-static {p0, v2, v6}, Lcom/bytedance/pangle/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catchall_0
    move-exception v2

    const-string v3, "NativeLibHelper inferHostAbiManual failed!"

    .line 21
    invoke-static {v0, v3, v2}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "manualError"

    const-string v2, "1"

    .line 22
    invoke-static {p0, v0, v2}, Lcom/bytedance/pangle/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_3
    invoke-static {}, Lcom/bytedance/pangle/util/h;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v2, v0, v1

    const-string v3, "defaultABI0"

    invoke-static {p0, v3, v2}, Lcom/bytedance/pangle/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    aget-object p0, v0, v1

    return-object p0

    .line 26
    :cond_4
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "defaultABI"

    invoke-static {p0, v1, v0}, Lcom/bytedance/pangle/c/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/io/File;)Z
    .locals 7

    const-string v0, "NativeLibHelper hasNativeLib, close sourceApkZipFile error!"

    const-string v1, "Zeus/so"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 27
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    const-string v3, "^lib/[^/]+/lib[^/]+.so$"

    .line 29
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 30
    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 31
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 32
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_0

    .line 33
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_0

    .line 34
    :try_start_2
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 36
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 37
    :catch_1
    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    :goto_2
    :try_start_4
    const-string v4, "NativeLibHelper hasNativeLib, get sourceApk ZipFile failed!"

    .line 38
    invoke-static {v1, v4, p0}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_2

    .line 39
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    .line 40
    :catch_4
    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    return v2

    :goto_4
    if-eqz v3, :cond_3

    .line 41
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    .line 42
    :catch_5
    invoke-static {v1, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_3
    :goto_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/pangle/c/b;->d()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/bytedance/pangle/c/b;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/bytedance/pangle/c/b;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private static d()Lorg/json/JSONObject;
    .locals 3

    const-string v0, "0"

    .line 1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "primaryCpuAbi"

    .line 2
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "processMode"

    .line 3
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "supportedABI0"

    .line 4
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "matchCpuAbi"

    .line 5
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "defaultABI0"

    .line 6
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "defaultABI"

    .line 7
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "autoError"

    .line 8
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "manualError"

    .line 9
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v1
.end method
