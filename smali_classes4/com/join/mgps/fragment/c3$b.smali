.class Lcom/join/mgps/fragment/c3$b;
.super Ljava/lang/Object;
.source "LabelFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/c3;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/c3;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/c3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/c3$b;->a:Lcom/join/mgps/fragment/c3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/c3$b;->a:Lcom/join/mgps/fragment/c3;

    iget-object v0, v0, Lcom/join/mgps/fragment/c3;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/c3$b;->a:Lcom/join/mgps/fragment/c3;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/c3;->w0()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/c3$b;->a:Lcom/join/mgps/fragment/c3;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/c3;->u0()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/c3$b;->a:Lcom/join/mgps/fragment/c3;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/c3;->S()V

    return-void
.end method
