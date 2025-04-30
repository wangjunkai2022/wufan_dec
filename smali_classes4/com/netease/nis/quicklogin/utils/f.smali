.class public Lcom/netease/nis/quicklogin/utils/f;
.super Ljava/lang/Object;
.source "StatisticsUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/utils/f$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/netease/nis/quicklogin/utils/f;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/netease/nis/quicklogin/utils/f$a;


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
    new-instance v0, Lcom/netease/nis/quicklogin/utils/f$a;

    invoke-direct {v0}, Lcom/netease/nis/quicklogin/utils/f$a;-><init>()V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/f;->a:Lcom/netease/nis/quicklogin/utils/f$a;

    return-void
.end method

.method public static a()Lcom/netease/nis/quicklogin/utils/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/nis/quicklogin/utils/f;->b:Lcom/netease/nis/quicklogin/utils/f;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/netease/nis/quicklogin/utils/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/nis/quicklogin/utils/f;->b:Lcom/netease/nis/quicklogin/utils/f;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/nis/quicklogin/utils/f;

    invoke-direct {v1}, Lcom/netease/nis/quicklogin/utils/f;-><init>()V

    sput-object v1, Lcom/netease/nis/quicklogin/utils/f;->b:Lcom/netease/nis/quicklogin/utils/f;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/nis/quicklogin/utils/f;->b:Lcom/netease/nis/quicklogin/utils/f;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/f;
    .locals 0

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/f;->a:Lcom/netease/nis/quicklogin/utils/f$a;

    iput-object p1, v0, Lcom/netease/nis/quicklogin/utils/f$a;->a:Ljava/lang/String;

    return-void
.end method
