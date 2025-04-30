.class public Lcom/join/mgps/dto/PayAdinfo;
.super Ljava/lang/Object;
.source "PayAdinfo.java"


# instance fields
.field private icon:Ljava/lang/String;

.field private link:Lcom/join/mgps/dto/AppBeanMain;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayAdinfo;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Lcom/join/mgps/dto/AppBeanMain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayAdinfo;->link:Lcom/join/mgps/dto/AppBeanMain;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PayAdinfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayAdinfo;->icon:Ljava/lang/String;

    return-void
.end method

.method public setLink(Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayAdinfo;->link:Lcom/join/mgps/dto/AppBeanMain;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PayAdinfo;->title:Ljava/lang/String;

    return-void
.end method
