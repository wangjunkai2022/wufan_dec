.class public Lcom/join/mgps/dto/ArenaPopupInfoBean;
.super Ljava/lang/Object;
.source "ArenaPopupInfoBean.java"


# instance fields
.field private daily_count:I

.field private id:I

.field private is_popup:I

.field private jump_info:Lcom/join/mgps/dto/BannerBean;

.field private popup_img:Ljava/lang/String;

.field private show_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDaily_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->daily_count:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->id:I

    return v0
.end method

.method public getIs_popup()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->is_popup:I

    return v0
.end method

.method public getJump_info()Lcom/join/mgps/dto/BannerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->jump_info:Lcom/join/mgps/dto/BannerBean;

    return-object v0
.end method

.method public getPopup_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->popup_img:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->show_time:J

    return-wide v0
.end method

.method public setDaily_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->daily_count:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->id:I

    return-void
.end method

.method public setIs_popup(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->is_popup:I

    return-void
.end method

.method public setJump_info(Lcom/join/mgps/dto/BannerBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->jump_info:Lcom/join/mgps/dto/BannerBean;

    return-void
.end method

.method public setPopup_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->popup_img:Ljava/lang/String;

    return-void
.end method

.method public setShow_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ArenaPopupInfoBean;->show_time:J

    return-void
.end method
