.class Lcom/join/mgps/adapter/h4$f1;
.super Landroid/os/CountDownTimer;
.source "PapaMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h4;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$f1;->a:Lcom/join/mgps/adapter/h4;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/h4;->A()Lcom/join/mgps/adapter/h4$u2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/join/mgps/adapter/h4;->A()Lcom/join/mgps/adapter/h4$u2;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/adapter/h4$u2;->l(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {}, Lcom/join/mgps/adapter/h4;->A()Lcom/join/mgps/adapter/h4$u2;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/adapter/h4$u2;->g(Lcom/join/mgps/adapter/h4$u2;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/join/mgps/adapter/h4$f1$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/h4$f1$a;-><init>(Lcom/join/mgps/adapter/h4$f1;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
