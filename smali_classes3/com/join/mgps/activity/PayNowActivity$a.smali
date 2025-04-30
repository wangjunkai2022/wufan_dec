.class Lcom/join/mgps/activity/PayNowActivity$a;
.super Landroid/os/Handler;
.source "PayNowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/PayNowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/PayNowActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayNowActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PayNowActivity$a;->a:Lcom/join/mgps/activity/PayNowActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/dto/PayResult;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/join/mgps/dto/PayResult;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayResult;->getResult()Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/join/mgps/dto/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "9000"

    .line 5
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "alipaymobilesign"

    if-eqz v0, :cond_1

    .line 6
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 7
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 8
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    const-string v0, ""

    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$a;->a:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_0

    :cond_1
    const-string v0, "8000"

    .line 11
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    const/4 v0, 0x4

    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 14
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    const-string v0, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$a;->a:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_0

    .line 17
    :cond_2
    new-instance p1, Lcom/join/mgps/dto/PapayResult;

    invoke-direct {p1}, Lcom/join/mgps/dto/PapayResult;-><init>()V

    .line 18
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/PapayResult;->setStatus(I)V

    .line 19
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/PapayResult;->setPayType(Ljava/lang/String;)V

    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/PapayResult;->setMessage(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$a;->a:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->F0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PapayResult;)V

    goto :goto_0

    .line 22
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/PaymentInfo;

    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/PayNowActivity$a;->a:Lcom/join/mgps/activity/PayNowActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/PayNowActivity;->E0(Lcom/join/mgps/activity/PayNowActivity;Lcom/join/mgps/dto/PaymentInfo;)V

    :goto_0
    return-void
.end method
