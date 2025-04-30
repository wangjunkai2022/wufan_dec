.class Lcom/join/mgps/fragment/v1$r;
.super Ljava/lang/Object;
.source "FriendFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v1;->a0(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lcom/join/mgps/fragment/v1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v1;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v1$r;->b:Lcom/join/mgps/fragment/v1;

    iput-object p2, p0, Lcom/join/mgps/fragment/v1$r;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v1$r;->b:Lcom/join/mgps/fragment/v1;

    iget-object v1, p0, Lcom/join/mgps/fragment/v1$r;->a:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/v1;->l1(Lcom/join/mgps/fragment/v1;Ljava/lang/Boolean;)V

    return-void
.end method
