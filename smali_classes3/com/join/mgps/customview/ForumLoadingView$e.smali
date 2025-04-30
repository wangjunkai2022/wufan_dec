.class public abstract Lcom/join/mgps/customview/ForumLoadingView$e;
.super Ljava/lang/Object;
.source "ForumLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ForumLoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/ForumLoadingView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/ForumLoadingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$e;->a:Lcom/join/mgps/customview/ForumLoadingView;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$e;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goWirelessSettings(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$e;->a:Lcom/join/mgps/customview/ForumLoadingView;

    invoke-virtual {v0}, Lcom/join/mgps/customview/ForumLoadingView;->getLoadingState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->E0(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method
