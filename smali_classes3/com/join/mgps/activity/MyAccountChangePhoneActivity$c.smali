.class Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;
.super Landroid/os/CountDownTimer;
.source "MyAccountChangePhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/MyAccountChangePhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyAccountChangePhoneActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/MyAccountChangePhoneActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;->a:Lcom/join/mgps/activity/MyAccountChangePhoneActivity;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;->a:Lcom/join/mgps/activity/MyAccountChangePhoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->h:Landroid/widget/TextView;

    const-string v1, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;->a:Lcom/join/mgps/activity/MyAccountChangePhoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->h:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;->a:Lcom/join/mgps/activity/MyAccountChangePhoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity$c;->a:Lcom/join/mgps/activity/MyAccountChangePhoneActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/MyAccountChangePhoneActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u65b0\u83b7\u53d6("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
