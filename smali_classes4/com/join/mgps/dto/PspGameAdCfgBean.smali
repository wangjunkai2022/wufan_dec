.class public Lcom/join/mgps/dto/PspGameAdCfgBean;
.super Lcom/join/mgps/dto/BaseBean;
.source "PspGameAdCfgBean.java"


# instance fields
.field private count_down:I

.field private l_btn_text:Ljava/lang/String;

.field private l_btn_url:Ljava/lang/String;

.field private play_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PlayCfgBean;",
            ">;"
        }
    .end annotation
.end field

.field private r_btn_text:Ljava/lang/String;

.field private switch_state:I

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
.method public getCount_down()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->count_down:I

    return v0
.end method

.method public getL_btn_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->l_btn_text:Ljava/lang/String;

    return-object v0
.end method

.method public getL_btn_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->l_btn_url:Ljava/lang/String;

    return-object v0
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
    iget-object v0, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->play_cfg:Ljava/util/List;

    return-object v0
.end method

.method public getR_btn_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->r_btn_text:Ljava/lang/String;

    return-object v0
.end method

.method public getSwitch_state()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->switch_state:I

    return v0
.end method

.method public getTip_text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->tip_text:Ljava/lang/String;

    return-object v0
.end method

.method public getWhat_day()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->what_day:I

    return v0
.end method

.method public setCount_down(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->count_down:I

    return-void
.end method

.method public setL_btn_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->l_btn_text:Ljava/lang/String;

    return-void
.end method

.method public setL_btn_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->l_btn_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->play_cfg:Ljava/util/List;

    return-void
.end method

.method public setR_btn_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->r_btn_text:Ljava/lang/String;

    return-void
.end method

.method public setSwitch_state(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->switch_state:I

    return-void
.end method

.method public setTip_text(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->tip_text:Ljava/lang/String;

    return-void
.end method

.method public setWhat_day(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PspGameAdCfgBean;->what_day:I

    return-void
.end method
