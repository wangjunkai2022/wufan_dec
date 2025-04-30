.class Lcom/join/mgps/fragment/w4$a;
.super Ljava/lang/Object;
.source "VoucherFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


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
    iput-object p1, p0, Lcom/join/mgps/fragment/w4$a;->a:Lcom/join/mgps/fragment/w4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w4$a;->a:Lcom/join/mgps/fragment/w4;

    invoke-static {v0}, Lcom/join/mgps/fragment/w4;->X(Lcom/join/mgps/fragment/w4;)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/w4$a;->a:Lcom/join/mgps/fragment/w4;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/w4;->loadData()V

    return-void
.end method
