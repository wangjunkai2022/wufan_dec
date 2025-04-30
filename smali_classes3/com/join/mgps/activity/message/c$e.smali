.class Lcom/join/mgps/activity/message/c$e;
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
.field final synthetic a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

.field final synthetic b:Lcom/join/mgps/activity/message/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/c;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/c$e;->b:Lcom/join/mgps/activity/message/c;

    iput-object p2, p0, Lcom/join/mgps/activity/message/c$e;->a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/message/c$e;->b:Lcom/join/mgps/activity/message/c;

    iget-object p1, p1, Lcom/join/mgps/activity/message/c;->t:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/message/c$e;->b:Lcom/join/mgps/activity/message/c;

    iget-object v0, p1, Lcom/join/mgps/activity/message/c;->y:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/message/c$e;->a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/message/c;->X(Ljava/lang/String;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    return-void
.end method
