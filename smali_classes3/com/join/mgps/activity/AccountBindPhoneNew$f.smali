.class Lcom/join/mgps/activity/AccountBindPhoneNew$f;
.super Landroid/os/Handler;
.source "AccountBindPhoneNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/AccountBindPhoneNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/AccountBindPhoneNew;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AccountBindPhoneNew;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget v0, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->A:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->A:I

    .line 2
    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->e:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget v2, v2, Lcom/join/mgps/activity/AccountBindPhoneNew;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "S"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget v0, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->A:I

    if-gtz v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->e:Landroid/widget/TextView;

    const-string v0, "\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/activity/AccountBindPhoneNew;->H0(Lcom/join/mgps/activity/AccountBindPhoneNew;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/AccountBindPhoneNew$f;->a:Lcom/join/mgps/activity/AccountBindPhoneNew;

    iget-object p1, p1, Lcom/join/mgps/activity/AccountBindPhoneNew;->e:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method
