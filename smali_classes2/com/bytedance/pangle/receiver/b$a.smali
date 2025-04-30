.class Lcom/bytedance/pangle/receiver/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/pangle/receiver/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/pangle/receiver/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/pangle/receiver/b$a;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-static {p0}, Lcom/bytedance/pangle/receiver/b$a;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/bytedance/pangle/receiver/b$a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    .line 11
    :try_start_0
    invoke-static {p0, p1}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    const-string v0, "android.app.LoadedApk"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mReceiverResource"

    invoke-static {v0, v1}, Lcom/bytedance/pangle/util/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.app.ContextImpl"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mPackageInfo"

    invoke-static {v1, v2}, Lcom/bytedance/pangle/util/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1, p0}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {v0, p0}, Lcom/bytedance/pangle/util/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/bytedance/pangle/receiver/b$a;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "mWhiteList"

    .line 2
    invoke-static {v0, v1}, Lcom/bytedance/pangle/receiver/b$a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, [Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, [Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v3, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    const-string v1, "mResourceConfig"

    .line 9
    invoke-static {v0, v1, p1}, Lcom/bytedance/pangle/util/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
