.class final Lcom/mob/commons/a/l$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/l;->n()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZJ)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/mob/commons/a/o;->a()Lcom/mob/commons/a/o;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-class v3, Lcom/mob/commons/a/l;

    const/4 p1, 0x2

    new-array v4, p1, [Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, -0x1

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 v5, 0x0

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/mob/commons/a/o;->a(JLjava/lang/Class;[Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
