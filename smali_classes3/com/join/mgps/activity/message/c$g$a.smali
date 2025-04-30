.class Lcom/join/mgps/activity/message/c$g$a;
.super Ljava/lang/Object;
.source "MessagePriaceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/c$g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

.field final synthetic b:Lcom/join/mgps/activity/message/c$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/c$g;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/c$g$a;->b:Lcom/join/mgps/activity/message/c$g;

    iput-object p2, p0, Lcom/join/mgps/activity/message/c$g$a;->a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/message/c$g$a;->b:Lcom/join/mgps/activity/message/c$g;

    iget-object p1, p1, Lcom/join/mgps/activity/message/c$g;->b:Lcom/join/mgps/activity/message/c;

    iget-object v0, p0, Lcom/join/mgps/activity/message/c$g$a;->a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/message/c;->b0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    return-void
.end method
