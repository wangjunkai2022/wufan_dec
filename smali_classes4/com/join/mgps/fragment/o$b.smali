.class Lcom/join/mgps/fragment/o$b;
.super Ljava/lang/Object;
.source "CodesBoxFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o$b;->a:Lcom/join/mgps/fragment/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o$b;->a:Lcom/join/mgps/fragment/o;

    invoke-static {v0}, Lcom/join/mgps/fragment/o;->N(Lcom/join/mgps/fragment/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/o$b;->a:Lcom/join/mgps/fragment/o;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/o;->S()V

    return-void
.end method
