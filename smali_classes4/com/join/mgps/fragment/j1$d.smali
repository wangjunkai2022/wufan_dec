.class Lcom/join/mgps/fragment/j1$d;
.super Ljava/lang/Object;
.source "FriendCardFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/j1;->u0(Lcom/join/mgps/dto/FriendCardBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/FriendCardBean;

.field final synthetic b:Lcom/join/mgps/fragment/j1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/j1;Lcom/join/mgps/dto/FriendCardBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/j1$d;->b:Lcom/join/mgps/fragment/j1;

    iput-object p2, p0, Lcom/join/mgps/fragment/j1$d;->a:Lcom/join/mgps/dto/FriendCardBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j1$d;->b:Lcom/join/mgps/fragment/j1;

    iget-object v1, p0, Lcom/join/mgps/fragment/j1$d;->a:Lcom/join/mgps/dto/FriendCardBean;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/j1;->v0(Lcom/join/mgps/fragment/j1;Lcom/join/mgps/dto/FriendCardBean;)V

    return-void
.end method
