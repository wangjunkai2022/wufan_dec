.class public Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;
.super Ljava/lang/Object;
.source "SpBindsDataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/bean/SpBindsDataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpBindsBean"
.end annotation


# instance fields
.field private binds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sp_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->binds:Ljava/util/List;

    return-object v0
.end method

.method public getSp_key()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->sp_key:Ljava/lang/String;

    return-object v0
.end method

.method public setBinds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->binds:Ljava/util/List;

    return-void
.end method

.method public setSp_key(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->sp_key:Ljava/lang/String;

    return-void
.end method
