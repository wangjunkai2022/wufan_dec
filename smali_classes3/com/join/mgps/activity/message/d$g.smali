.class Lcom/join/mgps/activity/message/d$g;
.super Ljava/lang/Object;
.source "MessagePriaceFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/d;->b0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

.field final synthetic b:Lcom/join/mgps/activity/message/d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/d$g;->b:Lcom/join/mgps/activity/message/d;

    iput-object p2, p0, Lcom/join/mgps/activity/message/d$g;->a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/d$g;->b:Lcom/join/mgps/activity/message/d;

    iget-object v1, p0, Lcom/join/mgps/activity/message/d$g;->a:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/message/d;->l0(Lcom/join/mgps/activity/message/d;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    return-void
.end method
