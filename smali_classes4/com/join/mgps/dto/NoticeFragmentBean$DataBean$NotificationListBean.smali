.class public Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;
.super Ljava/lang/Object;
.source "NoticeFragmentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;
    }
.end annotation


# instance fields
.field private add_time:Ljava/lang/String;

.field private cover_pic:Ljava/lang/String;

.field private jump_info:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdd_time()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->add_time:Ljava/lang/String;

    return-object v0
.end method

.method public getCover_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->cover_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getJump_info()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->jump_info:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->add_time:Ljava/lang/String;

    return-void
.end method

.method public setCover_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->cover_pic:Ljava/lang/String;

    return-void
.end method

.method public setJump_info(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean$JumpInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->jump_info:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;->title:Ljava/lang/String;

    return-void
.end method
