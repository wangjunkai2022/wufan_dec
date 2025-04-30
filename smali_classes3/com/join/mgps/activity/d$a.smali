.class Lcom/join/mgps/activity/d$a;
.super Ljava/lang/Object;
.source "ClassifyListFragment.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/d;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/d$a;->a:Lcom/join/mgps/activity/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/d$a;->a:Lcom/join/mgps/activity/d;

    invoke-static {v0}, Lcom/join/mgps/activity/d;->N(Lcom/join/mgps/activity/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/d$a;->a:Lcom/join/mgps/activity/d;

    invoke-static {v0}, Lcom/join/mgps/activity/d;->P(Lcom/join/mgps/activity/d;)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/d$a;->a:Lcom/join/mgps/activity/d;

    invoke-static {v0}, Lcom/join/mgps/activity/d;->Q(Lcom/join/mgps/activity/d;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/activity/d$a;->a:Lcom/join/mgps/activity/d;

    invoke-static {v2}, Lcom/join/mgps/activity/d;->R(Lcom/join/mgps/activity/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/activity/d;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
