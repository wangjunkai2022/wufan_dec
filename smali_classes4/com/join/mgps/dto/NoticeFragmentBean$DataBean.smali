.class public Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;
.super Ljava/lang/Object;
.source "NoticeFragmentBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/NoticeFragmentBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;
    }
.end annotation


# instance fields
.field private notification_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;",
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
.method public getNotification_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;->notification_list:Ljava/util/List;

    return-object v0
.end method

.method public setNotification_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/NoticeFragmentBean$DataBean$NotificationListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/NoticeFragmentBean$DataBean;->notification_list:Ljava/util/List;

    return-void
.end method
