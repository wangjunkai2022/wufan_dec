.class Lcom/join/mgps/fragment/q0$j;
.super Lcom/join/mgps/customview/ForumLoadingView$e;
.source "ForumIndexFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/q0;->V(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/q0;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/q0;Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/q0$j;->b:Lcom/join/mgps/fragment/q0;

    invoke-direct {p0, p2}, Lcom/join/mgps/customview/ForumLoadingView$e;-><init>(Lcom/join/mgps/customview/ForumLoadingView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/customview/ForumLoadingView$e;->b()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/q0$j;->b:Lcom/join/mgps/fragment/q0;

    invoke-virtual {v0}, Lcom/join/mgps/fragment/q0;->J()V

    return-void
.end method
