.class Lcom/join/mgps/activity/ForumActivity$i;
.super Ljava/lang/Object;
.source "ForumActivity.java"

# interfaces
.implements Lru/noties/scrollable/k;


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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity$i;->a:Lcom/join/mgps/activity/ForumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$i;->a:Lcom/join/mgps/activity/ForumActivity;

    iget-object p2, p1, Lcom/join/mgps/activity/ForumActivity;->t:Lcom/join/mgps/adapter/x;

    invoke-static {p1}, Lcom/join/mgps/activity/ForumActivity;->E0(Lcom/join/mgps/activity/ForumActivity;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/x;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/fragment/o0;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/fragment/o0;->Q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
