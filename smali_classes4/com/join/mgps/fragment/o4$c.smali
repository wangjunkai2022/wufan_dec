.class Lcom/join/mgps/fragment/o4$c;
.super Ljava/lang/Object;
.source "RecommedFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


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
    iput-object p1, p0, Lcom/join/mgps/fragment/o4$c;->a:Lcom/join/mgps/fragment/o4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/o4$c;->a:Lcom/join/mgps/fragment/o4;

    const/4 v1, 0x1

    iput v1, v0, Lcom/join/mgps/fragment/o4;->q:I

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/fragment/o4;->N()V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/o4$c;->a:Lcom/join/mgps/fragment/o4;

    iget v1, v0, Lcom/join/mgps/fragment/o4;->q:I

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/o4;->c0(I)V

    return-void
.end method
