.class Lcom/join/mgps/activity/z$d;
.super Ljava/lang/Object;
.source "GameDetialModleFourActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/z$d;->a:Lcom/join/mgps/activity/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/z$d;->a:Lcom/join/mgps/activity/z;

    invoke-static {v0}, Lcom/join/mgps/activity/z;->S(Lcom/join/mgps/activity/z;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/z$d;->a:Lcom/join/mgps/activity/z;

    iget-object v1, v0, Lcom/join/mgps/activity/z;->x0:Lcom/join/android/app/component/video/c;

    iget-object v0, v0, Lcom/join/mgps/activity/z;->l:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/join/android/app/component/video/c;->p(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method
