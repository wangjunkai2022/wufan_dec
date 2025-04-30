.class public Lcom/join/mgps/dto/LodingImageBean;
.super Ljava/lang/Object;
.source "LodingImageBean.java"


# instance fields
.field private md5:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/LodingImageBean;->path:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/LodingImageBean;->md5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LodingImageBean;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/LodingImageBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LodingImageBean;->md5:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/LodingImageBean;->path:Ljava/lang/String;

    return-void
.end method
