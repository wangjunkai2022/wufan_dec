.class public Lcom/sdk/v/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/sdk/v/a;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:I

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/g;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sdk/v/a;
    .locals 2

    sget-object v0, Lcom/sdk/v/a;->a:Lcom/sdk/v/a;

    if-nez v0, :cond_0

    const-class v0, Lcom/sdk/v/a;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/sdk/v/a;

    invoke-direct {v1, p0}, Lcom/sdk/v/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sdk/v/a;->a:Lcom/sdk/v/a;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    sget-object p0, Lcom/sdk/v/a;->a:Lcom/sdk/v/a;

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sdk/v/a;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p2, Lcom/sdk/v/a;->b:Ljava/lang/String;

    .line 2
    sput-object p1, Lcom/sdk/v/a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    sput p1, Lcom/sdk/v/a;->d:I

    const-string p1, "B"

    sput-object p1, Lcom/sdk/v/a;->e:Ljava/lang/String;

    return-void
.end method
