.class public Lcom/join/mgps/dto/ModInfoBean;
.super Ljava/lang/Object;
.source "ModInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private compatible_version:Ljava/lang/String;

.field private down_url:Ljava/lang/String;

.field private ext64:I

.field private ext64_package_name:Ljava/lang/String;

.field private ext64_size:J

.field private ext64_url:Ljava/lang/String;

.field private ext64_ver:I

.field private isIncompatible:Z

.field private is_golden_finger:I

.field private main_game_id:Ljava/lang/String;

.field private main_game_ver:Ljava/lang/String;

.field private main_package_name:Ljava/lang/String;

.field private mod_game_id:Ljava/lang/String;

.field private mod_package_name:Ljava/lang/String;

.field private status:I

.field private ver:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    .line 2
    iput v0, p0, Lcom/join/mgps/dto/ModInfoBean;->status:I

    return-void
.end method


# virtual methods
.method public getCompatible_version()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->compatible_version:Ljava/lang/String;

    return-object v0
.end method

.method public getDown_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->down_url:Ljava/lang/String;

    return-object v0
.end method

.method public getExt64()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64:I

    return v0
.end method

.method public getExt64_package_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getExt64_size()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_size:J

    return-wide v0
.end method

.method public getExt64_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_url:Ljava/lang/String;

    return-object v0
.end method

.method public getExt64_ver()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_ver:I

    return v0
.end method

.method public getIs_golden_finger()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModInfoBean;->is_golden_finger:I

    return v0
.end method

.method public getMain_game_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->main_game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMain_game_ver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->main_game_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getMain_package_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->main_package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getMod_game_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->mod_game_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMod_package_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModInfoBean;->mod_package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModInfoBean;->status:I

    return v0
.end method

.method public getVer()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModInfoBean;->ver:I

    return v0
.end method

.method public isIncompatible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ModInfoBean;->isIncompatible:Z

    return v0
.end method

.method public setCompatible_version(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->compatible_version:Ljava/lang/String;

    return-void
.end method

.method public setDown_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->down_url:Ljava/lang/String;

    return-void
.end method

.method public setExt64(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64:I

    return-void
.end method

.method public setExt64_package_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_package_name:Ljava/lang/String;

    return-void
.end method

.method public setExt64_size(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_size:J

    return-void
.end method

.method public setExt64_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_url:Ljava/lang/String;

    return-void
.end method

.method public setExt64_ver(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ext64_ver:I

    return-void
.end method

.method public setIncompatible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ModInfoBean;->isIncompatible:Z

    return-void
.end method

.method public setIs_golden_finger(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModInfoBean;->is_golden_finger:I

    return-void
.end method

.method public setMain_game_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->main_game_id:Ljava/lang/String;

    return-void
.end method

.method public setMain_game_ver(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->main_game_ver:Ljava/lang/String;

    return-void
.end method

.method public setMain_package_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->main_package_name:Ljava/lang/String;

    return-void
.end method

.method public setMod_game_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->mod_game_id:Ljava/lang/String;

    return-void
.end method

.method public setMod_package_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModInfoBean;->mod_package_name:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModInfoBean;->status:I

    return-void
.end method

.method public setVer(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModInfoBean;->ver:I

    return-void
.end method
