.class Lcom/join/mgps/fragment/g$f;
.super Lcom/join/mgps/customview/ForumLoadingView$e;
.source "ChoiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/g;->P(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/g;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/g;Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/g$f;->b:Lcom/join/mgps/fragment/g;

    invoke-direct {p0, p2}, Lcom/join/mgps/customview/ForumLoadingView$e;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/ForumLoadingView$e;->b()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/g$f;->b:Lcom/join/mgps/fragment/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/join/mgps/fragment/g;->P(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/g$f;->b:Lcom/join/mgps/fragment/g;

    invoke-static {v0}, Lcom/join/mgps/fragment/g;->M(Lcom/join/mgps/fragment/g;)V

    return-void
.end method
