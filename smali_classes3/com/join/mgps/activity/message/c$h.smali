.class Lcom/join/mgps/activity/message/c$h;
.super Ljava/lang/Object;
.source "MessagePriaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/message/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field c:Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

.field final synthetic d:Lcom/join/mgps/activity/message/c;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/message/c;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/c$h;->d:Lcom/join/mgps/activity/message/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/activity/message/c$h;->a:Ljava/lang/Object;

    .line 3
    iput p3, p0, Lcom/join/mgps/activity/message/c$h;->b:I

    return-void
.end method
