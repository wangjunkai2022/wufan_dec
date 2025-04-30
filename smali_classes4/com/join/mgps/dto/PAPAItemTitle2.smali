.class public Lcom/join/mgps/dto/PAPAItemTitle2;
.super Ljava/lang/Object;
.source "PAPAItemTitle2.java"


# instance fields
.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAItemTitle2;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAItemTitle2;->title:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dto/PAPAItemTitle2;->subTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAItemTitle2;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAItemTitle2;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAItemTitle2;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAItemTitle2;->title:Ljava/lang/String;

    return-void
.end method
