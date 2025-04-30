.class Lcom/join/mgps/activity/ForumActivity$h;
.super Ljava/lang/Object;
.source "ForumActivity.java"

# interfaces
.implements Lru/noties/scrollable/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumActivity;->T0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity$h;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public x(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumActivity$h;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ForumActivity;->O0()Lcom/join/mgps/fragment/u0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lru/noties/scrollable/j;->x(IJ)V

    :cond_0
    return-void
.end method
