.class Lcom/join/mgps/fragment/v1$l;
.super Ljava/lang/Object;
.source "FriendFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v1;->I0(Lcom/wufan/friend/chat/protocol/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wufan/friend/chat/protocol/g;

.field final synthetic b:Lcom/join/mgps/fragment/v1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v1$l;->b:Lcom/join/mgps/fragment/v1;

    iput-object p2, p0, Lcom/join/mgps/fragment/v1$l;->a:Lcom/wufan/friend/chat/protocol/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v1$l;->b:Lcom/join/mgps/fragment/v1;

    iget-object v1, p0, Lcom/join/mgps/fragment/v1$l;->a:Lcom/wufan/friend/chat/protocol/g;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/v1;->e1(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/g;)V

    return-void
.end method
