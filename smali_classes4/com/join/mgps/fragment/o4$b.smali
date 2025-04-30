.class Lcom/join/mgps/fragment/o4$b;
.super Ljava/lang/Object;
.source "RecommedFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/o4;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/o4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/o4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/o4$b;->a:Lcom/join/mgps/fragment/o4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4$b;->a:Lcom/join/mgps/fragment/o4;

    iget v1, v0, Lcom/join/mgps/fragment/o4;->q:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/o4;->c0(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/o4$b;->a:Lcom/join/mgps/fragment/o4;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/o4;->N()V

    return-void
.end method
