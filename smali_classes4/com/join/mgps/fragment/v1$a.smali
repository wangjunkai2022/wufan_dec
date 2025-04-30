.class Lcom/join/mgps/fragment/v1$a;
.super Ljava/lang/Object;
.source "FriendFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v1;->a1(Lcom/join/mgps/dto/FriendAccountInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/FriendAccountInfo;

.field final synthetic b:Lcom/join/mgps/fragment/v1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v1;Lcom/join/mgps/dto/FriendAccountInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v1$a;->b:Lcom/join/mgps/fragment/v1;

    iput-object p2, p0, Lcom/join/mgps/fragment/v1$a;->a:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v1$a;->b:Lcom/join/mgps/fragment/v1;

    iget-object v1, p0, Lcom/join/mgps/fragment/v1$a;->a:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/v1;->d1(Lcom/join/mgps/fragment/v1;Lcom/join/mgps/dto/FriendAccountInfo;)V

    return-void
.end method
