.class Lcom/join/mgps/activity/message/e$d$a;
.super Ljava/lang/Object;
.source "NoticeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/e$d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

.field final synthetic b:Lcom/join/mgps/activity/message/e$d;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/e$d;Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/e$d$a;->b:Lcom/join/mgps/activity/message/e$d;

    iput-object p2, p0, Lcom/join/mgps/activity/message/e$d$a;->a:Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/message/e$d$a;->b:Lcom/join/mgps/activity/message/e$d;

    iget-object p1, p1, Lcom/join/mgps/activity/message/e$d;->a:Lcom/join/mgps/activity/message/e;

    iget-object v0, p0, Lcom/join/mgps/activity/message/e$d$a;->a:Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getJump_info()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;->getSub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;

    iget-object v2, p0, Lcom/join/mgps/activity/message/e$d$a;->a:Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->getJump_info()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;->getSub()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/message/e;->R(Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;I)V

    return-void
.end method
