.class Lcom/join/mgps/activity/MustPlayActivity$b;
.super Ljava/lang/Object;
.source "MustPlayActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MustPlayActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MustPlayActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MustPlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MustPlayActivity$b;->a:Lcom/join/mgps/activity/MustPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity$b;->a:Lcom/join/mgps/activity/MustPlayActivity;

    iget-boolean v1, v0, Lcom/join/mgps/activity/MustPlayActivity;->y:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/join/mgps/activity/MustPlayActivity;->F0(Lcom/join/mgps/activity/MustPlayActivity;I)I

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/MustPlayActivity$b;->a:Lcom/join/mgps/activity/MustPlayActivity;

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MustPlayActivity;->loadData(I)V

    :cond_0
    return-void
.end method
