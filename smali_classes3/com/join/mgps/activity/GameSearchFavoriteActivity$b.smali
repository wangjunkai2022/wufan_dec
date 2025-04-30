.class Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;
.super Ljava/lang/Object;
.source "GameSearchFavoriteActivity.java"

# interfaces
.implements Lcom/join/mgps/customview/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameSearchFavoriteActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->a(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    invoke-static {v0}, Lcom/join/android/app/common/utils/f;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->i:Lcom/join/mgps/customview/XListView2;

    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->t()V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5"

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->n(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$b;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->e()V

    :cond_1
    return-void
.end method
