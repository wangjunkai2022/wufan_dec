.class public Lcom/join/mgps/dto/CloudBackupInfo;
.super Ljava/lang/Object;
.source "CloudBackupInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private add_time:Ljava/lang/String;

.field private brand_name:Ljava/lang/String;

.field private rid:Ljava/lang/String;


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
    iget-object v0, p0, Lcom/join/mgps/dto/CloudBackupInfo;->add_time:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudBackupInfo;->brand_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/CloudBackupInfo;->rid:Ljava/lang/String;

    return-object v0
.end method

.method public setAdd_time(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudBackupInfo;->add_time:Ljava/lang/String;

    return-void
.end method

.method public setBrand_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudBackupInfo;->brand_name:Ljava/lang/String;

    return-void
.end method

.method public setRid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/CloudBackupInfo;->rid:Ljava/lang/String;

    return-void
.end method
