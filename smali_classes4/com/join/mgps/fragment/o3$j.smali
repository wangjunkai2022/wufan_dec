.class Lcom/join/mgps/fragment/o3$j;
.super Ljava/lang/Object;
.source "NewArenaMainFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/input/InputNumView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o3;->H0(Lcom/papa91/battle/protocol/GameRoom;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/a;

.field final synthetic b:Lcom/papa91/battle/protocol/GameRoom;

.field final synthetic c:Lcom/join/mgps/fragment/o3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o3;Lcom/join/mgps/customview/input/a;Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o3$j;->c:Lcom/join/mgps/fragment/o3;

    iput-object p2, p0, Lcom/join/mgps/fragment/o3$j;->a:Lcom/join/mgps/customview/input/a;

    iput-object p3, p0, Lcom/join/mgps/fragment/o3$j;->b:Lcom/papa91/battle/protocol/GameRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$j;->a:Lcom/join/mgps/customview/input/a;

    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$j;->a:Lcom/join/mgps/customview/input/a;

    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$j;->c:Lcom/join/mgps/fragment/o3;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u623f\u95f4..."

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/o3;->V(Lcom/join/mgps/fragment/o3;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/o3$j;->c:Lcom/join/mgps/fragment/o3;

    iget-object v1, p0, Lcom/join/mgps/fragment/o3$j;->b:Lcom/papa91/battle/protocol/GameRoom;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/fragment/o3;->i0(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    return-void
.end method
