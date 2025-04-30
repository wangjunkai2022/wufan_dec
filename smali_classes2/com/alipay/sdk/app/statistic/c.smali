.class public final Lcom/alipay/sdk/app/statistic/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String; = "net"

.field public static final l:Ljava/lang/String; = "biz"

.field public static final m:Ljava/lang/String; = "cp"

.field public static final n:Ljava/lang/String; = "H5PayNetworkError"

.field public static final o:Ljava/lang/String; = "H5AuthNetworkError"

.field public static final p:Ljava/lang/String; = "SSLError"

.field public static final q:Ljava/lang/String; = "H5PayDataAnalysisError"

.field public static final r:Ljava/lang/String; = "H5AuthDataAnalysisError"

.field public static final s:Ljava/lang/String; = "ClientSignError"

.field public static final t:Ljava/lang/String; = "ClientBindFailed"

.field public static final u:Ljava/lang/String; = "TriDesEncryptError"

.field public static final v:Ljava/lang/String; = "TriDesDecryptError"

.field public static final w:Ljava/lang/String; = "ClientBindException"

.field public static final x:Ljava/lang/String; = "partner"

.field public static final y:Ljava/lang/String; = "out_trade_no"

.field public static final z:Ljava/lang/String; = "trade_no"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->i:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "123456789,%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->c:Ljava/lang/String;

    const-string v0, "15.0.8"

    .line 5
    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "h.a.3.0.8"

    invoke-static {v2}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v2, v5, v1

    const-string v0, "android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->d:Ljava/lang/String;

    .line 6
    invoke-static {}, Ln/b;->a()Ln/b;

    move-result-object v0

    iget-object v0, v0, Ln/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object v2

    invoke-virtual {v2}, Lm/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v2, v5, v1

    const-string v0, "%s,%s,-,-,-"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->e:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/alipay/sdk/util/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/alipay/sdk/util/b;->d(Landroid/content/Context;)Lcom/alipay/sdk/util/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/sdk/util/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/sdk/util/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v3

    const-string v0, "android"

    aput-object v0, v8, v1

    aput-object v2, v8, v4

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    const-string v1, "-"

    aput-object v1, v8, v0

    const/4 v0, 0x5

    aput-object v6, v8, v0

    const/4 v0, 0x6

    aput-object v7, v8, v0

    const/4 v0, 0x7

    const-string v2, "gw"

    aput-object v2, v8, v0

    const/16 v0, 0x8

    aput-object p1, v8, v0

    const-string p1, "%s,%s,%s,%s,%s,%s,%s,%s,%s,-"

    invoke-static {p1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->f:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->g:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->h:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->j:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "-"

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 5
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object v2, v1

    :catchall_1
    :goto_0
    move-object p0, v1

    move-object v1, v2

    goto :goto_1

    :cond_0
    move-object p0, v1

    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const-string p0, "%s,%s,-,-,-"

    .line 6
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "["

    const-string/jumbo v1, "\u3010"

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "]"

    const-string/jumbo v1, "\u3011"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "("

    const-string/jumbo v1, "\uff08"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ")"

    const-string/jumbo v1, "\uff09"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string/jumbo v1, "\uff0c"

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, "="

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "^"

    const-string/jumbo v1, "~"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    const-string v0, " \u300b "

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :catchall_0
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static g()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "123456789,%s"

    .line 3
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/alipay/sdk/util/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p0}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/sdk/util/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {p0}, Lcom/alipay/sdk/util/b;->d(Landroid/content/Context;)Lcom/alipay/sdk/util/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/sdk/util/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {p0}, Lcom/alipay/sdk/util/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/sdk/util/b;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v5, 0x9

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const-string v6, "android"

    aput-object v6, v5, v0

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    const-string v1, "-"

    aput-object v1, v5, v0

    const/4 v0, 0x5

    aput-object v3, v5, v0

    const/4 v0, 0x6

    aput-object v4, v5, v0

    const/4 v0, 0x7

    const-string v1, "gw"

    aput-object v1, v5, v0

    const/16 v0, 0x8

    aput-object p0, v5, v0

    const-string p0, "%s,%s,%s,%s,%s,%s,%s,%s,%s,-"

    .line 7
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "&"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    array-length v5, p1

    move-object v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_4

    aget-object v8, p1, v7

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    array-length v9, v8

    if-ne v9, v2, :cond_3

    aget-object v9, v8, v4

    const-string v10, "partner"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "\""

    if-eqz v9, :cond_1

    aget-object v8, v8, v3

    invoke-virtual {v8, v10, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_1

    :cond_1
    aget-object v9, v8, v4

    const-string v11, "out_trade_no"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    aget-object v0, v8, v3

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    aget-object v9, v8, v4

    const-string v11, "trade_no"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    aget-object v6, v8, v3

    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move-object p1, v0

    move-object v0, v6

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v4

    aput-object p1, v6, v3

    aput-object v1, v6, v2

    const-string p1, "%s,%s,-,%s,-,-,-"

    invoke-static {p1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->b:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->c:Ljava/lang/String;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->d:Ljava/lang/String;

    aput-object p1, v0, v5

    const/4 p1, 0x4

    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->e:Ljava/lang/String;

    aput-object v1, v0, p1

    const/4 p1, 0x5

    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->f:Ljava/lang/String;

    aput-object v1, v0, p1

    const/4 p1, 0x6

    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->g:Ljava/lang/String;

    aput-object v1, v0, p1

    const/4 p1, 0x7

    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->h:Ljava/lang/String;

    aput-object v1, v0, p1

    const/16 p1, 0x8

    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->i:Ljava/lang/String;

    aput-object v1, v0, p1

    const/16 p1, 0x9

    iget-object v1, p0, Lcom/alipay/sdk/app/statistic/c;->j:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string p1, "[(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s),(%s)]"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static j()Ljava/lang/String;
    .locals 4

    const-string v0, "15.0.8"

    .line 1
    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h.a.3.0.8"

    .line 2
    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "android,3,%s,%s,com.alipay.mcpay,5.0,-,-,-"

    .line 3
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "&"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_4

    .line 2
    array-length v4, p0

    move-object v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    aget-object v7, p0, v6

    const-string v8, "="

    .line 3
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4
    array-length v8, v7

    if-ne v8, v0, :cond_2

    .line 5
    aget-object v8, v7, v3

    const-string v9, "partner"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const-string v9, ""

    const-string v10, "\""

    if-eqz v8, :cond_0

    .line 6
    aget-object v7, v7, v2

    invoke-virtual {v7, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    goto :goto_1

    .line 7
    :cond_0
    aget-object v8, v7, v3

    const-string v11, "out_trade_no"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 8
    aget-object v1, v7, v2

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 9
    :cond_1
    aget-object v8, v7, v3

    const-string v11, "trade_no"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 10
    aget-object v5, v7, v2

    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object p0, v1

    move-object v1, v5

    goto :goto_2

    :cond_4
    move-object p0, v1

    .line 11
    :goto_2
    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object p0, v5, v2

    aput-object v4, v5, v0

    const-string p0, "%s,%s,-,%s,-,-,-"

    .line 14
    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Ln/b;->a()Ln/b;

    move-result-object v0

    iget-object v0, v0, Ln/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lm/b;->b()Lm/b;

    move-result-object v1

    invoke-virtual {v1}, Lm/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%s,%s,-,-,-"

    .line 3
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/app/statistic/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Lcom/alipay/sdk/app/statistic/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "%s,%s,%s,-"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/alipay/sdk/app/statistic/c;->i:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/sdk/app/statistic/c;->i:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p3}, Lcom/alipay/sdk/app/statistic/c;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/sdk/app/statistic/c;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
