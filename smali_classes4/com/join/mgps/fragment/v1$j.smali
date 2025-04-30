.class Lcom/join/mgps/fragment/v1$j;
.super Ljava/lang/Object;
.source "FriendFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v1;->L0(Lcom/wufan/friend/chat/protocol/l1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wufan/friend/chat/protocol/l1;

.field final synthetic b:Lcom/join/mgps/fragment/v1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v1$j;->b:Lcom/join/mgps/fragment/v1;

    iput-object p2, p0, Lcom/join/mgps/fragment/v1$j;->a:Lcom/wufan/friend/chat/protocol/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v1$j;->b:Lcom/join/mgps/fragment/v1;

    iget-object v1, p0, Lcom/join/mgps/fragment/v1$j;->a:Lcom/wufan/friend/chat/protocol/l1;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/v1;->y1(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/l1;)V

    return-void
.end method
