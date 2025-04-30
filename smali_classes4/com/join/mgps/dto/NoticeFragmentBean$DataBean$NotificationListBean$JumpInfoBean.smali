.class public Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;
.super Ljava/lang/Object;
.source "NoticeFragmentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JumpInfoBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;,
        Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$MainBean;
    }
.end annotation


# instance fields
.field private main:Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$MainBean;

.field private sub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMain()Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$MainBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;->main:Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$MainBean;

    return-object v0
.end method

.method public getSub()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;->sub:Ljava/util/List;

    return-object v0
.end method

.method public setMain(Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$MainBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;->main:Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$MainBean;

    return-void
.end method

.method public setSub(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean$SubBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;->sub:Ljava/util/List;

    return-void
.end method
