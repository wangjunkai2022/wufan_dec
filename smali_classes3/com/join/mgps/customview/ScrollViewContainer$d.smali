.class Lcom/join/mgps/customview/ScrollViewContainer$d;
.super Ljava/lang/Object;
.source "ScrollViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScrollViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ScrollViewContainer$d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/util/Timer;

.field private c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

.field final synthetic d:Lcom/join/mgps/customview/ScrollViewContainer;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/ScrollViewContainer;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->d:Lcom/join/mgps/customview/ScrollViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->a:Landroid/os/Handler;

    .line 3
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->b:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    :cond_0
    return-void
.end method

.method public b(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    .line 4
    :cond_0
    new-instance v2, Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->a:Landroid/os/Handler;

    invoke-direct {v2, p0, v0}, Lcom/join/mgps/customview/ScrollViewContainer$d$a;-><init>(Lcom/join/mgps/customview/ScrollViewContainer$d;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->c:Lcom/join/mgps/customview/ScrollViewContainer$d$a;

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/ScrollViewContainer$d;->b:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
