.class Lcom/join/mgps/fragment/c0$d;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/c0;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/c0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/c0$d;->a:Lcom/join/mgps/fragment/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$d;->a:Lcom/join/mgps/fragment/c0;

    invoke-static {v0}, Lcom/join/mgps/fragment/c0;->O(Lcom/join/mgps/fragment/c0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c0$d;->a:Lcom/join/mgps/fragment/c0;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/c0;->X()V

    return-void
.end method
