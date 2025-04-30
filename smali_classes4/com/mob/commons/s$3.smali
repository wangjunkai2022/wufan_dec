.class final Lcom/mob/commons/s$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/s;->j()V
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
    .locals 0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "fg."

    invoke-virtual {p1, p3, p2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Lcom/mob/commons/s;->c(Z)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array p3, p2, [Ljava/lang/Object;

    const-string p4, "bg."

    invoke-virtual {p1, p4, p3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 4
    invoke-static {p2}, Lcom/mob/commons/s;->c(Z)Z

    :goto_0
    return-void
.end method
