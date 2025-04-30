.class Lcom/join/mgps/fragment/q$a;
.super Ljava/lang/Object;
.source "CollectionModuleFourFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/q;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/q;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/q$a;->a:Lcom/join/mgps/fragment/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/q$a;->a:Lcom/join/mgps/fragment/q;

    invoke-static {v0}, Lcom/join/mgps/fragment/q;->M(Lcom/join/mgps/fragment/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/q$a;->a:Lcom/join/mgps/fragment/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/q;->N(Lcom/join/mgps/fragment/q;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/q$a;->a:Lcom/join/mgps/fragment/q;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/q;->R()V

    return-void
.end method
