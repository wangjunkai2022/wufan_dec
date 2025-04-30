.class public Lcom/papa91/arc/bean/SpBindsDataBean;
.super Ljava/lang/Object;
.source "SpBindsDataBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;
    }
.end annotation


# instance fields
.field private sp_binds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;",
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
.method public getSp_binds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SpBindsDataBean;->sp_binds:Ljava/util/List;

    return-object v0
.end method

.method public setSp_binds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SpBindsDataBean;->sp_binds:Ljava/util/List;

    return-void
.end method
