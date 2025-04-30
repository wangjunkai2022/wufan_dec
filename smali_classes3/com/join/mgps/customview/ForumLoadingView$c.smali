.class Lcom/join/mgps/customview/ForumLoadingView$c;
.super Ljava/lang/Object;
.source "ForumLoadingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ForumLoadingView;->k(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ForumLoadingView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$c;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$c;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-static {v0}, Lcom/join/mgps/customview/ForumLoadingView;->a(Lcom/join/mgps/customview/ForumLoadingView;)Lcom/join/mgps/customview/ForumLoadingView$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$c;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-static {v0}, Lcom/join/mgps/customview/ForumLoadingView;->a(Lcom/join/mgps/customview/ForumLoadingView;)Lcom/join/mgps/customview/ForumLoadingView$e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView$e;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
