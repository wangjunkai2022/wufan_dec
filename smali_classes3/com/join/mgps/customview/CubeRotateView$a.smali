.class Lcom/join/mgps/customview/CubeRotateView$a;
.super Ljava/util/TimerTask;
.source "CubeRotateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CubeRotateView;->setTimeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/CubeRotateView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CubeRotateView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CubeRotateView$a;->a:Lcom/join/mgps/customview/CubeRotateView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/x0;->a()Lcom/join/mgps/Util/x0;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/CubeRotateView$a$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/CubeRotateView$a$a;-><init>(Lcom/join/mgps/customview/CubeRotateView$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
