.class Lcom/join/mgps/fragment/v2$b;
.super Ljava/lang/Object;
.source "GameSingleCompanyFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v2;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/v2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v2$b;->a:Lcom/join/mgps/fragment/v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2$b;->a:Lcom/join/mgps/fragment/v2;

    invoke-static {v0}, Lcom/join/mgps/fragment/v2;->M(Lcom/join/mgps/fragment/v2;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2$b;->a:Lcom/join/mgps/fragment/v2;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/v2;->P()V

    return-void
.end method
