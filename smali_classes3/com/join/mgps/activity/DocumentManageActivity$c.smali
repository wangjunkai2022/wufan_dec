.class Lcom/join/mgps/activity/DocumentManageActivity$c;
.super Landroid/os/Handler;
.source "DocumentManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/DocumentManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/DocumentManageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DocumentManageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/DocumentManageActivity;->x0:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/DocumentManageActivity;->E0(Lcom/join/mgps/activity/DocumentManageActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    iget v2, v2, Lcom/join/mgps/activity/DocumentManageActivity;->w0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    iget v1, p1, Lcom/join/mgps/activity/DocumentManageActivity;->w0:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/join/mgps/activity/DocumentManageActivity;->w0:I

    if-gez v1, :cond_2

    .line 6
    iget-object p1, p1, Lcom/join/mgps/activity/DocumentManageActivity;->y0:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 8
    iput v0, p1, Landroid/os/Message;->what:I

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity$c;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/DocumentManageActivity;->x0:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method
