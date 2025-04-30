.class public Lcom/ss/android/socialbase/downloader/network/k;
.super Ljava/lang/Object;
.source "NetTrafficManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/downloader/network/k$b;,
        Lcom/ss/android/socialbase/downloader/network/k$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "k"


# instance fields
.field private final b:Lcom/ss/android/socialbase/downloader/network/d;

.field private volatile c:Z

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/ss/android/socialbase/downloader/network/l;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/ss/android/socialbase/downloader/network/l;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/socialbase/downloader/network/k$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/ss/android/socialbase/downloader/network/d;

    const-wide v1, 0x3fa999999999999aL    # 0.05

    invoke-direct {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/network/d;-><init>(D)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->b:Lcom/ss/android/socialbase/downloader/network/d;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->c:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/ss/android/socialbase/downloader/network/l;->e:Lcom/ss/android/socialbase/downloader/network/l;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->f:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/socialbase/downloader/network/k$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/k;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/socialbase/downloader/network/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/k$a;->a:Lcom/ss/android/socialbase/downloader/network/k;

    return-object v0
.end method

.method private a(D)Lcom/ss/android/socialbase/downloader/network/l;
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    .line 21
    sget-object p1, Lcom/ss/android/socialbase/downloader/network/l;->e:Lcom/ss/android/socialbase/downloader/network/l;

    return-object p1

    :cond_0
    const-wide v0, 0x4062c00000000000L    # 150.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    .line 22
    sget-object p1, Lcom/ss/android/socialbase/downloader/network/l;->a:Lcom/ss/android/socialbase/downloader/network/l;

    return-object p1

    :cond_1
    const-wide v0, 0x4081300000000000L    # 550.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_2

    .line 23
    sget-object p1, Lcom/ss/android/socialbase/downloader/network/l;->b:Lcom/ss/android/socialbase/downloader/network/l;

    return-object p1

    :cond_2
    const-wide v0, 0x409f400000000000L    # 2000.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_3

    .line 24
    sget-object p1, Lcom/ss/android/socialbase/downloader/network/l;->c:Lcom/ss/android/socialbase/downloader/network/l;

    return-object p1

    .line 25
    :cond_3
    sget-object p1, Lcom/ss/android/socialbase/downloader/network/l;->d:Lcom/ss/android/socialbase/downloader/network/l;

    return-object p1
.end method

.method private c()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->b:Lcom/ss/android/socialbase/downloader/network/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/network/l;

    .line 3
    sget-object v2, Lcom/ss/android/socialbase/downloader/network/k$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const-wide v2, 0x409f400000000000L    # 2000.0

    const-wide v4, 0x4081300000000000L    # 550.0

    const-wide v6, 0x4062c00000000000L    # 150.0

    const/4 v8, 0x1

    if-eq v0, v8, :cond_3

    const/4 v9, 0x2

    if-eq v0, v9, :cond_2

    const/4 v6, 0x3

    if-eq v0, v6, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    return v8

    :cond_1
    const-wide v4, 0x47efffffe0000000L    # 3.4028234663852886E38

    move-wide v10, v2

    move-wide v2, v4

    move-wide v4, v10

    goto :goto_0

    :cond_2
    move-wide v2, v4

    move-wide v4, v6

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v2, v6

    .line 4
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->b:Lcom/ss/android/socialbase/downloader/network/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/d;->a()D

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double v0, v6, v2

    if-lez v0, :cond_5

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double v2, v2, v4

    cmpl-double v0, v6, v2

    if-lez v0, :cond_6

    return v8

    :cond_5
    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v4, v4, v2

    cmpg-double v0, v6, v4

    if-gez v0, :cond_6

    return v8

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    return v1
.end method

.method private d()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/network/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/socialbase/downloader/network/k$b;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/network/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/socialbase/downloader/network/l;

    invoke-interface {v2, v3}, Lcom/ss/android/socialbase/downloader/network/k$b;->a(Lcom/ss/android/socialbase/downloader/network/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(JJ)V
    .locals 3

    monitor-enter p0

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    long-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    mul-double p1, p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-eqz v2, :cond_5

    const-wide/high16 p3, 0x4008000000000000L    # 3.0

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/network/k;->b:Lcom/ss/android/socialbase/downloader/network/d;

    invoke-virtual {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/network/d;->a(D)V

    .line 4
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/network/k;->b()Lcom/ss/android/socialbase/downloader/network/l;

    move-result-object p1

    .line 5
    iget-boolean p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->c:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 6
    iget p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->g:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->g:I

    .line 7
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    const/4 p4, 0x0

    if-eq p1, p2, :cond_1

    .line 8
    iput-boolean p4, p0, Lcom/ss/android/socialbase/downloader/network/k;->c:Z

    .line 9
    iput p3, p0, Lcom/ss/android/socialbase/downloader/network/k;->g:I

    .line 10
    :cond_1
    iget p1, p0, Lcom/ss/android/socialbase/downloader/network/k;->g:I

    int-to-double p1, p1

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_2

    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/k;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iput-boolean p4, p0, Lcom/ss/android/socialbase/downloader/network/k;->c:Z

    .line 12
    iput p3, p0, Lcom/ss/android/socialbase/downloader/network/k;->g:I

    .line 13
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/network/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 14
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/network/k;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_2
    monitor-exit p0

    return-void

    .line 16
    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_4

    .line 17
    iput-boolean p3, p0, Lcom/ss/android/socialbase/downloader/network/k;->c:Z

    .line 18
    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/network/k;->e:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :catchall_0
    :cond_4
    monitor-exit p0

    return-void

    .line 20
    :cond_5
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b()Lcom/ss/android/socialbase/downloader/network/l;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/network/k;->b:Lcom/ss/android/socialbase/downloader/network/d;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/l;->e:Lcom/ss/android/socialbase/downloader/network/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/network/d;->a()D

    move-result-wide v0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/network/k;->a(D)Lcom/ss/android/socialbase/downloader/network/l;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    sget-object v0, Lcom/ss/android/socialbase/downloader/network/l;->e:Lcom/ss/android/socialbase/downloader/network/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
