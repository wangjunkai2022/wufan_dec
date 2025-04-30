.class Lcom/join/mgps/fragment/w4$b;
.super Ljava/lang/Object;
.source "VoucherFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/w4;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/w4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/w4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/w4$b;->a:Lcom/join/mgps/fragment/w4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w4$b;->a:Lcom/join/mgps/fragment/w4;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/mgps/fragment/w4;->W(Lcom/join/mgps/fragment/w4;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/w4$b;->a:Lcom/join/mgps/fragment/w4;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/w4;->loadData()V

    return-void
.end method
