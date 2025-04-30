.class Lcom/join/mgps/customview/ScrollViewContainer$d$a;
.super Ljava/util/TimerTask;
.source "ScrollViewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScrollViewContainer$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field final synthetic b:Lcom/join/mgps/customview/ScrollViewContainer$d;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/ScrollViewContainer$d;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$d$a;->b:Lcom/join/mgps/customview/ScrollViewContainer$d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/customview/ScrollViewContainer$d$a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$d$a;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
