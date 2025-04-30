.class public Lcom/join/mgps/dto/ArenaCat;
.super Ljava/lang/Object;
.source "ArenaCat.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cat_id:I

.field private filter_show:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCat_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ArenaCat;->cat_id:I

    return v0
.end method

.method public getFilter_show()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaCat;->filter_show:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaCat;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ArenaCat;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCat_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ArenaCat;->cat_id:I

    return-void
.end method

.method public setFilter_show(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaCat;->filter_show:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaCat;->icon:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ArenaCat;->title:Ljava/lang/String;

    return-void
.end method
