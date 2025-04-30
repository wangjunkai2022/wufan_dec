.class Lcom/join/mgps/fragment/p0$h;
.super Ljava/lang/Object;
.source "ForumGroupPostsFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p0;->x0(Lcom/join/mgps/dto/DetailResultBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/DetailResultBean;

.field final synthetic b:Lcom/join/mgps/fragment/p0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p0;Lcom/join/mgps/dto/DetailResultBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p0$h;->b:Lcom/join/mgps/fragment/p0;

    iput-object p2, p0, Lcom/join/mgps/fragment/p0$h;->a:Lcom/join/mgps/dto/DetailResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/p0$h;->b:Lcom/join/mgps/fragment/p0;

    iget-object v1, p0, Lcom/join/mgps/fragment/p0$h;->a:Lcom/join/mgps/dto/DetailResultBean;

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/p0;->F0(Lcom/join/mgps/fragment/p0;Lcom/join/mgps/dto/DetailResultBean;)V

    return-void
.end method
