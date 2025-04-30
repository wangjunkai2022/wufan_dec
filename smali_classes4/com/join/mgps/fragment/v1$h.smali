.class Lcom/join/mgps/fragment/v1$h;
.super Ljava/lang/Object;
.source "FriendFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v1;->J0(Lcom/wufan/friend/chat/protocol/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/wufan/friend/chat/protocol/v;

.field final synthetic b:Lcom/join/mgps/fragment/v1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v1$h;->b:Lcom/join/mgps/fragment/v1;

    iput-object p2, p0, Lcom/join/mgps/fragment/v1$h;->a:Lcom/wufan/friend/chat/protocol/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v1$h;->b:Lcom/join/mgps/fragment/v1;

    iget-object v1, p0, Lcom/join/mgps/fragment/v1$h;->a:Lcom/wufan/friend/chat/protocol/v;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/v1;->w1(Lcom/join/mgps/fragment/v1;Lcom/wufan/friend/chat/protocol/v;)V

    return-void
.end method
