.class public Lcom/bytedance/pangle/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/pangle/b/b$a;
    }
.end annotation


# static fields
.field public static b:Ljava/lang/String; = "request_finish"

.field public static c:Ljava/lang/String; = "download_start"

.field public static d:Ljava/lang/String; = "download_finish"

.field public static e:Ljava/lang/String; = "install_start"

.field public static f:Ljava/lang/String; = "install_finish"

.field public static g:Ljava/lang/String; = "load_start"

.field public static h:Ljava/lang/String; = "load_finish"

.field private static volatile i:Lcom/bytedance/pangle/b/b;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/pangle/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/pangle/b/b;->a:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/bytedance/pangle/b/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/pangle/b/b;->i:Lcom/bytedance/pangle/b/b;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/bytedance/pangle/b/b;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/bytedance/pangle/b/b;

    invoke-direct {v1}, Lcom/bytedance/pangle/b/b;-><init>()V

    sput-object v1, Lcom/bytedance/pangle/b/b;->i:Lcom/bytedance/pangle/b/b;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/bytedance/pangle/b/b;->i:Lcom/bytedance/pangle/b/b;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/bytedance/pangle/b/b;->a:Ljava/util/List;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/pangle/b/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/pangle/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/bytedance/pangle/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 9
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
