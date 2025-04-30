.class Lcom/join/mgps/customview/j0$a$f;
.super Ljava/util/TimerTask;
.source "RewardToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/j0$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/j0$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/j0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/j0$a$f;->a:Lcom/join/mgps/customview/j0$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/j0$a$f;->a:Lcom/join/mgps/customview/j0$a;

    iget-object v0, v0, Lcom/join/mgps/customview/j0$a;->a:Lcom/join/mgps/customview/j0;

    iget-object v0, v0, Lcom/join/mgps/customview/j0;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
