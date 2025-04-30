.class public Lcom/join/mgps/dto/FirstScreenAdDtoData;
.super Ljava/lang/Object;
.source "FirstScreenAdDtoData.java"


# instance fields
.field private th_ad_switch:Lcom/join/mgps/dto/ThAdSwitchDataBean;

.field private wf_ad_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ShowViewDataBean;",
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
.method public getTh_ad_switch()Lcom/join/mgps/dto/ThAdSwitchDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FirstScreenAdDtoData;->th_ad_switch:Lcom/join/mgps/dto/ThAdSwitchDataBean;

    return-object v0
.end method

.method public getWf_ad_list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ShowViewDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FirstScreenAdDtoData;->wf_ad_list:Ljava/util/List;

    return-object v0
.end method

.method public setTh_ad_switch(Lcom/join/mgps/dto/ThAdSwitchDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FirstScreenAdDtoData;->th_ad_switch:Lcom/join/mgps/dto/ThAdSwitchDataBean;

    return-void
.end method

.method public setWf_ad_list(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ShowViewDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FirstScreenAdDtoData;->wf_ad_list:Ljava/util/List;

    return-void
.end method
