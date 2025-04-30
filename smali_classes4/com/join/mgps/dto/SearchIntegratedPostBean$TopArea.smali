.class public Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;
.super Ljava/lang/Object;
.source "SearchIntegratedPostBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/SearchIntegratedPostBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopArea"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private fid:I

.field private icon_src:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private posts:I

.field private today_posts:I

.field private users:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->fid:I

    return v0
.end method

.method public getIcon_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->icon_src:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->posts:I

    return v0
.end method

.method public getToday_posts()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->today_posts:I

    return v0
.end method

.method public getUsers()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->users:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->description:Ljava/lang/String;

    return-void
.end method

.method public setFid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->fid:I

    return-void
.end method

.method public setIcon_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->icon_src:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->posts:I

    return-void
.end method

.method public setToday_posts(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->today_posts:I

    return-void
.end method

.method public setUsers(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchIntegratedPostBean$TopArea;->users:I

    return-void
.end method
