.class public Lcom/join/mgps/dto/SingleGameAdCfgBean;
.super Lcom/join/mgps/dto/BaseBean;
.source "SingleGameAdCfgBean.java"


# instance fields
.field private b_btn_text:Ljava/lang/String;

.field private daily_times:I

.field private f_btn_text:Ljava/lang/String;

.field private f_btn_url:Ljava/lang/String;

.field private f_ic_text:Ljava/lang/String;

.field private f_play_ic:Ljava/lang/String;

.field private f_tip_text:Ljava/lang/String;

.field private free_receive_vip:I

.field private play_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;"
        }
    .end annotation
.end field

.field private switch_state:I

.field private t_btn_text:Ljava/lang/String;

.field private t_btn_url:Ljava/lang/String;

.field private tip_text:Ljava/lang/String;

.field private what_day:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dto/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getB_btn_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->b_btn_text:Ljava/lang/String;

    return-object v0
.end method

.method public getDaily_times()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->daily_times:I

    return v0
.end method

.method public getF_btn_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->f_btn_text:Ljava/lang/String;

    return-object v0
.end method

.method public getF_btn_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->f_btn_url:Ljava/lang/String;

    return-object v0
.end method

.method public getF_ic_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->f_ic_text:Ljava/lang/String;

    return-object v0
.end method

.method public getF_play_ic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->f_play_ic:Ljava/lang/String;

    return-object v0
.end method

.method public getF_tip_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->f_tip_text:Ljava/lang/String;

    return-object v0
.end method

.method public getFree_receive_vip()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->free_receive_vip:I

    return v0
.end method

.method public getPlay_cfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->play_cfg:Ljava/util/List;

    return-object v0
.end method

.method public getSwitch_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->switch_state:I

    return v0
.end method

.method public getT_btn_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->t_btn_text:Ljava/lang/String;

    return-object v0
.end method

.method public getT_btn_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->t_btn_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTip_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->tip_text:Ljava/lang/String;

    return-object v0
.end method

.method public getWhat_day()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->what_day:I

    return v0
.end method

.method public setB_btn_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->b_btn_text:Ljava/lang/String;

    return-void
.end method

.method public setDaily_times(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->daily_times:I

    return-void
.end method

.method public setF_btn_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->f_btn_text:Ljava/lang/String;

    return-void
.end method

.method public setF_btn_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->f_btn_url:Ljava/lang/String;

    return-void
.end method

.method public setF_ic_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->f_ic_text:Ljava/lang/String;

    return-void
.end method

.method public setF_play_ic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->f_play_ic:Ljava/lang/String;

    return-void
.end method

.method public setF_tip_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->f_tip_text:Ljava/lang/String;

    return-void
.end method

.method public setFree_receive_vip(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->free_receive_vip:I

    return-void
.end method

.method public setPlay_cfg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->play_cfg:Ljava/util/List;

    return-void
.end method

.method public setSwitch_state(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->switch_state:I

    return-void
.end method

.method public setT_btn_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->t_btn_text:Ljava/lang/String;

    return-void
.end method

.method public setT_btn_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->t_btn_url:Ljava/lang/String;

    return-void
.end method

.method public setTip_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->tip_text:Ljava/lang/String;

    return-void
.end method

.method public setWhat_day(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SingleGameAdCfgBean;->what_day:I

    return-void
.end method
