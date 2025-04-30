.class Lcom/join/mgps/customview/CubeRotateView$a$a;
.super Ljava/lang/Object;
.source "CubeRotateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/CubeRotateView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/CubeRotateView$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/CubeRotateView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CubeRotateView$a$a;->a:Lcom/join/mgps/customview/CubeRotateView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CubeRotateView$a$a;->a:Lcom/join/mgps/customview/CubeRotateView$a;

    iget-object v0, v0, Lcom/join/mgps/customview/CubeRotateView$a;->a:Lcom/join/mgps/customview/CubeRotateView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/CubeRotateView;->g()V

    return-void
.end method
