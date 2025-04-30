.class Lcom/join/mgps/fragment/v1$e;
.super Ljava/lang/Object;
.source "FriendFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v1;->updateUi(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/fragment/v1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v1$e;->b:Lcom/join/mgps/fragment/v1;

    iput-object p2, p0, Lcom/join/mgps/fragment/v1$e;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v1$e;->b:Lcom/join/mgps/fragment/v1;

    iget-object v1, p0, Lcom/join/mgps/fragment/v1$e;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/v1;->t1(Lcom/join/mgps/fragment/v1;Ljava/util/List;)V

    return-void
.end method
