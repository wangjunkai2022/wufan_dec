.class Lcom/join/mgps/activity/message/c$c;
.super Ljava/lang/Object;
.source "MessagePriaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/c;->b0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/message/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/c$c;->a:Lcom/join/mgps/activity/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/message/c$c;->a:Lcom/join/mgps/activity/message/c;

    iget-object p1, p1, Lcom/join/mgps/activity/message/c;->t:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/message/c$c;->a:Lcom/join/mgps/activity/message/c;

    iget-object p1, p1, Lcom/join/mgps/activity/message/c;->t:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/message/c$c;->a:Lcom/join/mgps/activity/message/c;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/join/mgps/activity/message/c;->o:Z

    :cond_0
    return-void
.end method
