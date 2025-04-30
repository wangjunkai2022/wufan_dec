.class public final Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$2;
.super Ljava/lang/Object;
.source "NoticeListActivity.kt"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/notice/NoticeListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/ui/notice/NoticeListActivity$onCreate$2",
        "Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;",
        "",
        "onRefresh",
        "onLoadMore",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/notice/NoticeListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/notice/NoticeListActivity$onCreate$2;->this$0:Lcom/join/kotlin/ui/notice/NoticeListActivity;

    invoke-virtual {v0}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->getPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/notice/NoticeListActivity;->loadData(I)V

    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
