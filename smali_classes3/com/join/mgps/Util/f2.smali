.class public Lcom/join/mgps/Util/f2;
.super Ljava/lang/Object;
.source "TagAliasOperatorHelper.java"


# static fields
.field private static final d:Ljava/lang/String; = "JIGUANG-TagAliasHelper"

.field public static e:I = 0x1

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field public static final k:I = 0x6

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field private static n:Lcom/join/mgps/Util/f2;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


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
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/Util/f2;->b:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Lcom/join/mgps/Util/f2$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/f2$a;-><init>(Lcom/join/mgps/Util/f2;)V

    iput-object v0, p0, Lcom/join/mgps/Util/f2;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(ILjava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/f2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/Util/d0;->e(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "JIGUANG-TagAliasHelper"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "no network"

    aput-object p2, p1, v3

    .line 2
    invoke-static {v1, p1}, Lcom/join/mgps/Util/u0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    const/16 v0, 0x1772

    if-eq p1, v0, :cond_2

    const/16 v4, 0x1788

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "need retry"

    aput-object v5, v4, v3

    .line 3
    invoke-static {v1, v4}, Lcom/join/mgps/Util/u0;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v4, 0x2

    .line 5
    iput v4, v1, Landroid/os/Message;->what:I

    .line 6
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/join/mgps/Util/f2;->c:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {p2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v2, [Ljava/lang/Object;

    if-ne p1, v0, :cond_3

    const-string p1, "timeout"

    goto :goto_1

    :cond_3
    const-string p1, "server internal error\u201d"

    :goto_1
    aput-object p1, v1, v3

    const-string p1, "Failed to set mobile number due to %s. Try again after 60s."

    invoke-static {p2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/join/mgps/Util/f2;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/join/mgps/Util/d0;->j(Ljava/lang/String;Landroid/content/Context;)V

    return v2
.end method

.method static synthetic b(Lcom/join/mgps/Util/f2;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/f2;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/Util/f2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/f2;->a:Landroid/content/Context;

    return-object p0
.end method

.method private e(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "unkonw operation"

    return-object p1

    :pswitch_0
    const-string p1, "check"

    return-object p1

    :pswitch_1
    const-string p1, "get"

    return-object p1

    :pswitch_2
    const-string p1, "clean"

    return-object p1

    :pswitch_3
    const-string p1, "delete"

    return-object p1

    :pswitch_4
    const-string p1, "set"

    return-object p1

    :pswitch_5
    const-string p1, "add"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f()Lcom/join/mgps/Util/f2;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/Util/f2;->n:Lcom/join/mgps/Util/f2;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/join/mgps/Util/f2;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/join/mgps/Util/f2;->n:Lcom/join/mgps/Util/f2;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/join/mgps/Util/f2;

    invoke-direct {v1}, Lcom/join/mgps/Util/f2;-><init>()V

    sput-object v1, Lcom/join/mgps/Util/f2;->n:Lcom/join/mgps/Util/f2;

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
    sget-object v0, Lcom/join/mgps/Util/f2;->n:Lcom/join/mgps/Util/f2;

    return-object v0
.end method

.method private g(ZII)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/join/mgps/Util/f2;->e(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    if-eqz p1, :cond_0

    const-string p1, "alias"

    goto :goto_0

    :cond_0
    const-string p1, " tags"

    :goto_0
    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    const/16 p2, 0x1772

    if-ne p3, p2, :cond_1

    const-string p2, "timeout"

    goto :goto_1

    :cond_1
    const-string p2, "server too busy"

    :goto_1
    aput-object p2, v1, p1

    const-string p1, "Failed to %s %s due to %s. Try again after 60s."

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public d(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/f2;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/Util/f2;->a:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public j(ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/f2;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public k(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/f2;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
