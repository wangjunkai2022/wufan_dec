.class public Lcom/join/mgps/dto/ApkVersionbean;
.super Ljava/lang/Object;
.source "ApkVersionbean.java"


# instance fields
.field private apk_name:Ljava/lang/String;

.field private down_type:I

.field private down_url:Ljava/lang/String;

.field private head_pic:Ljava/lang/String;

.field private launch_name:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private plugin_md5:Lcom/join/mgps/dto/ApkVersionRemarkBean;

.field private release_date:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private tag_id:Ljava/lang/String;

.field private team_info:Ljava/lang/String;

.field private tow_tpl_back_ground_pic:Ljava/lang/String;

.field private tpl_type:I

.field private ver:Ljava/lang/String;

.field private ver_compatible:Ljava/lang/String;

.field private ver_info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->apk_name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/ApkVersionbean;->logo:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/ApkVersionbean;->package_name:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/ApkVersionbean;->launch_name:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/ApkVersionbean;->team_info:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/ApkVersionbean;->ver_info:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/ApkVersionbean;->down_url:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/join/mgps/dto/ApkVersionbean;->size:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/join/mgps/dto/ApkVersionbean;->release_date:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/join/mgps/dto/ApkVersionbean;->ver:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lcom/join/mgps/dto/ApkVersionbean;->ver_compatible:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lcom/join/mgps/dto/ApkVersionbean;->tag_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApk_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->apk_name:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->down_type:I

    return v0
.end method

.method public getDown_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->head_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunch_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->launch_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_md5()Lcom/join/mgps/dto/ApkVersionRemarkBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->plugin_md5:Lcom/join/mgps/dto/ApkVersionRemarkBean;

    return-object v0
.end method

.method public getRelease_date()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->release_date:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->tag_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTeam_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->team_info:Ljava/lang/String;

    return-object v0
.end method

.method public getTow_tpl_back_ground_pic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->tow_tpl_back_ground_pic:Ljava/lang/String;

    return-object v0
.end method

.method public getTpl_type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->tpl_type:I

    return v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_compatible()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->ver_compatible:Ljava/lang/String;

    return-object v0
.end method

.method public getVer_info()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ApkVersionbean;->ver_info:Ljava/lang/String;

    return-object v0
.end method

.method public setApk_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->apk_name:Ljava/lang/String;

    return-void
.end method

.method public setDown_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->down_type:I

    return-void
.end method

.method public setDown_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->down_url:Ljava/lang/String;

    return-void
.end method

.method public setHead_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->head_pic:Ljava/lang/String;

    return-void
.end method

.method public setLaunch_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->launch_name:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_md5(Lcom/join/mgps/dto/ApkVersionRemarkBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->plugin_md5:Lcom/join/mgps/dto/ApkVersionRemarkBean;

    return-void
.end method

.method public setRelease_date(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->release_date:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->size:Ljava/lang/String;

    return-void
.end method

.method public setTag_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->tag_id:Ljava/lang/String;

    return-void
.end method

.method public setTeam_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->team_info:Ljava/lang/String;

    return-void
.end method

.method public setTow_tpl_back_ground_pic(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->tow_tpl_back_ground_pic:Ljava/lang/String;

    return-void
.end method

.method public setTpl_type(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->tpl_type:I

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->ver:Ljava/lang/String;

    return-void
.end method

.method public setVer_compatible(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->ver_compatible:Ljava/lang/String;

    return-void
.end method

.method public setVer_info(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ApkVersionbean;->ver_info:Ljava/lang/String;

    return-void
.end method
