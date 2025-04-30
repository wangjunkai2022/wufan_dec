.class Lcom/join/mgps/fragment/x0$d;
.super Ljava/lang/Object;
.source "FriendAddFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/x0;->updateUi(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/fragment/x0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/x0;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/x0$d;->b:Lcom/join/mgps/fragment/x0;

    iput-object p2, p0, Lcom/join/mgps/fragment/x0$d;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x0$d;->b:Lcom/join/mgps/fragment/x0;

    iget-object v1, p0, Lcom/join/mgps/fragment/x0$d;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/x0;->a0(Lcom/join/mgps/fragment/x0;Ljava/util/List;)V

    return-void
.end method
