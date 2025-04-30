.class Lcom/join/mgps/dialog/w1$a;
.super Landroid/os/CountDownTimer;
.source "SimulatorNotifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/w1;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/w1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/w1;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/w1$a;->a:Lcom/join/mgps/dialog/w1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/dialog/w1$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/join/mgps/dialog/w1$a;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/w1$a;->a:Lcom/join/mgps/dialog/w1;

    invoke-static {v0}, Lcom/join/mgps/dialog/w1;->n(Lcom/join/mgps/dialog/w1;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/w1$a;->a:Lcom/join/mgps/dialog/w1;

    invoke-static {v0}, Lcom/join/mgps/dialog/w1;->n(Lcom/join/mgps/dialog/w1;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u5f00\u59cb\u6311\u6218"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/w1$a;->a:Lcom/join/mgps/dialog/w1;

    invoke-static {v0}, Lcom/join/mgps/dialog/w1;->o(Lcom/join/mgps/dialog/w1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/w1$a;->a:Lcom/join/mgps/dialog/w1;

    invoke-static {v0}, Lcom/join/mgps/dialog/w1;->p(Lcom/join/mgps/dialog/w1;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/dialog/v1;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/v1;-><init>(Lcom/join/mgps/dialog/w1$a;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/w1$a;->a:Lcom/join/mgps/dialog/w1;

    invoke-static {v0}, Lcom/join/mgps/dialog/w1;->n(Lcom/join/mgps/dialog/w1;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u6311\u6218\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\uff09"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
