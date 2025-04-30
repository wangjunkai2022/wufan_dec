.class Lcom/join/mgps/activity/ClassifyGameActivity$a;
.super Ljava/lang/Object;
.source "ClassifyGameActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/swiperefresh/SwipeRefresh$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ClassifyGameActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ClassifyGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$a;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$a;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ClassifyGameActivity;->C:Lcom/join/mgps/activity/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/activity/f;->h0()V

    :cond_0
    return-void
.end method
