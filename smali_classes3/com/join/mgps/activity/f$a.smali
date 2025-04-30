.class Lcom/join/mgps/activity/f$a;
.super Ljava/lang/Object;
.source "ClassifyListGameFragment.java"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/f;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/f$a;->a:Lcom/join/mgps/activity/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/f$a;->a:Lcom/join/mgps/activity/f;

    invoke-static {v0}, Lcom/join/mgps/activity/f;->N(Lcom/join/mgps/activity/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/f$a;->a:Lcom/join/mgps/activity/f;

    invoke-static {v0}, Lcom/join/mgps/activity/f;->O(Lcom/join/mgps/activity/f;)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/f$a;->a:Lcom/join/mgps/activity/f;

    invoke-static {v0}, Lcom/join/mgps/activity/f;->P(Lcom/join/mgps/activity/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/f$a;->a:Lcom/join/mgps/activity/f;

    invoke-static {v2}, Lcom/join/mgps/activity/f;->Q(Lcom/join/mgps/activity/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/f;->S(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
