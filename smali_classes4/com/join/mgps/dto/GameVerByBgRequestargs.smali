.class public Lcom/join/mgps/dto/GameVerByBgRequestargs;
.super Ljava/lang/Object;
.source "GameVerByBgRequestargs.java"


# instance fields
.field private package_name:Ljava/lang/String;

.field private version_code:Ljava/lang/String;

.field private version_name:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/GameVerByBgRequestargs;->package_name:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/join/mgps/dto/GameVerByBgRequestargs;->version_name:I

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/GameVerByBgRequestargs;->version_code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPackage_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVerByBgRequestargs;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_code()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameVerByBgRequestargs;->version_code:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_name()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/GameVerByBgRequestargs;->version_name:I

    return v0
.end method

.method public setPackage_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVerByBgRequestargs;->package_name:Ljava/lang/String;

    return-void
.end method

.method public setVersion_code(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameVerByBgRequestargs;->version_code:Ljava/lang/String;

    return-void
.end method

.method public setVersion_name(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/GameVerByBgRequestargs;->version_name:I

    return-void
.end method
