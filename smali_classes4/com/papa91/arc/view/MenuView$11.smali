.class Lcom/papa91/arc/view/MenuView$11;
.super Landroid/os/CountDownTimer;
.source "MenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/view/MenuView;->startTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/view/MenuView;


# direct methods
.method constructor <init>(Lcom/papa91/arc/view/MenuView;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    .line 2
    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->alertRing()V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->hideTimer()V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    iget-object v0, v0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/papa91/arc/view/MenuViewListener;->showTimeLimitedDialog2()V

    :cond_0
    const-string v0, "PSPLimitPopup"

    .line 5
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->sendLimitStat(Ljava/lang/String;)V

    return-void
.end method

.method public onTick(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    iput-wide p1, v0, Lcom/papa91/arc/view/MenuView;->millisUntilFinish:J

    .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "\u8fdb\u5165\u5e7f\u544a"

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#9C7140"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7
    iget-object v1, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    iget-object v1, v1, Lcom/papa91/arc/view/MenuView;->timer:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    invoke-virtual {v0}, Lcom/papa91/arc/view/MenuView;->alertRing()V

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/view/MenuView$11;->this$0:Lcom/papa91/arc/view/MenuView;

    iget-object v0, v0, Lcom/papa91/arc/view/MenuView;->menuViewListener:Lcom/papa91/arc/view/MenuViewListener;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0, p1, p2}, Lcom/papa91/arc/view/MenuViewListener;->onTimerTick(J)V

    :cond_0
    return-void
.end method
