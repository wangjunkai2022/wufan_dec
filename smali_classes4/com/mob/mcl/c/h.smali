.class public Lcom/mob/mcl/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/mcl/c/d;


# static fields
.field private static volatile m:Lcom/mob/mcl/c/h;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/util/concurrent/atomic/AtomicLong;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Z

.field private n:Lcom/mob/tools/network/NetworkHelper;

.field private o:Lcom/mob/tools/utils/Hashon;

.field private p:Lcom/mob/mcl/c/f;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Landroid/content/Context;

.field private t:Lcom/mob/mcl/MobMCL$ELPMessageListener;

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Lcom/mob/mcl/BusinessMessageListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Lcom/mob/mcl/d/c;

.field private x:Lcom/mob/mgs/OnIdChangeListener;

.field private y:I

.field private z:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x10e

    .line 3
    iput v0, p0, Lcom/mob/mcl/c/h;->e:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/mob/mcl/c/h;->y:I

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "tpHelper init"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/mob/mcl/c/f;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/f;-><init>(Lcom/mob/mcl/c/d;)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    .line 8
    new-instance v0, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v0}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->n:Lcom/mob/tools/network/NetworkHelper;

    .line 9
    new-instance v0, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v0}, Lcom/mob/tools/utils/Hashon;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    .line 11
    new-instance v0, Lcom/mob/mcl/d/c;

    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mob/mcl/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->w:Lcom/mob/mcl/d/c;

    .line 12
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    return-void
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 237
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 238
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private a(J)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    new-instance v0, Lcom/mob/mcl/c/e;

    const/16 v1, 0x3ed

    invoke-direct {v0, v1}, Lcom/mob/mcl/c/e;-><init>(I)V

    .line 85
    iput-wide p1, v0, Lcom/mob/mcl/c/e;->c:J

    .line 86
    iget-object v1, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {v1, v0}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    .line 87
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tp sd ty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , u = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bo : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 88
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(JZ)V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "state"

    .line 76
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p3, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p3, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p3

    .line 78
    new-instance v1, Lcom/mob/mcl/c/e;

    const/16 v2, 0x3ee

    invoke-direct {p0, v0, p3}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tp sd ty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , u = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " bo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 80
    iput-wide p1, v1, Lcom/mob/mcl/c/e;->c:J

    .line 81
    iget-object p1, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {p1, v1}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 82
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mob/mcl/c/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->m()V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)Z
    .locals 5

    monitor-enter p0

    if-eqz p2, :cond_1

    .line 203
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/mob/mcl/c/h;->w:Lcom/mob/mcl/d/c;

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    const/4 p1, 0x1

    .line 206
    monitor-exit p0

    return p1

    .line 207
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 208
    iget-object p2, p0, Lcom/mob/mcl/c/h;->w:Lcom/mob/mcl/d/c;

    invoke-virtual {p2, p1, v0, v1}, Lcom/mob/mcl/d/c;->a(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 209
    monitor-exit p0

    return p1
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "determineDomain"

    const-string v1, "uniqueKey"

    const-string v2, "uniqueId"

    const-string v3, "domains"

    const/4 v4, 0x0

    .line 95
    :try_start_0
    iput-boolean v4, p0, Lcom/mob/mcl/c/h;->l:Z

    .line 96
    invoke-direct {p0, p1}, Lcom/mob/mcl/c/h;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 97
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 98
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    .line 99
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mob/mcl/c/h;->a:J

    .line 100
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    const-string v1, "tick"

    .line 101
    iget v2, p0, Lcom/mob/mcl/c/h;->e:I

    invoke-static {p1, v1, v2}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mob/mcl/c/h;->e:I

    const-string v1, "globalSwitch"

    .line 102
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->f:Z

    const-string v1, "connectSwitch"

    .line 103
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->g:Z

    const-string v1, "forwardSwitch"

    .line 104
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->h:Z

    const-string v1, "bindRequestSwitch"

    .line 105
    invoke-static {p1, v1, v4}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/mob/mcl/c/h;->i:Z

    .line 106
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 107
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 113
    :cond_5
    iget-object p1, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_6

    return v2

    :catchall_0
    move-exception p1

    .line 114
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_6
    return v4
.end method

.method private declared-synchronized a(ZLjava/lang/String;ILjava/lang/String;I)Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_3

    const/4 v1, 0x3

    if-ge p3, v1, :cond_3

    .line 119
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tp rg domain : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " count : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    .line 120
    :try_start_1
    invoke-virtual {p0, p2, p4, p5}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v3, "type"

    .line 121
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "type"

    .line 122
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    const-string v4, "token"

    .line 123
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    iget-object v1, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "token"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 125
    invoke-static {}, Lcom/mob/mcl/c/b;->a()Lcom/mob/mcl/c/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mob/mcl/c/b;->b()V

    .line 126
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    const-string v1, "tcp register success"

    invoke-virtual {p2, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    monitor-exit p0

    return v2

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    :try_start_2
    const-string v4, "domain"

    .line 129
    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "domain"

    .line 130
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    .line 131
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 v4, 0x1

    const/4 v6, 0x2

    move-object v3, p0

    move-object v7, p4

    move v8, p5

    .line 132
    invoke-direct/range {v3 .. v8}, Lcom/mob/mcl/c/h;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    if-ne v3, v1, :cond_2

    .line 133
    :try_start_3
    iput-boolean v2, p0, Lcom/mob/mcl/c/h;->v:Z

    .line 134
    iget-object p2, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {p2}, Lcom/mob/mcl/c/f;->a()V

    .line 135
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p2

    .line 137
    :try_start_4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tcp register exp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v6, p3, 0x1

    .line 138
    iget-object p2, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v6, p2, :cond_3

    if-nez p1, :cond_3

    const/4 v4, 0x0

    .line 139
    iget-object p1, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v3, p0

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/mob/mcl/c/h;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return p1

    :cond_3
    const/4 p1, 0x0

    .line 140
    :try_start_5
    invoke-static {p1}, Lcom/mob/mcl/d/d;->a(Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 142
    :try_start_6
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 143
    :goto_0
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->o()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 144
    monitor-exit p0

    return v0

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static b()Lcom/mob/mcl/c/h;
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/mcl/c/h;->m:Lcom/mob/mcl/c/h;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/mob/mcl/c/h;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/mob/mcl/c/h;->m:Lcom/mob/mcl/c/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/mob/mcl/c/h;

    invoke-direct {v1}, Lcom/mob/mcl/c/h;-><init>()V

    sput-object v1, Lcom/mob/mcl/c/h;->m:Lcom/mob/mcl/c/h;

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
    sget-object v0, Lcom/mob/mcl/c/h;->m:Lcom/mob/mcl/c/h;

    return-object v0
.end method

.method private b(J)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-array v0, v0, [J

    const/4 v2, 0x0

    aput-wide p1, v0, v2

    .line 18
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%16s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    const-string v0, "0"

    .line 19
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    .line 20
    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, p1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/mcl/c/h;->b(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 29
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method private b(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "code"

    const/4 v2, 0x0

    .line 22
    invoke-static {p1, v1, v2}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const-string v1, "data"

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    :cond_0
    return-object v0
.end method

.method private b(JZ)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "repeat"

    .line 10
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p3, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p3, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p3

    .line 12
    new-instance v1, Lcom/mob/mcl/c/e;

    const/16 v2, 0x3ef

    invoke-direct {p0, v0, p3}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    .line 13
    iput-wide p1, v1, Lcom/mob/mcl/c/e;->c:J

    .line 14
    iget-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {v0, v1}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    .line 15
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tp sd ty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , u = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bo : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x2

    .line 4
    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mob/mcl/c/h;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/mob/mcl/c/h;->q:Ljava/lang/String;

    const-string v2, "appkey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "apppkg"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "plat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pushId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    const-string v2, "guardId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/utils/DeviceHelper;->getPInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 8
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mob_id_ver"

    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "version"

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 12
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 13
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v0}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->n()V

    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    sget-object v0, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/mcl/c/h$6;

    invoke-direct {v1, p0}, Lcom/mob/mcl/c/h$6;-><init>(Lcom/mob/mcl/c/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/f;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/mgs/impl/f;->e()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)I
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/mob/mcl/c/h;->t:Lcom/mob/mcl/MobMCL$ELPMessageListener;

    if-eqz v0, :cond_1

    const-string v0, "expire"

    .line 199
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "workId"

    .line 200
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-direct {p0, v1, v0}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/mob/mcl/c/h;->t:Lcom/mob/mcl/MobMCL$ELPMessageListener;

    invoke-interface {v0, p1}, Lcom/mob/mcl/MobMCL$ELPMessageListener;->messageReceived(Landroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x2

    .line 233
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 234
    invoke-static {p1, p2}, Lcom/mob/tools/utils/Data;->AES128Decode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(IILjava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    if-eqz v0, :cond_2

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tp sd ty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , bo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , out = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 63
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance p3, Lcom/mob/mcl/c/e;

    invoke-direct {p3, p1}, Lcom/mob/mcl/c/e;-><init>(I)V

    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Lcom/mob/mcl/c/e;

    invoke-direct {p0, v0, p3}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p1, p3}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    move-object p3, v1

    .line 66
    :goto_0
    iget-object p1, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {p1, p3}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    move-result-object p1

    int-to-long p2, p2

    .line 67
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v1}, Lcom/mob/mcl/c/c;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mob/mcl/c/e;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    iget p2, p1, Lcom/mob/mcl/c/e;->b:I

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_1

    .line 69
    iget-object p2, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    .line 70
    invoke-direct {p0, p2}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 71
    :cond_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " tp rp : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 72
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x2710

    .line 59
    invoke-virtual {p0, p1, v0, p2}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tp rg main = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , bo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , out = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const-string v0, ":"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v1, v2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x1388

    invoke-virtual {v0, v1, v3, v3, p1}, Lcom/mob/mcl/c/f;->a(Ljava/net/SocketAddress;ZZI)V

    .line 50
    iget-object p1, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 51
    new-instance p1, Lcom/mob/mcl/c/e;

    const/16 v0, 0x3e9

    iget-object v1, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/mob/mcl/c/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/mob/mcl/c/e;-><init>(ILjava/lang/String;)V

    .line 52
    iget-wide v0, p0, Lcom/mob/mcl/c/h;->a:J

    iput-wide v0, p1, Lcom/mob/mcl/c/e;->c:J

    .line 53
    iget-object p2, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    invoke-virtual {p2, p1}, Lcom/mob/mcl/c/f;->a(Lcom/mob/mcl/c/e;)Lcom/mob/mcl/c/c;

    move-result-object p1

    int-to-long p2, p3

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Lcom/mob/mcl/c/c;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mob/mcl/c/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    iget p2, p1, Lcom/mob/mcl/c/e;->b:I

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_0

    .line 56
    iget-object p2, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    iget-object p3, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    .line 57
    invoke-direct {p0, p2}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tp rp : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILcom/mob/mcl/BusinessMessageListener;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    .line 6
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tpHelper addBMListener: bisType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", listener = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 7
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tpHelper addBMListener: remove key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 9
    iget-object v0, v7, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 10
    :cond_0
    iget-object v1, v7, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, v7, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    :goto_0
    move-object v9, v1

    goto :goto_1

    .line 12
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    iget-object v2, v7, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :goto_1
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/g;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "tpHelper addBMListener: has cached msg"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mcl/c/g;->c()Ljava/util/List;

    move-result-object v0

    .line 18
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/Map;

    const-string v1, "bisType"

    .line 20
    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 21
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v13, v1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    const-string v1, "workId"

    .line 22
    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    const-string v1, "json"

    .line 23
    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tpHelper addBMListener: cachedBisType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", target bisType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v13, v1, :cond_2

    .line 26
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 27
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/mob/mcl/BusinessMessageListener;

    .line 29
    new-instance v6, Lcom/mob/mcl/c/h$1;

    move-object v1, v6

    move-object/from16 v2, p0

    move v4, v13

    move-object v5, v14

    move-object v12, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/mob/mcl/c/h$1;-><init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessMessageListener;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, v12}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_4

    .line 30
    :cond_4
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tpHelper addBMListener: mark msg to rm. msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 31
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 32
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 33
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 34
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tpHelper addBMListener: rm msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mcl/c/g;->b(Ljava/util/Map;)V

    goto :goto_5

    .line 36
    :cond_6
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "tpHelper addBMListener: no cached msg"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 37
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    const-string v2, "tpHelper addBMListener: error"

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/mob/mcl/c/h;->q:Ljava/lang/String;

    .line 41
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 42
    iput-object p3, p0, Lcom/mob/mcl/c/h;->r:Ljava/lang/String;

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->h()V

    .line 44
    invoke-static {p1}, Lcom/mob/tools/utils/ActivityTracker;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/ActivityTracker;

    move-result-object p1

    new-instance p2, Lcom/mob/mcl/c/h$2;

    invoke-direct {p2, p0}, Lcom/mob/mcl/c/h$2;-><init>(Lcom/mob/mcl/c/h;)V

    invoke-static {p2}, Lcom/mob/mcl/a;->a(Lcom/mob/mcl/a$a;)Lcom/mob/tools/utils/ActivityTracker$Tracker;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/tools/utils/ActivityTracker;->addTracker(Lcom/mob/tools/utils/ActivityTracker$Tracker;)V

    .line 45
    iget-object p1, p0, Lcom/mob/mcl/c/h;->w:Lcom/mob/mcl/d/c;

    invoke-virtual {p1}, Lcom/mob/mcl/d/c;->a()V

    return-void
.end method

.method public a(Lcom/mob/mcl/BusinessCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->c()Z

    move-result v0

    if-eqz p1, :cond_0

    .line 93
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/mob/mcl/BusinessCallBack;->callback(Ljava/lang/Object;)V

    :cond_0
    if-nez v0, :cond_1

    .line 94
    sget-object p1, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/mob/mcl/c/h$3;

    invoke-direct {v0, p0}, Lcom/mob/mcl/c/h$3;-><init>(Lcom/mob/mcl/c/h;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/mob/mcl/MobMCL$ELPMessageListener;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/mob/mcl/c/h;->t:Lcom/mob/mcl/MobMCL$ELPMessageListener;

    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;)V
    .locals 1

    .line 230
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    const-string v0, "sessionOpened"

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;Lcom/mob/mcl/c/e;)V
    .locals 14

    move-object v8, p0

    move-object/from16 v0, p2

    const-string v1, "targetPackage"

    const-string v2, "workId"

    const-string v3, "expire"

    .line 152
    :try_start_0
    iget-object v4, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v4, v8, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v9, v4, v6

    if-nez v9, :cond_1

    .line 154
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "tcp received push msg, but send token is 0"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_1
    iget-object v4, v8, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/mob/mcl/c/h;->b(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    .line 156
    iget v5, v0, Lcom/mob/mcl/c/e;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x2329

    const-string v7, "uniqueId"

    const/4 v9, 0x0

    const-string v10, "data"

    const/4 v11, 0x1

    if-ne v5, v6, :cond_7

    .line 157
    :try_start_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " tcp msg push msgType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " body = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 158
    iget-wide v4, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v4, v5}, Lcom/mob/mcl/c/h;->a(J)V

    .line 159
    iget-object v1, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 160
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 161
    invoke-static {v1, v3, v9}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v5

    .line 162
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Ljava/lang/String;

    const-string v6, "needRepeat"

    .line 164
    invoke-static {v1, v6, v9}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_2
    const/4 v13, 0x0

    :goto_0
    const-string v6, "type"

    .line 165
    invoke-static {v1, v6, v9}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v11, :cond_4

    const/4 v1, 0x2

    if-ne v6, v1, :cond_3

    goto :goto_1

    .line 166
    :cond_3
    iget-wide v2, v0, Lcom/mob/mcl/c/e;->c:J

    move-object v1, p0

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Lcom/mob/mcl/c/h;->a(JLjava/lang/String;IILjava/lang/String;)Z

    move-result v1

    if-eqz v13, :cond_a

    .line 167
    iget-wide v2, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v2, v3, v1}, Lcom/mob/mcl/c/h;->b(JZ)V

    goto/16 :goto_2

    .line 168
    :cond_4
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 169
    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-wide v2, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "msgType"

    .line 173
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/mob/mcl/c/h;->a(Landroid/os/Bundle;)I

    move-result v1

    if-ne v1, v11, :cond_5

    const/4 v9, 0x1

    :cond_5
    if-eqz v13, :cond_6

    .line 175
    iget-wide v0, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v0, v1, v9}, Lcom/mob/mcl/c/h;->b(JZ)V

    :cond_6
    return-void

    :cond_7
    const/16 v2, 0x232a

    if-ne v5, v2, :cond_8

    .line 176
    invoke-direct {p0, v4}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "domain"

    .line 177
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 178
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 179
    iput-boolean v11, v8, Lcom/mob/mcl/c/h;->l:Z

    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 180
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->l()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1388

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mob/mcl/c/h;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    goto/16 :goto_2

    :cond_8
    const/16 v2, 0x232c

    if-ne v5, v2, :cond_a

    .line 181
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " tp mg ty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/mob/mcl/c/e;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 182
    iget-wide v3, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v3, v4}, Lcom/mob/mcl/c/h;->a(J)V

    .line 183
    iget-object v3, v0, Lcom/mob/mcl/c/e;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 184
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 185
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 186
    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "logicTimeout"

    const/16 v6, 0x3e8

    .line 187
    invoke-static {v3, v5, v6}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v3

    .line 188
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 189
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 190
    invoke-virtual {v5, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-wide v12, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-virtual {v5, v7, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 192
    invoke-static {}, Lcom/mob/mcl/a/a;->a()Lcom/mob/mcl/a/a;

    move-result-object v4

    invoke-virtual {v4, v2, v5, v1, v3}, Lcom/mob/mcl/a/a;->a(ILandroid/os/Bundle;Ljava/lang/String;I)Lcom/mob/apc/a;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 193
    iget-object v1, v1, Lcom/mob/apc/a;->e:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    .line 194
    iget-wide v0, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v0, v1, v11}, Lcom/mob/mcl/c/h;->a(JZ)V

    goto :goto_2

    .line 195
    :cond_9
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    const-string v2, "apc fw rp mg is null"

    invoke-virtual {v1, v2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 196
    iget-wide v0, v0, Lcom/mob/mcl/c/e;->c:J

    invoke-direct {p0, v0, v1, v9}, Lcom/mob/mcl/c/h;->a(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 197
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;Ljava/lang/Throwable;)V
    .locals 2

    .line 229
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exceptionCaught : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mob/mcl/c/a;Z)V
    .locals 2

    .line 231
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->n()V

    :cond_0
    return-void
.end method

.method public a(Lcom/mob/mgs/OnIdChangeListener;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mob/mcl/c/h;->x:Lcom/mob/mgs/OnIdChangeListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mob/mcl/c/h;->w:Lcom/mob/mcl/d/c;

    invoke-virtual {v0, p1}, Lcom/mob/mcl/d/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;J)V
    .locals 2

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/mob/mcl/c/h;->x:Lcom/mob/mgs/OnIdChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/mob/mcl/c/h;->x:Lcom/mob/mgs/OnIdChangeListener;

    iget-object v1, p0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/mob/mgs/OnIdChangeListener;->onChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    .line 148
    iput-wide p2, p0, Lcom/mob/mcl/c/h;->k:J

    .line 149
    invoke-static {p1}, Lcom/mob/mcl/d/d;->b(Ljava/lang/String;)V

    .line 150
    iget-wide p1, p0, Lcom/mob/mcl/c/h;->k:J

    invoke-static {p1, p2}, Lcom/mob/mcl/d/d;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public declared-synchronized a(I)Z
    .locals 8

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 116
    iget-boolean v3, p0, Lcom/mob/mcl/c/h;->l:Z

    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/mob/mcl/c/h;->l()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/mob/mcl/c/h;->a(ZLjava/lang/String;ILjava/lang/String;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 117
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(II)Z
    .locals 2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_3

    const/16 v0, 0x3ea

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, p1, v1}, Lcom/mob/mcl/c/h;->a(IILjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xbb8

    add-int/2addr p2, v0

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/mob/mcl/c/h;->a(II)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x3e8

    add-int/2addr p2, v0

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/mob/mcl/c/h;->a(II)Z

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(JLjava/lang/String;IILjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    .line 210
    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 211
    :cond_0
    iget-object p4, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p4, p6}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p4

    const-string p6, "uniqueId"

    .line 212
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object p1, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {p1, p4}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 215
    iget-object p4, p0, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 216
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "[dealBusinessMsg]Biz msg listener detected, callback directly. bisType: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 217
    iget-object p4, p0, Lcom/mob/mcl/c/h;->u:Ljava/util/HashMap;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/HashSet;

    .line 218
    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    .line 219
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 220
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object v3, p5

    check-cast v3, Lcom/mob/mcl/BusinessMessageListener;

    .line 221
    new-instance p5, Lcom/mob/mcl/c/h$5;

    move-object v1, p5

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/mob/mcl/c/h$5;-><init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessMessageListener;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p5}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 222
    :cond_1
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "[dealBusinessMsg]No biz msg listener detected, cache msg. bisType: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 223
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string p5, "bisType"

    .line 224
    invoke-interface {p4, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "workId"

    .line 225
    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "json"

    .line 226
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-static {}, Lcom/mob/mcl/c/g;->a()Lcom/mob/mcl/c/g;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/mob/mcl/c/g;->a(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 228
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return v0
.end method

.method public b(Lcom/mob/mcl/BusinessCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/mcl/BusinessCallBack<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/mob/mcl/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mob/mcl/c/h$4;

    invoke-direct {v1, p0, p1}, Lcom/mob/mcl/c/h$4;-><init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/BusinessCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    .line 30
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/mob/tools/network/NetworkHelper;

    invoke-direct {v2}, Lcom/mob/tools/network/NetworkHelper;-><init>()V

    .line 32
    new-instance v3, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v3}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v4, 0x7d0

    .line 33
    iput v4, v3, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    const/16 v4, 0x1388

    .line 34
    iput v4, v3, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    .line 35
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "appkey"

    .line 36
    invoke-static {}, Lcom/mob/MobSDK;->getAppkey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "pkg"

    .line 37
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "duidOld"

    .line 38
    invoke-virtual {v4, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "duidNew"

    .line 39
    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "appVer"

    .line 40
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "plat"

    .line 41
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getPlatformCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "m.mpl.dutils.com/tcp/push/pbsd"

    .line 42
    invoke-static {v1}, Lcom/mob/tools/network/NetCommunicator;->dynamicModifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Request] url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nheaders = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\nvalues = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v1, v4, v7, v3}, Lcom/mob/tools/network/NetworkHelper;->httpPostNew(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Response] url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nresp = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 46
    invoke-static {v2}, Lcom/mob/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "code"

    .line 48
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "200"

    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Req failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_1
    :goto_0
    iput v0, p0, Lcom/mob/mcl/c/h;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 52
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 53
    iget v2, p0, Lcom/mob/mcl/c/h;->y:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 54
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 55
    :catch_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    .line 56
    :goto_1
    iget v1, p0, Lcom/mob/mcl/c/h;->y:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mob/mcl/c/h;->y:I

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/mob/mcl/c/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :cond_2
    iput v0, p0, Lcom/mob/mcl/c/h;->y:I

    :goto_2
    return-void
.end method

.method public c()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/c/h;->p:Lcom/mob/mcl/c/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mob/mcl/c/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->v:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mob/mcl/c/h;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mob/mcl/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/mcl/c/h;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()V
    .locals 9

    const-string v0, "requestTimes"

    .line 1
    iget-object v1, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->isInMainProcess()Z

    move-result v1

    .line 2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tp cf, main p: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/mob/mcl/c/h;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/mob/mcl/c/h;->s:Landroid/content/Context;

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/d/d;->a()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    iget-object v2, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v2, v1}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-wide/16 v3, 0x0

    .line 8
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 9
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_2

    .line 10
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    .line 11
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 12
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    :cond_3
    :goto_0
    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    .line 14
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v3

    invoke-direct {v3, v2}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/mob/mcl/d/d;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cf cc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 16
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 17
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;

    invoke-direct {v8}, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;-><init>()V

    const/16 v1, 0x2710

    .line 19
    iput v1, v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->readTimout:I

    const/16 v1, 0x1388

    .line 20
    iput v1, v8, Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;->connectionTimeout:I

    .line 21
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "appkey"

    iget-object v3, p0, Lcom/mob/mcl/c/h;->q:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/mob/tools/network/KVPair;

    const-string v2, "pushId"

    invoke-direct {p0}, Lcom/mob/mcl/c/h;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/network/KVPair;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "m.mpl.dutils.com/tcp/config/init"

    .line 24
    invoke-static {v1}, Lcom/mob/tools/network/NetCommunicator;->dynamicModifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    iget-object v3, p0, Lcom/mob/mcl/c/h;->n:Lcom/mob/tools/network/NetworkHelper;

    const/4 v6, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/mob/tools/network/NetworkHelper;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/network/KVPair;Ljava/util/ArrayList;Lcom/mob/tools/network/NetworkHelper$NetworkTimeOut;)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tp cf url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> rp : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/Hashon;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Lcom/mob/mcl/c/h;->b()Lcom/mob/mcl/c/h;

    move-result-object v0

    invoke-direct {v0, v1}, Lcom/mob/mcl/c/h;->a(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 30
    invoke-static {v0}, Lcom/mob/mcl/d/d;->a(Z)V

    .line 31
    iget-object v0, p0, Lcom/mob/mcl/c/h;->o:Lcom/mob/tools/utils/Hashon;

    invoke-virtual {v0, v1}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/mcl/d/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 32
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    .line 33
    :cond_6
    :goto_2
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "mcl has not been initialized"

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g()Z
    .locals 1

    const/16 v0, 0x1388

    .line 1
    invoke-virtual {p0, v0}, Lcom/mob/mcl/c/h;->a(I)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mob/mcl/c/h;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/mob/mcl/c/h;->k:J

    cmp-long v0, v3, v1

    if-gtz v0, :cond_3

    .line 2
    :cond_0
    invoke-static {}, Lcom/mob/mcl/d/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/mob/mcl/d/d;->d()J

    move-result-wide v3

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 7
    :cond_2
    invoke-virtual {p0, v0, v3, v4}, Lcom/mob/mcl/c/h;->a(Ljava/lang/String;J)V

    :cond_3
    return-void
.end method

.method public i()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/mob/mcl/c/h;->l()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {p0, v1, v0}, Lcom/mob/mcl/c/h;->a(ILjava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1
    iget-object v3, p0, Lcom/mob/mcl/c/h;->q:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/mob/mcl/c/h;->k()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "%16s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "0"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    .line 3
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
