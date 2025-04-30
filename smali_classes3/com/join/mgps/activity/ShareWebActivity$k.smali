.class Lcom/join/mgps/activity/ShareWebActivity$k;
.super Landroid/os/Handler;
.source "ShareWebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ShareWebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ShareWebActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$k;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

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

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$k;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$k;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    const-string v0, "8000"

    .line 8
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$k;->a:Lcom/join/mgps/activity/ShareWebActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/ShareWebActivity;->D0(Lcom/join/mgps/activity/ShareWebActivity;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u652f\u4ed8\u7ed3\u679c\u786e\u8ba4\u4e2d"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method
