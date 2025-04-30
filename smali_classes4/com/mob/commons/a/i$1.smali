.class final Lcom/mob/commons/a/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/i;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private volatile a:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/mob/commons/a/i$1;->a:J

    return-void
.end method


# virtual methods
.method public a(ZZJ)V
    .locals 16

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    const/4 v4, -0x1

    .line 1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/mob/commons/a/i$1;->a:J

    .line 3
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v10

    const-wide/16 v11, 0x0

    const-class v13, Lcom/mob/commons/a/i;

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v4, v14, v6

    new-array v8, v3, [Ljava/lang/Long;

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v6

    iget-wide v1, v0, Lcom/mob/commons/a/i$1;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v7

    aput-object v8, v14, v5

    const/4 v15, 0x1

    .line 5
    invoke-virtual/range {v10 .. v15}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mob/commons/a/i$1;->a:J

    .line 7
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-class v11, Lcom/mob/commons/a/i;

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v4, v12, v6

    new-array v1, v3, [Ljava/lang/Long;

    const-wide/16 v2, 0x1

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-wide v2, v0, Lcom/mob/commons/a/i$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v1, v12, v5

    const/4 v13, 0x0

    .line 9
    invoke-virtual/range {v8 .. v13}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v8, p3, v1

    if-lez v8, :cond_2

    .line 10
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v9

    const-wide/16 v10, 0x0

    const-class v12, Lcom/mob/commons/a/i;

    new-array v13, v7, [Ljava/lang/Object;

    aput-object v4, v13, v6

    new-array v1, v3, [Ljava/lang/Long;

    const-wide/16 v2, 0x2

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-wide v2, v0, Lcom/mob/commons/a/i$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v1, v13, v5

    const/4 v14, 0x1

    .line 12
    invoke-virtual/range {v9 .. v14}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V

    :cond_2
    :goto_0
    return-void
.end method
