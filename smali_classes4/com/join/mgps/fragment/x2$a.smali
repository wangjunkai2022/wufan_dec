.class Lcom/join/mgps/fragment/x2$a;
.super Ljava/lang/Object;
.source "GameSubscribeFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/x2;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/x2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/x2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/x2$a;->a:Lcom/join/mgps/fragment/x2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/x2$a;->a:Lcom/join/mgps/fragment/x2;

    const/4 v1, 0x1

    iput v1, v0, Lcom/join/mgps/fragment/x2;->j:I

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/fragment/x2;->O()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/x2$a;->a:Lcom/join/mgps/fragment/x2;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/x2;->R()V

    return-void
.end method
