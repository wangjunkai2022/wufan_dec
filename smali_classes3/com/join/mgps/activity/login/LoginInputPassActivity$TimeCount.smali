.class Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;
.super Landroid/os/CountDownTimer;
.source "LoginInputPassActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/login/LoginInputPassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeCount"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/login/LoginInputPassActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    const-string v1, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    const-string v1, "#408DFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    const-string v1, "#494949"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginInputPassActivity$TimeCount;->this$0:Lcom/join/mgps/activity/login/LoginInputPassActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/login/LoginInputPassActivity;->getCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "S\u540e\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
